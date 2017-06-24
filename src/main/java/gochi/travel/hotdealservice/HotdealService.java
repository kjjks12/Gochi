package gochi.travel.hotdealservice;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.sun.org.apache.xerces.internal.util.URI;

import gochi.travel.model.hotdealdto.HotdealDTO;

@Service
public class HotdealService {

	public Map<String, List<HotdealDTO>> mainPageParsing(String query) throws Exception {
		List<HotdealDTO> list = new ArrayList<>();
		Map<String, List<HotdealDTO>> map = new HashMap<String, List<HotdealDTO>>();
		Document doc;
		try {
			String url;
			String imgUrl;
			String title;
			String price;

			int count = 12;

			/** 위메프 */
			String defaultQuery;
			if (query == null) {
				query = "부산";
			}
			String encodeResult = URLEncoder.encode(query, "UTF-8");
			// System.out.println(encodeResult);
			doc = Jsoup.connect("http://search.wemakeprice.com/search/990000/990100?search_keyword=" + encodeResult)
					.get();

			// String title = doc.title();

			// System.out.println("페이지 타이틀:"+title);

			Elements eles = doc.select("span.link.type03");
			if (!eles.isEmpty()) {
				for (int i = 0; i < count; i++) {
					Element ele = eles.get(i);

					url = ele.select("a[href]").attr("abs:href");
					imgUrl = ele.select("span.box_thumb img[src]").attr("data-original");
					title = ele.select("strong.tit_desc").text();
					price = ele.select("span.sale").text();

					// 1. 링크 주소
					// System.out.println("결과: "
					// +ele.select("a[href]").attr("abs:href"));

					// 2.이미지
					// System.out.println("이미지
					// 경로:"+ele.select("img[src]").attr("abs:src"));

					// 3.제목
					// System.out.println("제목:"+ele.select("strong.tit_desc").text());

					// 4.가격
					// System.out.println("가격:"+ele.select("span.sale").text());

					list.add(new HotdealDTO(url, imgUrl, title, price));
					// System.out.println("결과 :"+list);

				}
			}
			map.put("wemepe", list);

			list = new ArrayList<>();

			/** G마켓 */
			doc = Jsoup.connect("http://gtour.gmarket.co.kr/TourLP/Search?selecturl=total&keyword=" + encodeResult)
					.get();

			eles = doc.select("div.gb_goodslist");
			if (!eles.isEmpty()) {
				Element ele = eles.get(0);

				Elements trs = ele.select("tr");
				int tempCount = 1;

				// System.out.println(count);
				for (Element tr : trs) {

					if (!tr.select("td.goods").isEmpty()) {
						tempCount++;
						// System.out.println("템프" + tempCount);
						// 링크주소
						url = tr.select("td.goods div.tdrap div.img a[href]").attr("abs:href");
						// System.out.println(url);

						// 이미지 주소
						imgUrl = tr.select("td.goods div.tdrap div.img a[href] img[src]").attr("src");
						// System.out.println(imgUrl);

						// 타이틀
						title = tr.select("td.goods div.tdrap div.goods_name a[href]").text();
						// System.out.println(title);

						// 가격
						price = tr.select("td.price div.tdrap span.discount_price").text();
						// System.out.println(price);

						list.add(new HotdealDTO(url, imgUrl, title, price));
					}
					if (count < tempCount) {
						break;
					}
				}
			}
			map.put("gmarket", list);

			list = new ArrayList<>();
			/** 쿠팡 */

			doc = Jsoup.connect("http://www.coupang.com/np/search?component=&q=" + encodeResult).get();

			// System.out.println("제목:" + doc.title());

			eles = doc.select("li.search-product");
			if (!eles.isEmpty()) {
				for (int i = 0; i < count; i++) {
					Element ele2 = eles.get(i);

					url = ele2.select("a[href]").attr("abs:href");
					// System.out.println("링크 주소:"+url);

					imgUrl = ele2.select("a[href] dl.search-product-wrap dt.image img[src]").attr("src");
					// System.out.println("이미지 경로 :"+imgUrl);

					title = ele2.select("a[href] dl.search-product-wrap dd.descriptions div.name").text();
					// System.out.println("제목:"+title);

					price = ele2
							.select("a[href] dl.search-product-wrap dd.descriptions div.price-area div.price-wrap div.price em.sale strong.price-value")
							.text();

					// System.out.println("가격:"+price);
					list.add(new HotdealDTO(url, imgUrl, title, price+"원"));
				}
			}
			map.put("coupang", list);

		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return map;
	}

}
