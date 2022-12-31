package com.multi.mvc.holiday.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Holiday {
	
	private String hpid;
	private int pharmacyNo;
	private String dutyName;
	private String dutyAddr;
	private String dutyDivNam;
	private double star;
	private int reviews;
	
}
