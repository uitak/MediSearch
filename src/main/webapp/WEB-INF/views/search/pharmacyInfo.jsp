<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 약국 상세 페이지" />
</jsp:include>

<link href="${path}/resources/css/table.css" rel="stylesheet">


    <!-- Page header-->
    <section class="container pt-5 mt-5">
      <!-- Breadcrumb-->
      <nav class="mb-3 pt-md-3" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="${path}">홈</a></li>
          <li class="breadcrumb-item"><a href="${path}/search/pharmacy">약국 찾기</a></li>
          <!--========================================================== 약국 이름이 들어가는 곳 =========================================================-->
          <li class="breadcrumb-item active" aria-current="page"><c:out value="${pharmacy.dutyName}"/></li>

          
        </ol>
      </nav>

      <!--========================================================== 약국 정보가 들어가는 곳 =========================================================-->
      <div class="d-sm-flex align-items-center justify-content-between mb-4 pb-sm-2">
        <h1 class="h2 me-3 mb-sm-0"><c:out value="${pharmacy.dutyName}"/></h1>
        <div class="text-nowrap"></div>
      </div>


      <!-- Nav pills-->
      <ul class="nav nav-pills border-bottom pb-3 mb-4">
        <li class="nav-item"><a class="nav-link d-flex align-items-center active" href="#">
          <i class="fi-info-circle me-2"></i> 상세정보
        
          </a></li>
      </ul>
    </section>
    
    
    <!-- Page content -->
    <section class="container pb-5 mb-md-4">
      <div class="row">

		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de43de051b10f18cf420b0e4cf8140a1"></script>		
		

		
        <!-- Left column-->
        <div class="col-md-7 mb-md-0 mb-4 pb-md-0 pb-2" >
          <!-- Carousel with slides count-->
          <!--===========================================사진 추가===============================================-->
          <div class="order-lg-1 order-2" onclick="relayout()">
            <div class="tns-carousel-wrapper" onclick="relayout()">
              <div class="tns-slides-count text-light" >
                <i class="fi-image fs-lg me-2" onclick="relayout()"></i>
                <div class="ps-1" onclick="relayout()">
                  <span class="tns-current-slide fs-5 fw-bold"></span>
                  <span class="fs-5 fw-bold">/</span>
                  <span class="tns-total-slides fs-5 fw-bold"></span>
                </div>
              </div>
              <div class="tns-carousel-inner"
                data-carousel-options="{&quot;navAsThumbnails&quot;: true, &quot;navContainer&quot;: &quot;#thumbnails&quot;, &quot;gutter&quot;: 12, &quot;responsive&quot;: {&quot;0&quot;:{&quot;controls&quot;: false},&quot;500&quot;:{&quot;controls&quot;: true}}}">
                <div><img class="rounded-3" src="${path}/resources/img/medisearch/ph/ph${param.i}.jpg" alt="Image"></div>
                <div><img class="rounded-3" src="${path}/resources/img/medisearch/ph/pharmacy.jpg" alt="Image"></div>
<!-- ============================== 카카오 지도 api ================================ -->
				
				<div id="map" onclick="relayout() panTo()"  ><img class="rounded-3" src="${path}/resources/img/pha/white.jpg" alt="Image"></div>
<!-- ============================== 카카오 api ================================ -->
               
                <!--
                <div><img class="rounded-3" src="img/real-estate/single/11.jpg" alt="Image"></div>
                <div><img class="rounded-3" src="img/real-estate/single/12.jpg" alt="Image"></div>
                -->
                <!-- 유튜브 동영상 플레이 -->
                <!-- <div>
                  <div class="ratio ratio-16x9">
                    <iframe class="rounded-3" src="https://www.youtube.com/embed/dofyR9p8e7w"
                      title="YouTube video player"
                      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                      allowfullscreen></iframe>
                  </div>
                </div> -->
              </div>
            </div>
            
 <!-- ============================== 카카오 api ================================ -->           
				<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(<c:out value="${pharmacyList.wgs84Lat}"/>, <c:out value="${pharmacyList.wgs84Lon}"/>), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };
				
				var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				
				// 마커가 표시될 위치입니다 
				var markerPosition  = new kakao.maps.LatLng(<c:out value="${pharmacyList.wgs84Lat}"/>, <c:out value="${pharmacyList.wgs84Lon}"/>); 
				
				// 마커를 생성합니다
				var marker = new kakao.maps.Marker({
				    position: markerPosition
				});
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker.setMap(map);
				
				// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
				// marker.setMap(null);
				
				function relayout() {    
				    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
				    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
				    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
				    map.relayout();
				}
				
				function panTo() {
				    // 이동할 위도 경도 위치를 생성합니다 
				    var moveLatLon = new kakao.maps.LatLng(<c:out value="${pharmacyList.wgs84Lat}"/>, <c:out value="${pharmacyList.wgs84Lon}"/>);
				    
				    // 지도 중심을 부드럽게 이동시킵니다
				    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
				    map.panTo(moveLatLon);            
				}
				</script>
