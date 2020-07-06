package alz.user.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	private static final long serialVersionUID = 1L;
	
	private UserDTO userDTO;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(UserDTO dto) {
		super(dto.getEmail(), dto.getPassword(), getAuthorities().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuthority())).collect(Collectors.toList()));
		this.userDTO = dto;
	}
}
