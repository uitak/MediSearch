package com.multi.mvc.hospital.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Operation {
	private String hpid;
	private String MkioskTy1; // 뇌출혈수술 (Y:가능, N:불가능)
	private String MkioskTy2; // 뇌경색의재관류 (Y:가능, N:불가능)
	private String MkioskTy3; // 심근경색의재관류 (Y:가능, N:불가능)
	private String MkioskTy4; // 복부손상의수술 (Y:가능, N:불가능)
	private String MkioskTy5; // 사지접합의수술 (Y:가능, N:불가능)
	private String MkioskTy6; // 응급내시경 (Y:가능, N:불가능)
	private String MkioskTy7; // 응급투석 (Y:가능, N:불가능)
	private String MkioskTy8; // 조산산모 (Y:가능, N:불가능)
	private String MkioskTy9; // 정신질환자 (Y:가능, N:불가능)
	private String MkioskTy10; // 신생아 (Y:가능, N:불가능)
	private String MkioskTy11; // 중증화상 (Y:가능, N:불가능)

}
