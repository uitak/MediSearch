package com.multi.mvc.hospital.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HPharmacy {
	private int pharmacyNo;
	private String hpid;
	private String dutyName;
	private String dutyAddr;
	private double star;
	private int reviews;
	private int distance;
}