<!-- ============================== 카카오 api ================================ -->


            <!-- Thumbnails nav-->
            <ul class="tns-thumbnails mb-4" id="thumbnails" >
              <li class="tns-thumbnail"><img src="${path}/resources/img/medisearch/ph/ph${param.i}.jpg" alt="Thumbnail" ></li>
              <li class="tns-thumbnail"><img src="${path}/resources/img/medisearch/ph/pharmacy.jpg" alt="Thumbnail" ></li>
              <li class="tns-thumbnail"><img src="${path}/resources/img/hos/resize/900.png" onclick="relayout() panTo()" alt="Thumbnail"></li>
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


          <!--=========================================== 약국 상세설명 ======================================-->
          <h2 class="h4">약국 설명</h2>
          <ul class="list-unstyled">
            <li><i class="fi-star-filled mt-n1 me-1 text-warning align-middle"></i><b><c:out value="${pharmacy.star}"/> </b><span
                class="text-muted">(${pharmacy.reviews} reviews)</span></li>
            <!-- <li><i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li> -->
            <!-- ========================= 약국 위치 정보 들어가는 자리 ========================= -->
            <li><i class="fi-map-pin mt-n1 me-1 align-middle opacity-70"></i><c:out value="${pharmacy.dutyAddr}"/></li>
          </ul>
          <div class="mb-4 pb-md-3">
            <p class="mb-1">
              <c:out value="${pharmacy.dutyAddr}"/> 에 위치하는 <c:out value="${pharmacy.dutyName}"/>은 한국임상양병약학회 회원들을 중심으로 설립했습니다. 
              <c:out value="${pharmacy.dutyName}"/>은 의약품 및 건강기능식품의 유통과 전국적인 체인망을 갖춰 비약적인 성장을 거듭해 왔습니다. <c:out value="${pharmacy.dutyName}"/>은 
              양병학을 기초로 한 임상역학을 중심에 두고, 약사로서의 전문성 확보와 체인회원의 경제적인 이익을 극대화 하기 위해 노력해 왔습니다. 
              전문적이고 차별화된 약국품질경영시스템을 통하여 약국에겐 최상의 경쟁력과 만족을, 고객에겐 한 차원 높은 약국 서비스를 제공합니다. 또한 
              약국에서 필요로 하는 요소를 파악하여, 변화하는 시대에 적절히 대응할 수 있는 약국 인테리어 및 청구소프트웨어를 비롯한 각종 약국 경영에 필수적인 물품 및 제반 사항을 빠짐없이 메뉴얼화 하여 약국 경영에 빈틈이 없도록 준비해 나가고 있습니다.
            </p>
<!--             <div class="collapse" id="seeMoreAbout"> -->
<!--               <p class="mb-1"> -->
<%-- 				<c:out value="${pharmacy.dutyInf}"/> --%>
<!--               </p> -->
<!--             </div> -->
<!--             <a class="collapse-label collapsed" href="#seeMoreAbout" data-bs-toggle="collapse" -->
<!--               data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false" -->
<!--               aria-controls="seeMoreAbout"></a> -->
          </div>


