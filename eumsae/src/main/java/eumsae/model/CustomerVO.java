package eumsae.model;

import lombok.Data;


@Data
public class CustomerVO {
	private String id;
	private String pwd;
	private String nick;
	private String birth;
	private String name;
	private String addr;
	private String tel;
	private String email;
}
