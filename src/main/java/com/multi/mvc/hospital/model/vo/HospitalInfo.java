package com.multi.mvc.hospital.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HospitalInfo {

	private String hpid;		// 기관코드
	private String dutyName;	// 이름
	private String dutyAddr;	// 주소
	private String dutyDivNam;	// 병원 분류
	private String dutyTel1;	// 전화
	private String dutyInf;		// 설명
	private String dutyEryn;	// 응급실 운영여부
	private String postCdn1;	// 우편번호1
	private String postCdn2;	// 우편번호2
	private String dutyTime1s;	// 진료시작 시간(월요일)
	private String dutyTime2s;	// 진료시작 시간(화요일)
	private String dutyTime3s;	// 진료시작 시간(수요일)
	private String dutyTime4s;	// 진료시작 시간(목요일)
	private String dutyTime5s;	// 진료시작 시간(금요일)
	private String dutyTime6s;	// 진료시작 시간(토요일)
	private String dutyTime7s;	// 진료시작 시간(일요일)
	private String dutyTime8s;	// 진료시작 시간(공휴일)
	private String dutyTime1c;	// 진료종료 시간(월요일)
	private String dutyTime2c;	// 진료종료 시간(화요일)
	private String dutyTime3c;	// 진료종료 시간(수요일)
	private String dutyTime4c;	// 진료종료 시간(목요일)
	private String dutyTime5c;	// 진료종료 시간(금요일)
	private String dutyTime6c;	// 진료종료 시간(토요일)
	private String dutyTime7c;	// 진료종료 시간(일요일)
	private String dutyTime8c;	// 진료종료 시간(공휴일)
	private double wgs84Lon;	// 경도
	private double wgs84Lat;	// 위도
	private double star;		// 평점
	private int reviews;		// 리뷰
	
}
