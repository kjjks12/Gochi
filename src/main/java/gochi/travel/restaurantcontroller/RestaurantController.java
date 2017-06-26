package gochi.travel.restaurantcontroller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.Iterator;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;


import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.model.restaurantdto.RestaurantDetailDTO;
import gochi.travel.model.restaurantdto.RestaurantImgDTO;
import gochi.travel.restaurantservice.RestaurantService;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

	@Autowired
	RestaurantService restaurantService;

	@RequestMapping("/insert")
	public String insert(HttpServletRequest request,  RestaurantDTO dto) {
		String classification = request.getParameter("category2");
		String restaurantName = request.getParameter("food-name");
		String area = request.getParameter("food-location");
		String operatingTime = request.getParameter("food-time");
		String holiday = request.getParameter("food-holiday");
		String phone = request.getParameter("food-phone");
		String explanation = request.getParameter("food-info");
		String remark = request.getParameter("food-remark");		
		MemberDTO email = (MemberDTO)request.getSession().getAttribute("dto");
		int result = restaurantService.insertRestaurant(
				new RestaurantDTO(classification, area, explanation, restaurantName, operatingTime, holiday, phone, email.getEmail() ,remark));
		
		return "redirect:/restaurant/restaurant";
	}
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public List<RestaurantDTO> select(HttpServletRequest request) {
		List<RestaurantDTO> list = restaurantService.select();		
		request.getSession().setAttribute("list", list);
		
		/*String index = request.getParameter("index");		
		//세션에 index값 저장!
		request.getSession().setAttribute("index", index);
		int num = Integer.parseInt(index);
		System.out.println(num);
		restaurantService.readNum(num);
		
		List<RestaurantImgDTO> imgList = restaurantService.selectImg(list.get(num).getRestaurantNo());
		request.getSession().setAttribute("imgList", imgList);
		*/
		
		
		return list;
		
	}
	
	@RequestMapping("/categorySelect")
	@ResponseBody
	public List<RestaurantDTO> categorySelect(HttpServletRequest request, String classification) {
		System.out.println("들어오기 실패인가?");
		List<RestaurantDTO> list = restaurantService.categorySelect(classification);
		return list;
	}	
	
	@RequestMapping("/imageSave/{restaurantNo}")
	public String imageSave(@RequestParam MultipartFile imgFile,HttpSession session,RestaurantImgDTO dto,HttpServletRequest request,@PathVariable int restaurantNo){
		System.out.println("들어옵니까?");
		
		imgFile = dto.getImgFile();
	    //request.getSession().getAttribute("restaurantNo");
	  
	    System.out.println("받은 글 번호 "+restaurantNo);
	   
	      String path = session.getServletContext().getRealPath("/resources/img/restaurant/");
	      
	      System.out.println("경로 : "+path);
	     
	      if(imgFile != null){
	    	  //System.out.println("imgFile이 존재한다면");
	         String fileName = imgFile.getOriginalFilename();
	         dto.setImgFile(imgFile);
	      try{
	    	  int imgNo = restaurantService.selectMaxImgNo()+1;
	    	  //System.out.println("최대 번호 +1 : "+imgNo);
	          File file = new File(path+"/"+restaurantNo+"/"+imgNo+"/"+fileName);
	         if(!file.exists()){
	            file.mkdirs();
	         }
	         imgFile.transferTo(file);
	         
	         
	        int result = restaurantService.insertImg(new RestaurantImgDTO(restaurantNo,imgNo,fileName));
	       // System.out.println("쿼리문 결과 : "+result);
	      }catch(Exception e){
	    	  e.printStackTrace();
	      }
	      }
	      return "index";
	}
	
	/**
	 * 맛집 상세페이지에서 포스트 올리기.
	 * */
	@RequestMapping("/post")
	@ResponseBody
	public String post(HttpServletRequest request, MultipartHttpServletRequest multi){
		//메일, 제목, 내용을 입력받음
		String email = request.getParameter("email");
		String subject = request.getParameter("food-name");
		String content = request.getParameter("message");
		System.out.println("포스트 입력 내용 : "+email+" "+subject+" "+content);
		RestaurantDTO dto = (RestaurantDTO) request.getSession().getAttribute("restaurantInfo");
		
		//전송된 파일을 입력받음!
		String root = multi.getSession().getServletContext().getRealPath("/"); //root 값 설정.
		String path = root+"resources/img/detail/"; //실제 저장 경로
		String newFileName = "";
		
		//파일 객체 생성
		File file = new File(path);
		
		//해당 폴더가 없다면 새로 만들어라.
		if(!file.isDirectory()){
			file.mkdirs();
		}
		
		//들어온 파일들을 읽어들여온다.
		Iterator<String> files = multi.getFileNames();
		while(files.hasNext()){
			String upLoadFile = files.next();
			MultipartFile mFile = multi.getFile(upLoadFile);
			String fileName = mFile.getOriginalFilename();
			System.out.println("실제 파일 이름 : "+fileName);
			newFileName = System.currentTimeMillis()+"."
                    +fileName.substring(fileName.lastIndexOf(".")+1);	
			
			try{
				//실제 경로에 저장!
				mFile.transferTo(new File(path+newFileName));
				//이미지 정보 추가하여 저장!
				RestaurantDetailDTO detailDto = new RestaurantDetailDTO(dto.getRestaurantNo(), 1, email, subject, content,newFileName);
				int result = restaurantService.insertPost(detailDto);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return "index";
	}
	@RequestMapping("/heart")
	@ResponseBody
	public RestaurantDTO heart(HttpServletRequest request, String restaurantNo)throws Exception {
		RestaurantDTO dto = restaurantService.heart(restaurantNo, true);	
		return dto;
		
	}
	
	/**
	 * 맛집 상세보기 페이지로 이동
	 * */
	@RequestMapping("/detail")
	public String detailView(HttpServletRequest request){
		
		String readNu = request.getParameter("restaurantNo");
		System.out.println(readNu);
		restaurantService.readNum(Integer.parseInt(readNu));
		request.getSession().setAttribute("restaurantNo", readNu);

		List<RestaurantDTO> list = (List<RestaurantDTO>) request.getSession().getAttribute("list");
		System.out.println("list : " + list);
		String index = request.getParameter("index");		
		//세션에 index값 저장!
		request.getSession().setAttribute("index", index);
		int num = Integer.parseInt(index);
		System.out.println(num);
		restaurantService.readNum(num);
		
		request.getSession().setAttribute("restaurantInfo", list.get(Integer.parseInt(index)));
		
		//해당 게시물에 등록된 post 가져오기.
		List<RestaurantDetailDTO> postList = restaurantService.selectPost(list.get(num).getRestaurantNo());
		request.getSession().setAttribute("postList", postList);
		
		//해당 게시물에 등록된 img 가져오기.
		List<RestaurantImgDTO> imgList = restaurantService.selectImg(list.get(num).getRestaurantNo());
		request.getSession().setAttribute("imgList", imgList);
		
		//System.out.println("123123123");

		return "restaurant/detailRestaurant";
	}
	
	/**
	 * ajax를 이용한 file 업로드
	 * */
	@RequestMapping("/upload")
	public String uploadImage(HttpServletRequest request, MultipartHttpServletRequest multi){
		//저장경로 설정!
		String root = multi.getSession().getServletContext().getRealPath("/"); //root값
		String path = root+"resources/img/restaurant/"; //저장경로!
		String newFileName = ""; //파일이름!
		
		File file = new File(path);
		
		//폴더가 없다면 만들어라.
		if(!file.isDirectory()){
			file.mkdirs();
		}
		
		Iterator<String> files = multi.getFileNames(); //여러 파일을 읽어들여온다.
		 while(files.hasNext()){
	            String uploadFile = files.next();                        
	            MultipartFile mFile = multi.getFile(uploadFile);
	            String fileName = mFile.getOriginalFilename();
	            System.out.println("실제 파일 이름 : " +fileName);
	            newFileName = System.currentTimeMillis()+"."
	                    +fileName.substring(fileName.lastIndexOf(".")+1);	            
	            try {
	                mFile.transferTo(new File(path+newFileName));
	                System.out.println(path);
	                //파일 정보 DB에 저장
	                RestaurantDTO dto = (RestaurantDTO) request.getSession().getAttribute("restaurantInfo");
	                int restaurantNo = dto.getRestaurantNo();
	                RestaurantImgDTO imgDTO = new RestaurantImgDTO(restaurantNo, 1, newFileName);
	                restaurantService.insertImg(imgDTO);
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }

		return "index";
	}
	
}