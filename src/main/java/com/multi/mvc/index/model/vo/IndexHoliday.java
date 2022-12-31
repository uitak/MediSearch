package com.multi.mvc.index.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class IndexHoliday {
	private String hpid;
	private String dutyDivNam;
	private String dutyName;
	private int distance;
}
