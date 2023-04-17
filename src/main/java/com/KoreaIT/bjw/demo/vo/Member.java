package com.KoreaIT.bjw.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String loginId;
	private String loginPw;
	private String name;
	private String nickName;
	private int cellphoneNum;
	private String email;

}