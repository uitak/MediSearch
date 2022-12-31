<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 병원 검색" />
</jsp:include>

	<script src="${path}/resources/js/address.js"></script>

	<form action="${path}/search/hospital" method="GET">
	
      <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="0.5" style="height: 500px;"><span class="img-overlay bg-transparent opacity-100" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/hospital/hp27.jpg); height: 500px;"></div>
        <div class="content-overlay container py-md-5">
          <div class="mt-5 mb-md-5 py-5">
            <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 text-center">
              <h1 class="display-5 text-light mt-sm-5 my-4">병원 검색</h1>
              <p class="fs-lg text-white">Search the hospital.<br>Find the hospital you want with MediSearch</p>
            </div>
            <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
            </div>
          </div>
        </div>
      </section>


      <!-- Page content-->
      <!-- Page container-->
      <div class="container-fluid  pt-5 p-0">
        <div class="row g-0 mt-n3">
          <!-- Filters sidebar (Offcanvas on mobile)-->
          <aside class="col-lg-4 col-xl-3 border-top-lg border-end-lg shadow-sm px-3 px-xl-4 px-xxl-5 pt-lg-2">
            <div class="offcanvas offcanvas-start offcanvas-collapse" id="filters-sidebar">
              <div class="offcanvas-header d-flex d-lg-none align-items-center">
                <h2 class="h5 mb-0">Filters</h2>
                <button class="btn-close" type="button" data-bs-dismiss="offcanvas"></button>
              </div>



              <!-- Search form-->
              <div class="offcanvas-header d-block border-bottom pt-0 pt-lg-4 px-lg-0">
                <div class="form-group mb-lg-2 rounded-pill">
                  <div class="input-group"><span class="input-group-text text-muted"><i class="fi-search"></i></span>
                    <input class="form-control" type="text" name="searchValue" id="searchValue" placeholder="Search..." value="${param.searchValue}">
                  </div>
                  <button class="btn btn-primary rounded-pill d-lg-inline-block d-none" type="submit">Search</button>
                  <button class="btn btn-icon btn-primary rounded-circle flex-shrink-0 d-lg-none d-inline-flex" type="button"><i class="fi-search mt-n2"></i></button>
                </div>
              </div>

              <div class="offcanvas-body py-lg-4">
                <!-- Tabs content-->
                <div class="tab-content">
                  <!-- Filters-->
                <div id="frm-reset">
                  <div class="tab-pane fade show active" id="filters" role="tabpanel">

                    <!-- -------------------------시/도에 맞춰 구/군이 나타나기------------------------ -->
                    <div class="pb-4 mb-2">
                      <h3 class="h6">지역</h3>
                      <select class="form-select mb-2" name="city" id="city" onchange="itemChange()">
                        <!-- disabled -->
                        <option value="" ${param.city == null ? 'selected' : ''}>-- 시/도 --</option>
	                    <option value="서울" ${param.city == '서울' ? 'selected' : ''}>서울특별시</option>
	                    <option value="부산" ${param.city == '부산' ? 'selected' : ''}>부산광역시</option>
	                    <option value="대구" ${param.city == '대구' ? 'selected' : ''}>대구광역시</option>
	                    <option value="인천" ${param.city == '인천' ? 'selected' : ''}>인천광역시</option>
	                    <option value="광주" ${param.city == '광주' ? 'selected' : ''}>광주광역시</option>
	                    <option value="대전" ${param.city == '대전' ? 'selected' : ''}>대전광역시</option>
	                    <option value="울산" ${param.city == '울산' ? 'selected' : ''}>울산광역시</option>
	                    <option value="세종" ${param.city == '세종' ? 'selected' : ''}>세종특별자치시</option>
	                    <option value="경기도" ${param.city == '경기도' ? 'selected' : ''}>경기도</option>
	                    <option value="강원도" ${param.city == '강원도' ? 'selected' : ''}>강원도</option>
	                    <option value="충청북도" ${param.city == '충청북도' ? 'selected' : ''}>충청북도</option>
	                    <option value="충청남도" ${param.city == '충청남도' ? 'selected' : ''}>충청남도</option>
	                    <option value="전라북도" ${param.city == '전라북도' ? 'selected' : ''}>전라북도</option>
	                    <option value="전라남도" ${param.city == '전라남도' ? 'selected' : ''}>전라남도</option>
	                    <option value="경상북도" ${param.city == '경상북도' ? 'selected' : ''}>경상북도</option>
	                    <option value="경상남도" ${param.city == '경상남도' ? 'selected' : ''}>경상남도</option>
	                    <option value="제주" ${param.city == '제주' ? 'selected' : ''}>제주특별자치도</option>
                      </select>

                      <!--------------------------------------변경 부분 jsp-------------------------------------------->
                      <select class="form-select" id="gu" name="town">
                        <option value="" ${param.town == null ? 'selected' : ''}>-- 구/군 --</option>
                      </select>
                  </div>




                    <!-- id : 기관분류 코드 1,2로 구분-->
                    <div class="pb-4 mb-2">
                      <h3 class="h6">기관별</h3>
                      <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 20rem;">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="A1" value="A1" 
                          	${fn:contains(dutyDiv, 'A1') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="A1">상급종합병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="A2" value="A2"
                          	${fn:contains(dutyDiv, 'A2') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="A2">종합병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="B1" value="B1"
                          	${fn:contains(dutyDiv, 'B1') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="B1">병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="B2" value="B2"
                          	${fn:contains(dutyDiv, 'B2') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="B2">군 병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="C1" value="C1"
                          	${fn:contains(dutyDiv, 'C1') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="C1">의원</label>
                        </div>
                        <div class="form-check"> 
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="C2" value="C2"
                          	${fn:contains(dutyDiv, 'C2') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="C2">군 의원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="D" value="D"
                          	${fn:contains(dutyDiv, 'D') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D">요양병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="E" value="E"
                          	${fn:contains(dutyDiv, 'E') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="E">한방병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="F" value="F"
                          	${fn:contains(dutyDiv, 'F') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="F">노인전문병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="G1" value="G1"
                          	${fn:contains(dutyDiv, 'G1') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="G1">한의원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="G2" value="G2"
                          	${fn:contains(dutyDiv, 'G2') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="G2">군 한의원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="J" value="J"
                          	${fn:contains(dutyDiv, 'J') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="J">결핵병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="K" value="K"
                          	${fn:contains(dutyDiv, 'K') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="K">한센병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="L" value="L"
                          	${fn:contains(dutyDiv, 'L') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="L">정신병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="M" value="M"
                          	${fn:contains(dutyDiv, 'M') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="M">치과병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="N" value="N"
                          	${fn:contains(dutyDiv, 'N') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="N">치과의원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="O" value="O"
                          	${fn:contains(dutyDiv, 'O') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="O">부속병의원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="P" value="P"
                          	${fn:contains(dutyDiv, 'P') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="P">조산원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="Q" value="Q"
                          	${fn:contains(dutyDiv, 'Q') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="Q">치매병원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="R1" value="R1"
                          	${fn:contains(dutyDiv, 'R1') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="R1">보건소</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="R2" value="R2"
                          	${fn:contains(dutyDiv, 'R2') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="R2">보건지소</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="R3" value="R3"
                          	${fn:contains(dutyDiv, 'R3') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="R3">보건진료소</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="R4" value="R4"
                          	${fn:contains(dutyDiv, 'R4') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="R4">보건의료원</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="S" value="S"
                          	${fn:contains(dutyDiv, 'S') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="S">이송단체</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="T" value="T"
                          	${fn:contains(dutyDiv, 'T') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="T">119구급대</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="U1" value="U1"
                          	${fn:contains(dutyDiv, 'U1') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="U1">경찰서</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="U2" value="U2"
                          	${fn:contains(dutyDiv, 'U2') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="U2">교도소</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="V" value="V"
                          	${fn:contains(dutyDiv, 'V') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="V">지방자치단체</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="Y" value="Y"
                          	${fn:contains(dutyDiv, 'Y') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="Y">중앙응급의료센터</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="Z" value="Z"
                          	${fn:contains(dutyDiv, 'Z') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="Z">응급의료지원센터</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="dutyDiv" id="I" value="I"
                          	${fn:contains(dutyDiv, 'I') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="I">기타</label>
                        </div>
                      </div>
                    </div>

                    <div class="pb-4 mb-2">
                      <h3 class="h6">진료 과목별</h3>
                      <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 11rem;">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D001" value="D001"
                          	${fn:contains(searchMD, 'D001') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D001">내과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D002" value="D002"
                          	${fn:contains(searchMD, 'D002') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D002">소아청년과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D003" value="D003"
                          	${fn:contains(searchMD, 'D003') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D003">신경과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D004" value="D004"
                          	${fn:contains(searchMD, 'D004') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D004">정신건강의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D005" value="D005"
                          	${fn:contains(searchMD, 'D005') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D005">피부과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D006" value="D006"
                          	${fn:contains(searchMD, 'D006') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D006">외과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D007" value="D007"
                          	${fn:contains(searchMD, 'D007') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D007">흉부외과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D008" value="D008"
                          	${fn:contains(searchMD, 'D008') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D008">정형외과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D009" value="D009"
                          	${fn:contains(searchMD, 'D009') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D009">신경외과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D010" value="D010"
                          	${fn:contains(searchMD, 'D010') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D010">성형외과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D011" value="D011"
                          	${fn:contains(searchMD, 'D011') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D011">산부인과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D012" value="D012"
                          	${fn:contains(searchMD, 'D012') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D012">안과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D013" value="D013"
                          	${fn:contains(searchMD, 'D013') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D013">이빈인후과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D014" value="D014"
                          	${fn:contains(searchMD, 'D014') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D014">비뇨기과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D016" value="D016"
                          	${fn:contains(searchMD, 'D016') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D016">재활의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D017" value="D017"
                          	${fn:contains(searchMD, 'D017') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D017">마치통증의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D018" value="D018"
                          	${fn:contains(searchMD, 'D018') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D018">영상의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D019" value="D019"
                          	${fn:contains(searchMD, 'D019') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D019">치료방사건과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D020" value="D020"
                          	${fn:contains(searchMD, 'D020') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D020">임상병리과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D021" value="D021"
                          	${fn:contains(searchMD, 'D021') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D021">해부병리과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D022" value="D022"
                          	${fn:contains(searchMD, 'D022') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D022">가정의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D023" value="D023"
                          	${fn:contains(searchMD, 'D023') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D023">핵의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D024" value="D024"
                          	${fn:contains(searchMD, 'D024') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D024">응급의학과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D026" value="D026"
                          	${fn:contains(searchMD, 'D026') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D026">치과</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" name="searchMD" id="D034" value="D034"
                          	${fn:contains(searchMD, 'D034') ? 'checked' : ''} >
                          <label class="form-check-label fs-sm" for="D034">구강악안면외과</label>
                        </div>
                      </div>
                    </div>
                    <div class="border-top py-4">
                      <button class="btn btn-outline-primary rounded-pill" id="reset" type="reset" onclick="resetfilters()"><i class="fi-rotate-right me-2"></i>Reset filters</button>
                    </div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          </aside>



          <!-- Page content-->
          <div class="col-lg-8 col-xl-9 position-relative overflow-hidden pb-5 pt-4 px-3 px-xl-4 px-xxl-5">
            <!-- Breadcrumb-->
            <nav class="mb-3 pt-md-2" aria-label="Breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">병원 찾기</li>
              </ol>
            </nav>
            <!-- Title-->
            <div class="d-sm-flex align-items-center justify-content-between pb-3 pb-sm-4">
              <h1 class="h2 mb-sm-0">병원 찾기</h1>
            </div>
            <!-- Sorting-->
            <div class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch my-2">
              <div class="d-flex align-items-center flex-shrink-0">
                <label class="fs-sm me-2 pe-1 text-nowrap" for="sortby"><i class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                <select class="form-select form-select-sm" id="sortby" onchange="sorting();">
                  <option value="" ${param.searchSort == null ? 'selected' : ''}>정렬</option>
                  <option value="name" ${param.searchSort == 'name' ? 'selected' : ''}>이름</option>
                  <option value="star" ${param.searchSort == 'star' ? 'selected' : ''}>별점</option>
                  <option value="addr" ${param.searchSort == 'addr' ? 'selected' : ''}>주소</option>
                </select>
              </div>
              <hr class="d-none d-sm-block w-100 mx-4">
              <div class="d-none d-sm-flex align-items-center flex-shrink-0 text-muted"><i class="fi-check-circle me-2"></i><span class="fs-sm mt-n1">${count} results</span></div>
            </div>
            <!-- Catalog grid-->
            <div class="row row-cols-xl-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-xxl-4 py-4">
            
            	<c:if test="${empty list}">
            		<h3>검색 결과가 없습니다.</h3>
            	</c:if>
            	<c:if test="${not empty list}">
	            	<c:set var="i" value="${pageInfo.currentPage}"/>
            		<c:forEach var="hospital" items="${list}">
	            		<c:if test="${i+0 > 24}">
		            		<c:set var="i" value="1"/>
	            		</c:if>
						<!-- Item-->
						<div class="col pb-sm-2">
						  <article class="position-relative">
						    <div class="position-relative mb-3">
						      <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
						      <img class="rounded-3" src="${path}/resources/img/medisearch/hp/hp${i}.jpg" alt="Article img" width="900px" height="200px">
						    </div>
						    <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="${path}/search/hospitalInfo?hpid=${hospital.hpid}&i=${i}">${hospital.dutyName}</a></h3>
						    <ul class="list-inline mb-0 fs-xs">
						      <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>${hospital.star}</b><span class="text-muted">&nbsp;(${hospital.reviews})</span></li>
						      <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${hospital.dutyAddr}</li>
						      <li class="list-inline-item pe-1"><i class="fi-apartment mt-n1 me-1 fs-base text-muted align-middle"></i>${hospital.dutyDivNam}</li>
						    </ul>
						  </article>
						</div>
					      <c:set var="i" value="${i+2}"/>
            		</c:forEach>
            	</c:if>
            
            </div>
            <!-- Pagination-->
            <nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
             <ul class="pagination mb-1">
               <li class="page-item"><a class="page-link" onclick="movePage(1);" aria-label="Start"><i class="fi-chevrons-left"></i></a></li>
               <li class="page-item"><a class="page-link" onclick="movePage(${pageInfo.prevPage});" aria-label="Prev"><i class="fi-chevron-left"></i></a></li>
				<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
					<c:if test="${status.current == pageInfo.currentPage}">
						<li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">${status.current}<span class="visually-hidden">(current)</span></span></li>
					</c:if>
					<c:if test="${status.current != pageInfo.currentPage}">
						<li class="page-item d-none d-sm-block"><a class="page-link" onclick="movePage(${status.current});">${status.current}</a></li>
					</c:if>
				</c:forEach>
               <li class="page-item"><a class="page-link" onclick="movePage(${pageInfo.nextPage});" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
               <li class="page-item"><a class="page-link" onclick="movePage(${pageInfo.maxPage});" aria-label="End"><i class="fi-chevrons-right"></i></a></li>
             </ul>
           </nav>
          </div>
        </div>
      </div>
    </form>
    </main>
    
    <script type="text/javascript">
	    var url_href = window.location.href;
	    var url = new URL(url_href); // URL 객체 선언
	    
	    $(function() {
			const urlParams = new URL(location.href).searchParams;
			var city = urlParams.get('city');
			if(city != '') {
				itemChange();
			}
		})
		
		function sorting() {
			var searchSort = $("#sortby").val();
	    	
			url.searchParams.set("searchSort", searchSort);
			
			window.location.search = url.searchParams;
		}
		
		function movePage(page){
			url.searchParams.set("page", page);
			
			window.location.search = url.searchParams;
		};
	    
    
    </script>
    

<jsp:include page="/WEB-INF/views/common/footer.jsp" />
