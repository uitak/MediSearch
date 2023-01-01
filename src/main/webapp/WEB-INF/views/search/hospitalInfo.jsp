<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 병원 상세 페이지" />
</jsp:include>

<link href="${path}/resources/css/table.css" rel="stylesheet">

    <!-- Page header-->
    <section class="container pt-5 mt-5">
      <!-- Breadcrumb-->
      <nav class="mb-3 pt-md-3" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="${path}">홈</a></li>
          <li class="breadcrumb-item"><a href="${path}/search/hospital">병원 찾기</a></li>
          <!--========================================================== 병원 이름이 들어가는 곳 =========================================================-->
          <li class="breadcrumb-item active" aria-current="page">${hpInfo.dutyName}</li>
        </ol>
      </nav>

      <!--========================================================== 병원 정보가 들어가는 곳 =========================================================-->
      <div class="d-sm-flex align-items-center justify-content-between mb-4 pb-sm-2">
        <h1 class="h2 me-3 mb-sm-0">${hpInfo.dutyName}</h1>
        <div class="text-nowrap">
         
          <!-- 공유 버튼 -->
          <div class="dropdown d-inline-block" data-bs-toggle="tooltip" title="즐겨찾기에 추가">
            <!-- <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2" type="button" data-bs-toggle="dropdown"><i class="fi-share"></i></button> -->
            <!-- <div class="col"> -->
            <a class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100" href="#">wishlist<i class="fi-heart fs-sm ms-2"></i></a>
            <!-- </div> -->
          
          </div>
        
        </div>
      </div>


      <!-- Nav pills-->
      <ul class="nav nav-pills border-bottom pb-3 mb-4">
        <li class="nav-item"><a class="nav-link d-flex align-items-center active" href="#">
          <i class="fi-info-circle me-2"></i>상세정보</a></li>
             
      </ul>
    </section>
    <!-- Page content -->
    <section class="container pb-5 mb-md-4">
      <div class="row">




        <!-- Left column-->
        <div class="col-md-7 mb-md-0 mb-4 pb-md-0 pb-2">
          <!-- Carousel with slides count-->
          <!--===========================================사진 추가===============================================-->
          <div class="order-lg-1 order-2">
            <div class="tns-carousel-wrapper">
              <div class="tns-slides-count text-light">
                <i class="fi-image fs-lg me-2"></i>
                <div class="ps-1">
                  <span class="tns-current-slide fs-5 fw-bold"></span>
                  <span class="fs-5 fw-bold">/</span>
                  <span class="tns-total-slides fs-5 fw-bold"></span>
                </div>
              </div>
              <div class="tns-carousel-inner"
                data-carousel-options="{&quot;navAsThumbnails&quot;: true, &quot;navContainer&quot;: &quot;#thumbnails&quot;, &quot;gutter&quot;: 12, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false},&quot;500&quot;:{&quot;controls&quot;: true}}}">
                <div>
                  <img class="rounded-3" src="${path}/resources/img/medisearch/hp/hpResize/hp${param.i}.jpg" alt="${hpInfo.dutyName}">
               	</div>
                <div>
                  <img class="rounded-3" src="${path}/resources/img/hospital/orPassage.jpeg" alt="내부사진">
                </div>
              </div>
            </div>


            <!-- Thumbnails nav-->
            <ul class="tns-thumbnails mb-4" id="thumbnails" >
              <li class="tns-thumbnail"><img class="rounded-3" src="${path}/resources/img/medisearch/hp/hpResize/hp${param.i}.jpg" alt="${hpInfo.dutyName}"></li>
              <li class="tns-thumbnail"><img class="rounded-3" src="${path}/resources/img/hospital/orPassage.jpeg" alt="내부사진"></li>
              <!--
              <li class="tns-thumbnail"><img src="img/real-estate/single/th11.jpg" alt="Thumbnail"></li>
              <li class="tns-thumbnail"><img src="img/real-estate/single/th12.jpg" alt="Thumbnail"></li>
              -->
              <!-- 유튜브 플레이버튼  -->
              <!--
              <li class="tns-thumbnail">
                <div class="d-flex flex-column align-items-center justify-content-center h-100"><i
                    class="fi-play-circle fs-4 mb-1"></i><span>Play video</span></div>
              </li>
              -->
            </ul>
          </div>
          <!-- ============================================ 사진추가 ===================================================== -->


          <!--=========================================== 병원 상세설명 ======================================-->
          <h2 class="h4">병원 설명</h2>
          <ul class="list-unstyled">
            <li><i class="fi-star-filled mt-n1 me-1 text-warning align-middle"></i><b>${hpInfo.star}</b>
                <span class="text-muted"> (${hpInfo.reviews} reviews)</span></li>
            <!-- <li><i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li> -->
            <!-- ========================= 병원 위치 정보 들어가는 자리 ========================= -->
            <li><i class="fi-map-pin mt-n1 me-1 align-middle opacity-70"></i>${hpInfo.dutyAddr}</li>
          </ul>
          <div class="mb-4 pb-md-3">
            <p class="mb-1"> 
              국내 최초의 현대적 의료기관이자 최고의 신뢰를 받는 ${hpInfo.dutyName}이 ${hpInfo.dutyAddr}에 문을 열었습니다.
              디지털 혁신, 안전과 공감이라는 운영 목표 아래 뛰어난 의료진과 최고 수준의 진료 환경으로 아시아 중심 병원으로 도약하고자 합니다. ${hpInfo.dutyName}은 디지털 혁신의 효율적인 시스템을 통해 안전하고 질 높은 의료서비스를 제공합니다. 또한 다양한 임상과가 유기적으로 협력하는 다학제 치료를 시행하고 신속한 진료와 체계적인 치료를 제공할 것입니다.
              ${hpInfo.dutyName}은 환자 안전을 최우선으로 한 혁신적인 진료 프로세스, 첨단 디지털 솔루션, 선진적 케어 시스템을 통한 국내 의료계의 새로운 패러다임을 제시하는 ${hpInfo.dutyDivNam}의 미래 모델입니다.
            </p>