<!--=============================== 지도 ===========================================================================-->
          <!-- Location (Map)-->
          <div class="position-relative">
            <h4 class="fs-lg mb-2">약국 위치</h4>
				
				<div id="map2" style="width: 100%; height: 400px; border-radius: 20px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de43de051b10f18cf420b0e4cf8140a1"></script>
				<script>
				var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div 
				    mapOption2 = { 
				        center: new kakao.maps.LatLng(<c:out value="${pharmacy.wgs84Lat}"/>, <c:out value="${pharmacy.wgs84Lon}"/>), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };
				
				var map2 = new kakao.maps.Map(mapContainer2, mapOption2); // 지도를 생성합니다
				
				// 마커가 표시될 위치입니다 
				var markerPosition2  = new kakao.maps.LatLng(<c:out value="${pharmacy.wgs84Lat}"/>, <c:out value="${pharmacy.wgs84Lon}"/>); 
				
				// 마커를 생성합니다
				var marker2 = new kakao.maps.Marker({
				    position: markerPosition2
				});
				
				// 마커가 지도 위에 표시되도록 설정합니다
				marker2.setMap(map2);
				
				var iwContent = '<div style="padding:5px; font-size:10px">${pharmacy.dutyName} <br><a style="text-decoration: none;" href="https://map.kakao.com/link/map/<c:out value="${pharmacy.dutyName}"/>,<c:out value="${pharmacy.wgs84Lat}"/>,<c:out value="${pharmacy.wgs84Lon}"/>" target="_blank" >큰지도보기</a> <a style="text-decoration: none;" href="https://map.kakao.com/link/to/<c:out value="${pharmacy.dutyName}"/>,<c:out value="${pharmacy.wgs84Lat}"/>, <c:out value="${pharmacy.wgs84Lon}"/>" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
				iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
				
				//인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
				position : iwPosition, 
				content : iwContent 
				});
				
				//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
				infowindow.open(map2, marker2); 
				
				</script>
          </div>
<!--=============================== 지도 ===========================================================================-->
        </div>


        

<!-- =============================================================== 오른쪽 부분 ==================================================================== -->
        <!-- Sidebar-->
        <aside class="col-md-5">
          <!-- Place card-->
          <div class="card mb-4 p-2 shadow-sm">
            <div class="card-body">
              <!-- Place info-->
              <div class="d-flex align-items-start mb-3 pb-2 border-bottom">
                <!-- 병원이면 병원로고, 약국이면 응급로고, 등을 넣는 곳 -->
                <img src="${path}/resources/img/pha/phaLogo.png" width="60" alt="Thumbnail">
                <div class="ps-2 ms-1">
                  <h3 class="h5 mb-2"> ${pharmacy.dutyName}</h3>
                  <ul class="list-unstyled d-flex flex-wrap fs-sm">
                    <li class="me-2 mb-1 pe-1">
                      <i class="fi-star-filled mt-n1 me-1 text-warning align-middle opacity-70"></i>
                      <!--=========== 리뷰 별점 넣는 곳 ========-->
                      <b>${pharmacy.star} </b>(${pharmacy.reviews})</li>
                    <!-- <li class="me-2 mb-1 pe-1">
                      <i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li> -->
                      <!--===================================== 약국 분류 넣는 곳 =============================================-->
                    <li class="me-2 mb-1 pe-1">
                      <i class="fi-globe mt-n1 me-1 align-middle opacity-70"></i>약국</li>
                  </ul>
                </div>
              </div>
              <!--========================================  약국 정보 입력 란 별 다른일 없음 href="#" 삭제=========================================-->
              <!-- Place contacts-->
              <div class="mb-3 pb-3 border-bottom">
                <h4 class="h5 mb-2">약국 정보:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start" href="#">
                    <i class="fi-map-pin mt-1 me-2 align-middle opacity-70"></i><c:out value="${pharmacy.dutyAddr} "/></a>
                  </li>
                  <!-- 전화번호 -->
                  <li class="nav-item mb-2">
                    <a class="nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start" href="tel:<c:out value="${pharmacy.dutyTel1}"/>">
                      <i class="fi-phone mt-1 me-2 align-middle opacity-70"></i><c:out value="${pharmacy.dutyTel1}"/></a>
                    </li>
                </ul>
              </div>

              <!-- 즐겨찾기 -->
              <div class="mb-3 pb-3 border-bottom">
                <table class="styled-table" style="margin: 0% auto;">
                  <tbody>
                    <td>
                      <h4 class="h5 mb-2" >즐겨찾기 </h4>
                    </td>
                    <td style="text-align: right;">
                      <a class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100" href="#">WISHLIST<i class="fi-heart fs-sm ms-2"></i></a>
                    </td>
                  </tbody>
                </table>
              </div>

              <div class="mb-3 pb-0">
                <h4 class="h5 mb-2">운영 시간:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2">
                    <a class="nav-link p-0 fw-normal d-flex align-items-start" href="#">
                    <i class="fi-calendar mt-1 me-2 align-middle opacity-70"></i>세부일정은 약국에 전화 문의바랍니다.</a>
                  </li>
                </ul>

