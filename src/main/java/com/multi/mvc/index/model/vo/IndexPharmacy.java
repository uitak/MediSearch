package com.multi.mvc.index.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class IndexPharmacy {
	private int pharmacyNo;
	private String hpid;
	private String dutyName;
	private String dutyAddr;
	private int distance;
}