<!--             <a class="collapse-label collapsed" href="#seeMoreAbout" data-bs-toggle="collapse" -->
<!--               data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false" -->
<!--               aria-controls="seeMoreAbout"></a> -->
          </div>

          <!-- =============================================== 수술/시술 들어갈 곳 ================================================ -->
          <!-- Amenities-->
          <div class="mb-4 pb-md-3">
            <h2 class="h4">수술/시술 가능 여부</h2>
            <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
            	<c:if test="${operation eq null}">
            		<li class="col"><i class="fi-alert-circle mt-n1 me-2 fs-lg align-middle"></i>정보 없음</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy1() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>뇌출혈수술</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy2() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>뇌경색의재관류</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy3() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>심근경색의재관류</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy4() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>복부손상의수술</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy5() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>사지접합의수술</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy6() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>응급내시경</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy7() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>응급투석</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy8() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>조산산모</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy9() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>정신질환자</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy10() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>신생아</li>
            	</c:if>
            	<c:if test="${operation.getMkioskTy11() eq 'Y'}">
	              	<li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>중증화상</li>
            	</c:if>
            </ul>
          </div>

        </div>
        

        <!-- =============================================================== 오른쪽 부분 ==================================================================== -->
        <!-- Sidebar-->
        <aside class="col-md-5">
          <!-- Place card-->
          <div class="card mb-4 p-2 shadow-sm">
            <div class="card-body">
              <!-- Place info-->
              <div class="d-flex align-items-start mb-3 pb-2 border-bottom">
                <!-- 병원이면 병원로고, 응급실이면 응급로고, 등을 넣는 곳 -->
                <img src="${path}/resources/img/logo/hospitalLogo.png" width="60" alt="병원">
                <div class="ps-2 ms-1">
                  <h3 class="h5 mb-2">${hpInfo.dutyName}</h3>
                  <ul class="list-unstyled d-flex flex-wrap fs-sm">
                    <li class="me-2 mb-1 pe-1">
                      <i class="fi-star-filled mt-n1 me-1 text-warning align-middle opacity-70"></i>
                      <!--=========== 리뷰 별점 넣는 곳 ========-->
                      <b>${hpInfo.star} </b>(${hpInfo.reviews})</li>
                    <!-- <li class="me-2 mb-1 pe-1">
                      <i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li> -->
                      <!--===================================== 병원 분류 넣는 곳 =============================================-->
                    <li class="me-2 mb-1 pe-1">
                      <i class="fi-globe mt-n1 me-1 align-middle opacity-70"></i>${hpInfo.dutyDivNam}</li>
                  </ul>
                </div>
              </div>
              <!--========================================  병원 정보 입력 란 별 다른일 없음 href="#" 삭제=========================================-->
              <!-- Place contacts-->
              <div class="mb-3 pb-3 border-bottom">
                <h4 class="h5 mb-2">기본 정보:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2">
                    <i class="fi-map-pin mt-1 me-2 align-middle opacity-70"></i>${hpInfo.dutyAddr}
                  </li>
                  <!-- 전화번호 -->
                  <li class="nav-item mb-2">
                    <a class="nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start" href="tel:3025550107">
                      <i class="fi-phone mt-1 me-2 align-middle opacity-70"></i>${hpInfo.dutyTel1}</a>, 
                      </li>

                  <!-- 응급실 운영 여부 -->
                  <li class="nav-item">
                    <a class="nav-link p-0 fw-normal d-flex align-items-start">
                   
                      <i class="fi-help mt-1 me-2 align-middle opacity-70"></i>
                      응급실 운영 여부 : 
                      <c:if test="${hpInfo.dutyEryn == '1'}"> O </c:if>
                      <c:if test="${hpInfo.dutyEryn != '1'}"> X </c:if>
                    </a>
                    </li>
                </ul>
              </div>

              <div class="mb-3 pb-3 border-bottom">
                <h4 class="h5 mb-2">진료과목:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2">
                    <a class="nav-link p-0 fw-normal d-flex align-items-start">
                    <i class="fi-search mt-1 me-2 align-middle opacity-70"></i>
                    	<c:if test="${not empty mdList}">
                    		정보 없음
                    	</c:if>
                    	<c:if test="${empty mdList}">
	                    	<c:forEach var="department" items="${mdList}">
	                    		${department} | 
	                    	</c:forEach>
                    	</c:if>
                    </a>
                  </li>
                </ul>
              </div>


              <!-- 즐겨찾기 등록 여부 -->
              <!-- Place pricing-->
              <!--
              <div class="mb-3 pb-4 border-bottom">
                <div class="row row-cols-1">
                  <div class="col mb-3">
                    <h4 class="h5 mb-0"><span class="fs-4">즐겨찾기</span>
                      <span class="fs-base fw-normal text-body">등록</span></h4>
                  </div>
                  <div class="col">
                    <a class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100" href="#">
                    Wishlist<i class="fi-heart fs-sm ms-2"></i></a></div>
                </div>
              </div>
              -->
             
              <div class="mb-3 pb-0">
                <h4 class="h5 mb-2">진료시간:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2">
                    <a class="nav-link p-0 fw-normal d-flex align-items-start" href="#">
                    <i class="fi-calendar mt-1 me-2 align-middle opacity-70"></i>세부일정은 병원에 전화 문의바랍니다.</a>
                  </li>
                </ul>

                <!-- table css 적용해놨음 -->
                <table class="styled-table" style="margin-left:auto;margin-right:auto;">
                  <tbody>
                      <tr class="active-row">
                          <td>월요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime1s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime1s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime1s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime1c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime1c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime1c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>화요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime2s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime2s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime2s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime2c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime2c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime2c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>수요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime3s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime3s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime3s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime3c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime3c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime3c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>목요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime4s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime4s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime4s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime4c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime4c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime4c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>금요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime5s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime5s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime5s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime5c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime5c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime5c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>토요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime6s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime6s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime6s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime6c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime6c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime6c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>일요일</td>
                          <td>
	                          <c:if test="${hpInfo.dutyTime7s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime7s ne '-'}">
	                          	<c:set var="start" value="${hpInfo.dutyTime7s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${hpInfo.dutyTime7c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${hpInfo.dutyTime7c ne '-'}">
	                          	<c:set var="end" value="${hpInfo.dutyTime7c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      
                  </tbody>
              </table>
       
              </div>

            </div>
          </div>

          <!--========================================================================= 지도 ===========================================================================-->
          <!-- Location (Map)-->
          <div class="position-relative">
            <h4 class="fs-lg mb-2">병원 위치</h4>
				
				<div id="map2" style="width: 100%; height: 300px; border-radius: 20px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de43de051b10f18cf420b0e4cf8140a1"></script>
				<script>
				var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div 
				    mapOption2 = { 
				        center: new kakao.maps.LatLng(<c:out value="${hpInfo.wgs84Lat}"/>, <c:out value="${hpInfo.wgs84Lon}"/>), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };
				
				var map2 = new kakao.maps.Map(mapContainer2, mapOption2); // 지도를 생성합니다
				
				// 마커가 표시될 위치입니다 
				var markerPosition2  = new kakao.maps.LatLng(<c:out value="${hpInfo.wgs84Lat}"/>, <c:out value="${hpInfo.wgs84Lon}"/>); 
				
				// 마커를 생성합니다
				var marker2 = new kakao.maps.Marker({
				    position: markerPosition2
				});
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker2.setMap(map2);
				
				var iwContent = '<div style="padding:5px; font-size:10px">${hpInfo.dutyName} <br><a style="text-decoration: none;" href="https://map.kakao.com/link/map/<c:out value="${hpInfo.dutyName}"/>,<c:out value="${hpInfo.wgs84Lat}"/>,<c:out value="${hpInfo.wgs84Lon}"/>" target="_blank" >큰지도보기</a> <a style="text-decoration: none;" href="https://map.kakao.com/link/to/<c:out value="${hpInfo.dutyName}"/>,<c:out value="${hpInfo.wgs84Lat}"/>, <c:out value="${hpInfo.wgs84Lon}"/>" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				iwPosition = new kakao.maps.LatLng(<c:out value="${hpInfo.wgs84Lat}"/>, <c:out value="${hpInfo.wgs84Lon}"/>); //인포윈도우 표시 위치입니다
				
				//인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
				position : iwPosition, 
				content : iwContent 
				});
				
				//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				infowindow.open(map2, marker2); 
				
				</script>
          </div>
            
            
          </div>
        </aside>
      </div>

      <br><br><hr>
    </section>

   
    <!--===================================================리뷰 추가==================================================-->
    <!-- Post content-->
    <section class="container mb-5 pb-1">
      <div class="row">
        <div class="col-md-7 mb-md-0 mb-4">

          <!-- Reviews-->
          <div class="mb-4 pb-4 border-bottom">
            <h3 class="h4 pb-3"><i class="fi-star-filled mt-n1 me-2 lead align-middle text-warning"></i>${hpInfo.star} (${hpInfo.reviews} reviews)
            </h3>
            <c:if test="${loginMember != null}">
            <div
              class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch justify-content-between">
              <a class="btn btn-outline-primary mb-sm-0 mb-3" onclick="moveReview();" data-bs-toggle="modal"><i
                  class="fi-edit me-1"></i>리뷰 쓰기</a>
            </div>
            </c:if>
          </div>
          <c:if test="${empty reviewList}">
	          <div class="mb-4">
	          	<h6>등록된 리뷰가 없습니다.</h6>
	          </div>
          </c:if>
          <c:if test="${not empty reviewList}">
          	<c:forEach var="review" items="${reviewList}">
		          <!-- Review-->
		          <div class="mb-4 pb-4 border-bottom">
		            <div class="d-flex justify-content-between mb-3">
		              <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png"
		                  width="48" alt="Avatar">
		                <div class="ps-2">
		                  <h6 class="fs-base mb-0">${review.userId}</h6>
		                  <span class="star-rating">
		                  	<c:forEach var="i" begin="1" end="${review.star}" step="1">
			                  <i class="star-rating-icon fi-star-filled active"></i>
		                  	</c:forEach>
		                  	<c:forEach var="i" begin="${review.star+1}" end="5" step="1">
			                  <i class="star-rating-icon fi-star"></i>
		                  	</c:forEach>
		                  </span>
		                </div>
		              </div><span class="text-muted fs-sm"><fmt:formatDate type="date" value="${review.createDate}"/></span>
		            </div>
		            <p>${review.content}</p>
<!-- 		            <div class="d-flex align-items-center"> -->
<!-- 		              <button class="btn-like" type="button"><i class="fi-like"></i><span>(3)</span></button> -->
<!-- 		              <div class="border-end me-1">&nbsp;</div> -->
<!-- 		              <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(0)</span></button> -->
<!-- 		            </div> -->
		          </div>
          		
          	</c:forEach>
          	
          </c:if>
          
          <!-- Pagination-->
          <c:if test="${not empty reviewList}">
	            <nav class="pb-md-4 pt-4" aria-label="Pagination">
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
          </c:if>
        </div>
        <!--======================================리뷰 추가===========================================-->


        
        <!--================================================= 근처 약국 ====================================================-->
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
	  var url_href = window.location.href;
	  var url = new URL(url_href); // URL 객체 선언
	  function movePage(page){
			url.searchParams.set("page", page);
			
			window.location.search = url.searchParams;
		};
		const urlParams = new URLSearchParams(window.location.search);
		function moveReview(){
		var idValue = urlParams.get('hpid');
		location.href = '${path}/board/postHospitalReview?hpid='+idValue;
			
	  }
  </script>
		


<jsp:include page="/WEB-INF/views/common/footer.jsp" />