<!-- ==================================================================== 시간표 ===================================================================== -->                
                <!-- table css 적용해놨음 -->
                <!-- table css 적용해놨음 -->
                <table class="styled-table" style="margin-left:auto;margin-right:auto;">
                  <tbody>
                      <tr class="active-row">
                          <td>월요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime1s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime1s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime1s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime1c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime1c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime1c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>화요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime2s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime2s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime2s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime2c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime2c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime2c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>수요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime3s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime3s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime3s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime3c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime3c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime3c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>목요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime4s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime4s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime4s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime4c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime4c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime4c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>금요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime5s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime5s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime5s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime5c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime5c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime5c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>토요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime6s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime6s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime6s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime6c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime6c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime6c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      <tr class="active-row">
                          <td>일요일</td>
                          <td>
	                          <c:if test="${pharmacy.dutyTime7s eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime7s ne '-'}">
	                          	<c:set var="start" value="${pharmacy.dutyTime7s}"/>
	                          	${fn:substring(start, 0, 2)} : ${fn:substring(start, 2, 4)}
	                          </c:if>
	                          &emsp;&emsp; ― &emsp;&emsp;
	                          <c:if test="${pharmacy.dutyTime7c eq '-'}">
	                          	정보없음
	                          </c:if>
	                          <c:if test="${pharmacy.dutyTime7c ne '-'}">
	                          	<c:set var="end" value="${pharmacy.dutyTime7c}"/>
	                          	${fn:substring(end, 0, 2)} : ${fn:substring(end, 2, 4)}
	                          </c:if>
                          </td>
                      </tr>
                      
                  </tbody>
              </table>
              </div>
            </div>
          </div>
        </aside>
      </div>
    </section>

    <!--===================================================리뷰 추가==================================================-->
    <!-- Post content-->
    <section class="container mb-5 pb-1">
      <div class="row">
        <div class="col-md-7 mb-md-0 mb-4">

          <!-- Reviews-->
          <div class="mb-4 pb-4 border-bottom">
            <h3 class="h4 pb-3"><i class="fi-star-filled mt-n1 me-2 lead align-middle text-warning"></i><c:out value="${pharmacy.star}"/> (${pharmacy.reviews } reviews)
            </h3>
            <div
              class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch justify-content-between">
              <a class="btn btn-outline-primary mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal"><i
                  class="fi-edit me-1"></i>리뷰 쓰기</a>
              <!-- <div class="d-flex align-items-center ms-sm-4">
                <label class="me-2 pe-1 text-nowrap" for="reviews-sorting"><i
                    class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                <select class="form-select" id="reviews-sorting">
                  <option>Newest</option>
                  <option>Oldest</option>
                  <option>Popular</option>
                  <option>High rating</option>
                  <option>Low rating</option>
                </select>
              </div> -->
            </div>
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


        <!--================================================= 근처 병원 ====================================================-->
        <!-- Recently viewed-->
        <section class="container pb-5 mb-lg-4">
          <div class="d-flex align-items-center justify-content-between mb-4 pb-2" style="margin-top: 3%;">
            <h2 class="h3 mb-0">근처 병원</h2><a class="btn btn-link fw-normal ms-sm-3 p-0" href="${path}/search/hospital">더 보기<i class="fi-arrow-long-right ms-2"></i></a>
          </div>
          <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
            <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
            	<c:forEach var="hospital" items="${hospitalList}" varStatus="status">
	              <!-- Item-->
	              <div>
	                <div class="position-relative">
	                  <div class="position-relative mb-3">
	                    <button
	                      class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
	                      type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
	                      <i class="fi-heart"></i>
	                    </button>
	                    <img class="rounded-3" src="${path}/resources/img/medisearch/hp/hp${status.count}.jpg" alt="병원">
	                  </div>
	                  <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="${path}/search/hospitalInfo?hpid=${hospital.hpid}&i=${status.count}">${hospital.dutyName}</a></h3>
	                  <ul class="list-inline mb-0 fs-xs">
	                    <li class="list-inline-item pe-1"><i
	                        class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>${hospital.star}</b><span
	                        class="text-muted">&nbsp;(${hospital.reviews})</span></li>
	                    <li class="list-inline-item pe-1">
	                      <!-- <i class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li> -->
	                    <li class="list-inline-item pe-1">
	                      <i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${hospital.dutyAddr}</li>
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
  </script> 
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

<!-- ===============================================카카오 지도 API=============================================== -->
