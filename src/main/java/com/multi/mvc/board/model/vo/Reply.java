package com.multi.mvc.board.model.vo;


import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	private int replyNo;
	private int boardNo;
	private int memberNo;
	private String writerId;
	private String content;	
	private String status;
	private Date createDate;
}