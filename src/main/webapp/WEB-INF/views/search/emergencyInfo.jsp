<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 응급실 상세 페이지" />
</jsp:include>
<!-- ===================================================== MediSearch Navbar 네비바 끝 ==================================================== -->

      <!-- Page content-->
      <section class="container mt-5 mb-lg-5 mb-4 pt-5 pb-lg-5">
        <!-- Breadcrumb-->
        <nav class="mb-3 pt-md-3" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${path}">Home</a></li>
            <li class="breadcrumb-item"><a href="${path}/search/emergency.do">응급실 찾기</a></li>
            <li class="breadcrumb-item active" aria-current="page">${info.get(0).dutyName}</li>
          </ol>
        </nav>
        <div class="row gy-5 pt-lg-2">
          <div class="col-lg-7">
            <div class="d-flex flex-column">
              <!-- Carousel with slides count-->
              <div class="order-lg-1 order-2">
                <div class="tns-carousel-wrapper">
                  <div class="tns-slides-count text-light"><i class="fi-image fs-lg me-2"></i>
                    <div class="ps-1"><span class="tns-current-slide fs-5 fw-bold"></span><span class="fs-5 fw-bold">/</span><span class="tns-total-slides fs-5 fw-bold"></span></div>
                  </div>
                  <div class="tns-carousel-inner" data-carousel-options="{&quot;navAsThumbnails&quot;: true, &quot;navContainer&quot;: &quot;#thumbnails&quot;, &quot;gutter&quot;: 12, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false},&quot;500&quot;:{&quot;controls&quot;: true}}}">
                    <div>
                      <img class="rounded-3" src="${path}/${img}" alt="${info.get(0).dutyName}" style="width: 3814px; heigth: 2860px;">
                    </div>
                    <div>
                    <!-- 수술실 복도 -->
                      <img class="rounded-3" src="${path}/resources/img/hospital/orPassage.jpeg" alt="수술실복도">
                    </div>
                  </div>
                </div>
                <!-- Thumbnails nav-->
                <ul class="tns-thumbnails mb-4" id="thumbnails">
                  <li class="tns-thumbnail"><img class="rounded-3" src="${path}/${img}" alt="${info.get(0).dutyName}"></li>
                  <li class="tns-thumbnail"><img class="rounded-3" src="${path}/resources/img/hospital/orPassage.jpeg" alt="수술실복도"></li>
                </ul>
              </div>
 <!-- ============================================================== 병원 정보 =============================================================================== -->             
              <!-- Page title + Features-->
              <div class="order-lg-2 order-1">
                <h1 class="h2 mb-2">${info.get(0).dutyName}</h1>
                <p class="mb-2 pb-1 fs-lg"><i class="fi-map-pin mt-n1 lead align-middle text-muted"></i> &nbsp;${info.get(0).dutyAddr}</p>
                <ul class="d-flex mb-4 pb-lg-2 list-unstyled">
                  <li class="me-3 pe-3 border-end"><i class="fi-phone mt-n1 lead align-middle text-muted"></i><b class="me-1"> &nbsp;${info.get(0).dutyTel3}</b></li>
                </ul>
              </div>
            </div>
<!--================================================================= 병원 개요 ====================================================================-->            
            <!-- Overview-->
            <h2 class="h5">병원 소개</h2>
            <p class="mb-4 pb-2">국내 최초의 현대적 의료기관이자 최고의 신뢰를 받는 ${info.get(0).dutyName}이 ${addr}에 문을 열었습니다.

              디지털 혁신, 안전과 공감이라는 운영 목표 아래 뛰어난 의료진과 최고 수준의 진료 환경으로 아시아 중심 병원으로 도약하고자 합니다. ${info.get(0).dutyName}은 디지털 혁신의 효율적인 시스템을 통해 안전하고 질 높은 의료서비스를 제공합니다. 또한 다양한 임상과가 유기적으로 협력하는 다학제 치료를 시행하고 신속한 진료와 체계적인 치료를 제공할 것입니다.
              
              ${info.get(0).dutyName}은 환자 안전을 최우선으로 한 혁신적인 진료 프로세스, 첨단 디지털 솔루션, 선진적 케어 시스템을 통한 국내 의료계의 새로운 패러다임을 제시하는 ${info.get(0).dutyDivNam}의 미래 모델입니다.
              </p>
	          <p>${dpn}</p>
