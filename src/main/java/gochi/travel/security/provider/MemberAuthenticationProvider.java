package gochi.travel.security.provider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import gochi.travel.member.authoritiesdao.AuthoritiesDAO;
import gochi.travel.model.memberdao.MemberDAO;
import gochi.travel.model.memberdto.Authority;
import gochi.travel.model.memberdto.MemberDTO;

@Service //id="memberAuthenticationProvider"
public class MemberAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private AuthoritiesDAO authoritiesDAO;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		
		if(!supports(auth.getClass())){
			return null;
		}
		
		String email = auth.getName(); 
		MemberDTO member = memberDAO.searchMember(email);
		
		if(member==null){
			throw new UsernameNotFoundException(email+"존재하지 않습니다.");
		}
		
		String password = (String)auth.getCredentials();
		if(!passwordEncoder.matches(password, member.getPassword())){
			throw new BadCredentialsException("�н����� �����Դϴ�.");
		}
		
		//3. ��ΰ� ��ġ�ϸ� Authentication�� ���� ����
		List<Authority> list = authoritiesDAO.selectAuthorityByUserName(email);
		if(list.isEmpty()){//�ƹ� ������ ���°��
			throw new UsernameNotFoundException(email+"�� �ƹ� ������ �����ϴ�.");
		}
		
		//db���� ������ �� ������ GrantedAuthority �� ��ȯ�ؾ���.
		List<SimpleGrantedAuthority> authList = new ArrayList<>();
		for(Authority authority :list){
			authList.add(new SimpleGrantedAuthority(authority.getRole()));
		}
		
		return new UsernamePasswordAuthenticationToken(member, null, authList);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		
		return UsernamePasswordAuthenticationToken.class
				.isAssignableFrom(authentication);
	}

}
