package com.multi.mvc.hospital.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HReview {
	private int reviewNo;
	private String userId;
	private String content;
	private int star;
	private Date createDate;

}