<!--====================================================================== 지도 =================================================================  -->              
            <!-- Rental agent-->
            <h2 class="h5" style="margin-top:50px;">응급실 위치</h2>

          <!-- Location (Map)-->
          <div class="position-relative">
            <iframe src="https://www.google.com/maps?q=${info.get(0).dutyAddr} ${info.get(0).dutyName}&output=embed" width="400" height="300" style="border-radius: 20px;"></iframe>
          </div>


          </div>
          <!-- Sidebar with details-->
          <aside class="col-lg-5">
            <div class="ps-lg-5">
              <div class="d-flex align-items-center justify-content-between mb-3">
                <div><span class="badge bg-success me-2 mb-2">응급실</span><span class="badge bg-info me-2 mb-2">응급서비스</span></div>
                <div class="text-nowrap">
      <!--=============== 즐겨찾기 버튼            
                  <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2 mb-2" type="button" data-bs-toggle="tooltip" title="Add to Wishlist"><i class="fi-heart"></i></button>
       =============-->          
                </div>
              </div>

<!--====================================================== 병원 정보 ===========================================================-->
              <h3 class="h5 mb-2">응급실 정보: </h3>
              <h2 class="h3 mb-4 pb-2">${info.get(0).dutyName}<span class="d-inline-block ms-1 fs-base fw-normal text-body"> &nbsp;&nbsp;&nbsp;응급실</span></h2>
              <!-- Property details-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5 class="mb-0 pb-3">세부 정보</h5>
                  <ul class="list-unstyled mt-n2 mb-0">
                    <li class="mt-2 mb-0"><b>병원 이름: &nbsp;&nbsp;&nbsp;</b>${info.get(0).dutyName}</li>
                    <li class="mt-2 mb-0"><b>응급실 번호: &nbsp;&nbsp;&nbsp;</b>${info.get(0).dutyTel3}</li>
                    <li class="mt-2 mb-0"><b>주소: &nbsp;&nbsp;&nbsp;</b>${info.get(0).dutyAddr}</li>
                    <li class="mt-2 mb-0"><b>실시간 응급실 가용 병상 수: &nbsp;&nbsp;&nbsp;</b>${info.get(0).hperyn} / ${info.get(0).hpbdn}</li>
                  </ul>
                </div>
              </div>
              <a class="btn btn-lg btn-primary w-100 mb-3"  onclick="movePage('${path}/board/communityList?hpid=${hpid}');">리뷰 게시판 보러가기</a>
              <a class="d-inline-block mb-4 pb-2 text-decoration-none">
                <i class="fi-help me-2 mt-n1 align-middle"></i>자세한 정보는 제공된 해당 병원 연락처로 문의바랍니다.</a>
              
<!-- =============================================================가용 시설 목록=========================================================================== -->
              <!-- Amenities-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5>응급 시설 가용 여부</h5>
                  <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 mb-0 text-nowrap">
                    <li class="col"><i class="fi-car mt-n1 me-2 fs-lg align-middle"></i>구급차 ( ${info.get(0).hvamyn eq 'Y' ? 'O' : 'X'} )</li>
                    <li class="col"><i class="fi-heart mt-n1 me-2 fs-lg align-middle"></i>인공호흡기 ( ${info.get(0).hvventiayn eq 'Y' ? 'O' : 'X'} )</li>
                    <li class="col"><i class="fi-cctv mt-n1 me-2 fs-lg align-middle"></i>조영촬영기 ( ${info.get(0).hvangioayn eq 'Y' ? 'O' : 'X'} )</li>
                    <li class="col"><i class="fi-bed mt-n1 me-2 fs-lg align-middle"></i>MRI ( ${info.get(0).hvmriayn eq 'Y' ? 'O' : 'X'} )</li>
                    <li class="col"><i class="fi-layers mt-n1 me-2 fs-lg align-middle"></i>CT ( ${info.get(0).hvctayn eq 'Y' ? 'O' : 'X'} )</li>
                    <li class="col"><i class="fi-double-bed me-2 fs-lg align-middle"></i>인큐베이터 ( ${info.get(0).hv11 eq 'Y' ? 'O' : 'X'} )</li>
                  </ul>
                </div> 
              </div>

