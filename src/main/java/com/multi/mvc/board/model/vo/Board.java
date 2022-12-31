package com.multi.mvc.board.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int boardNo;
	private int memberNo;
	private String userId;
	private String title;
	private String content;
	private String dtype;
	private String originalFileName;
	private String renamedFileName;
	private int views;
	private String status;
	private List<Reply> replies;
	private Date createDate;
	
}