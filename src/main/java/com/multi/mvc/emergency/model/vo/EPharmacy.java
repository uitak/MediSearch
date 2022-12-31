package com.multi.mvc.emergency.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EPharmacy {
	private int pharmacyNo;
	private String hpid;
	private String dutyName;
	private String dutyAddr;
	private double star;
	private int reviews;
	private int distance;
}
