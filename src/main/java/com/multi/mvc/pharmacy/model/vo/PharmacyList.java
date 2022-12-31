package com.multi.mvc.pharmacy.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PharmacyList {
	
	private int pharmacyNo;
	private String hpid;
	private String dutyName;
	private String dutyAddr;
	private double star;
	private int reviews;

	private String dutyInf; 
	private String dutyTel1; 
	private String dutyTime1c;
	private String dutyTime2c;
	private String dutyTime3c;
	private String dutyTime4c;
	private String dutyTime5c;
	private String dutyTime6c;
	private String dutyTime7c;
	private String dutyTime8c;
	
	private String dutyTime1s;
	private String dutyTime2s;
	private String dutyTime3s;
	private String dutyTime4s;
	private String dutyTime5s;
	private String dutyTime6s;
	private String dutyTime7s;
	private String dutyTime8s;
	
	private String postCdn1; // db 에서는 postcdn1
	private String postCdn2; 
	private double wgs84Lon; 
	private double wgs84Lat; 
//	private String pharmacyImg;
	
//	private String dutyMapimg;
//	private String dutyEtc; 
	
//	private String dutyDiv; // 나중에 db 컬럼부터 추가하고 진행할 것
	
//	private String pharmacyHpid; 

}
