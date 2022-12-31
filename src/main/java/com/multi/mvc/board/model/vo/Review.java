package com.multi.mvc.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
	private int reviewNo;
	private String divId;
	private int memberNo;
	private String writer;
	private String division;
	private String name;
	private String title;
	private String content;
	private int star;
	private Date createDate;
}