<!-- ========================================================중증질환 수용 가능 정보 검색================================================ -->              
              <!-- Not included in rent-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5>중증질환 수용 가능 여부</h5>
                  <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 mb-0 text-nowrap">
                    <li class="col"  style="display: ${info.get(0).hperyn > 0 ? 'block' : 'none'};"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>응급실</li>
                    <li class="col"  style="display: ${info.get(0).hpopyn > 0 ? 'block' : 'none'};"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>수술실</li>
                    <li class="col"  style="display: ${info.get(0).hv2 > 0 ? 'block' : 'none'};"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>내과 중환자실</li>
                    <li class="col"  style="display: ${info.get(0).hv3 > 0 ? 'block' : 'none'};"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>외과 중환자실</li>
                    <li class="col"  style="display: ${info.get(0).hv6 > 0 ? 'block' : 'none'};"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>신경외과 중환자실</li>
                  </ul>
                </div>
              </div>
              <!-- Post meta-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5>수술/시술 가능 여부</h5>
                  <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 mb-0 text-nowrap">
                    <li class="col" style="display: ${info.get(0).getMkioskTy25() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>응급실(자살시도)</li> 
                    <li class="col" style="display: ${info.get(0).getMkioskTy1() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>뇌출혈수술</li> 
                    <li class="col" style="display: ${info.get(0).getMkioskTy2() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>뇌경색의재관류</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy3() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>심근경색의재관류</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy4() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>복부손상의수술</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy5() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>사지접합의수술</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy6() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>응급내시경</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy7() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>응급투석</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy8() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>조산산모</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy9() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>정신질환자</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy10() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>신생아</li>
                    <li class="col" style="display: ${info.get(0).getMkioskTy11() eq 'Y' ? 'block' : 'none'};"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>중증화상</li>
                  </ul>
                </div>
              </div>
            </div>
          </aside>
        </div>
      </section>


<!-- ========================================================================= 근처 약국 출력 ======================================================================= -->      
      <!-- Recently viewed-->
        <section class="container pb-5 mb-lg-4">
          <div class="d-flex align-items-center justify-content-between mb-4 pb-2" style="margin-top: 3%;">
            <h2 class="h3 mb-0">근처 약국</h2><a class="btn btn-link fw-normal ms-sm-3 p-0" href="${path}/search/hospital">더 보기<i class="fi-arrow-long-right ms-2"></i></a>
          </div>
          <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
            <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
	            <c:forEach var="pharmacy" items="${pharmacyList}" varStatus="status">
	              <!-- Item-->
	              <div>
	                <div class="position-relative">
	                  <div class="position-relative mb-3">
	                    <button
	                      class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
	                      type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
	                      <i class="fi-heart"></i>
	                    </button>
	                    <img class="rounded-3" src="${path}/resources/img/medisearch/ph/ph${status.count}.jpg" alt="약국">
	                  </div>
	                  <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="${path}/search/pharmacyInfo?no=${pharmacy.pharmacyNo}&i=${status.count}">${pharmacy.dutyName}</a></h3>
	                  <ul class="list-inline mb-0 fs-xs">
	                    <li class="list-inline-item pe-1"><i
	                        class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>${pharmacy.star}</b><span
	                        class="text-muted">&nbsp;(${pharmacy.reviews})</span></li>
	                    <li class="list-inline-item pe-1">
	                      <!-- <i class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li> -->
	                    <li class="list-inline-item pe-1">
	                      <i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${pharmacy.dutyAddr}</li>
	                  </ul>
	                </div>
	              </div>
	            
	            </c:forEach>
          </div>
        </div>
      </section>
    </main>
    
<script type="text/javascript">
	function movePage(pageUrl){
		location.href = encodeURI(pageUrl);	
	};
</script>

<!-- ============================================================ MediSearch푸터 footer ============================================================ -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
