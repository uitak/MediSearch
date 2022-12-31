package com.multi.mvc.hospital.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HospitalList {
	
	private String hpid;
	private String dutyName;
	private String dutyAddr;
	private String dutyDivNam;
	private double star;
	private int reviews;
	
}
