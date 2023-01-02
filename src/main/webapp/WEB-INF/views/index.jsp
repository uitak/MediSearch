<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- 카카오 지도 map css -->
<link href="${path}/resources/css/map.css" rel="stylesheet">


      <!-- Page content-->
      <!-- Hero-->
      <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="0.5"><span class="img-overlay bg-transparent opacity-100" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/medisearch/header/header8.jpg);"></div>
        <div class="content-overlay container py-md-5">
          <div class="mt-5 mb-md-5 py-5">
            <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 text-center">
              <h1 class="display-5 text-light mt-sm-5 my-4" style="font-size: 4rem;">MEDI<span class="d-inline-block ms-2" style="color: #fd5631;"> SEARCH</span></h1>
              <div class="d-flex flex-wrap">
              	<a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="${path}/search/emergency.do"><i class="fi-search me-2"></i>Emergency</a>
              	<a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="${path}/search/holiday"><i class="fi-search me-2"></i>Holiday Clinic</a>
              	<a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="${path}/search/hospital"><i class="fi-search me-2"></i>Hosptial</a>
              	<a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="${path}/search/pharmacy"><i class="fi-search me-2"></i>Pharmacy</a>
              	<a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="${path}/search/pill"><i class="fi-search me-2"></i>Medicine</a></div>
              <p class="fs-lg text-white"> | MEDICAL INFORMATION RETRIEVAL</p>
            </div>

            <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
              <!-- Search form-->
              <form method="get" action="${path}/search/emergencyMap2.do" class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-5">   
                      <div class="d-sm-flex">
                        <div class="dropdown w-100 mb-sm-0 mb-3" data-bs-toggle="select">
                          <button class="btn btn-link btn-lg dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">중환자분류</span></button>
                          <input type="hidden" id="patientClassification" name="patientClassification" value=null>
                          <ul id="menu" class="dropdown-menu">
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">신경중환자</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">신생중환자</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">흉부중환자</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">일반중환자</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">약물중환자</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">화상중환자</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr1();"><span class="dropdown-item-label">외상중환자</span></a></li>
                          </ul>
                        </div>
                      </div>
                    
                      <hr class="d-md-none my-2">
                      <div class="d-sm-flex">
                        <div class="dropdown w-100 mb-sm-0 mb-3" data-bs-toggle="select">
                          <button class="btn btn-link btn-lg dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">진료 과목</span></button>
                          <input type="hidden" id="department" name="department" value=null>
                          <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr2();"><span class="dropdown-item-label">내과</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr2();"><span class="dropdown-item-label">외과</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr2();"><span class="dropdown-item-label">신경외과</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr2();"><span class="dropdown-item-label">신경과</span></a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);" onclick="changeAttr2();"><span class="dropdown-item-label">소아과</span></a></li>
                          </ul>
                        </div>
                      </div>
                      &nbsp;&nbsp;
                      <div class="input-group input-group-lg">
                        
                        <input type="checkbox" id="available" name="available" value="hvctayn">&nbsp;CT&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" id="available" name="available" value="hvmriayn">&nbsp;MRI&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" id="available" name="available" value="hvangioayn">&nbsp;조영촬영기&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" id="available" name="available" value="hvventiayn">&nbsp;인공호흡기&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" id="available" name="available" value="hvamyn">&nbsp;구급차&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" id="available" name="available" value="hv11">&nbsp;인큐베이터
                      </div>
                      <button class="btn btn-primary btn-lg rounded-pill" type="submit">Search</button>
                  </form>
                </div>
            </div>
          </div>
        <div class="position-absolute d-none d-xxl-block bottom-0 start-0 w-100 bg-white zindex-1" style="border-top-left-radius: 30px; border-top-right-radius: 30px; height: 30px;"></div>
      </section>

   
      <section class="container py-5 pt-xxl-4 mt-md-2 md-4">
        <div class="row row-cols-lg-5 row-cols-sm-3 row-cols-2 g-3 g-xl-4">
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="${path}/search/emergency.do">
              <div class="icon-box-media bg-faded-accent text-accent rounded-circle mb-3 mx-auto"><i class="fi-car"></i></div>
              <h3 class="icon-box-title fs-base mb-0">응급실</h3></a>
          </div>
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="${path}/search/holiday">
              <div class="icon-box-media bg-faded-warning text-warning rounded-circle mb-3 mx-auto"><i class="fi-calendar"></i></div>
              <h3 class="icon-box-title fs-base mb-0">공휴일진료기관</h3></a>
          </div>
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="${path}/search/pharmacy">
              <div class="icon-box-media bg-faded-primary text-primary rounded-circle mb-3 mx-auto"><i class="fi-museum"></i></div>
              <h3 class="icon-box-title fs-base mb-0">약국</h3></a>
          </div>
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="${path}/search/pill">
              <div class="icon-box-media bg-faded-success text-success rounded-circle mb-3 mx-auto"><i class="fi-meds"></i></div>
              <h3 class="icon-box-title fs-base mb-0">의약품</h3></a>
          </div>
          <div class="dropdown h-100">
          	<a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="${path}/board/communityList">
                <div class="icon-box-media bg-faded-info text-info rounded-circle mb-3 mx-auto"><i class="fi-chat-circle"></i></div>
                <h3 class="icon-box-title fs-base mb-0">커뮤니티</h3></a>
          </div>
        </div>
      </section>
      <!-- 병원찾기 -->
      <section class="container pb-lg-4">
        <div class="d-sm-flex align-items-center justify-content-between mb-2 pb-2">
          <h2 class="h3 mb-sm-0" style="font-size: 1.8rem;">내 주변 병원</h2>
          <a class="btn btn-link fw-normal ms-sm-3 p-0" href="${path}/search/hospital">더보기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside">
          <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
	          
	          <c:if test="${not empty hpList}">
	          	<c:forEach var="hospital" items="${hpList}" varStatus="status">
	          		<!-- Item-->
		            <div>
		              <div class="position-relative">
		                <div class="position-relative mb-3">
		                  <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites">
		                    <i class="fi-heart"></i>
		                  </button><img class="rounded-3" src="${path}/resources/img/medisearch/hp/hp${status.count}.jpg" alt="Image">
		                </div>
		                <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="${path}/search/hospitalInfo?hpid=${hospital.hpid}&i=${status.count}">${hospital.dutyName}</a></h3>
		                <ul class="list-inline mb-0 fs-xs">
		                  <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>${hospital.star}</b><span class="text-muted">&nbsp;(${hospital.reviews})</span></li>
		                  <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>약 ${hospital.distance} m</li>
		                </ul>
		              </div>
		            </div>
	          	</c:forEach>
	          </c:if>
	          
          </div>
        </div>
      </section>
      
      
      <!-- 지도 -->
      <section class="container pt-lg-4 pb-lg-4 mb-3">
        <div class="d-sm-flex align-items-center justify-content-between pb-2">
          <h2 class="h3 mb-sm-0" style="font-size: 1.8rem; margin-top: 0px;">지도</h2>
        </div>
                
		<div class="map_wrap">
		    <div id="map" style="width:100%; height:100%; position:relative;overflow:hidden; border:1; box-shadow: 0px 0px 10px rgb(194, 194, 194); border-radius: 20px;"></div>
		    <ul id="category">
		        <li id="HP8" data-order="2"> 
		            <span class="category_bg pharmacy"></span>
		            병원
		        </li>      
		        <li id="PM9" data-order="4"> 
		            <span class="category_bg cafe"></span>
		            약국
		        </li>  
		    </ul>
		</div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=de43de051b10f18cf420b0e4cf8140a1&libraries=services"></script>
		<script>
			var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
			    contentNode = document.createElement('div'), 
			    markers = [], 
			    currCategory = ''; 
			 
			var mapContainer = document.getElementById('map'), 
			    mapOption = {
			        center: new kakao.maps.LatLng(37.5662952, 126.9779451), 
			        level: 5 
			    };  
			
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			if (navigator.geolocation) {
			    
			    navigator.geolocation.getCurrentPosition(function(position) {
			        
			        var lat = position.coords.latitude, // 위도
			            lon = position.coords.longitude; // 경도
			        
			        var locPosition = new kakao.maps.LatLng(lat, lon), 
			            message = '<div style="padding:5px;">여기에 계신가요?!<br>병원과 약국 버튼을 눌러보세요!<br>우리동네 병원/약국을 한눈에&nbps</div>'; // 인포윈도우에 표시될 내용입니다
			        
			        displayMarker(locPosition, message);
			            
			      });
			    
			} else { 
			    
			    var locPosition = new kakao.maps.LatLng(37.5662952, 126.9779451),    
			        message = 'geolocation을 사용할수 없어요..'
			        
			    displayMarker(locPosition, message);
			}
			
			function displayMarker(locPosition, message) {
			
			    var marker = new kakao.maps.Marker({  
			        map: map, 
			        position: locPosition
			    }); 
			    
			    var iwContent = message, 
			        iwRemoveable = true;
			
			    var infowindow = new kakao.maps.InfoWindow({
			        content : iwContent,
			        removable : iwRemoveable
			    });
			    
			    infowindow.open(map, marker);
			    
			    map.setCenter(locPosition);      
			}    
			
			var ps = new kakao.maps.services.Places(map); 
			
			kakao.maps.event.addListener(map, 'idle', searchPlaces);
			
			contentNode.className = 'placeinfo_wrap';
			
			addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
			addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
			
			placeOverlay.setContent(contentNode);  
			
			addCategoryClickEvent();
			
			function addEventHandle(target, type, callback) {
			    if (target.addEventListener) {
			        target.addEventListener(type, callback);
			    } else {
			        target.attachEvent('on' + type, callback);
			    }
			}
			
			function searchPlaces() {
			    if (!currCategory) {
			        return;
			    }
			    
			    placeOverlay.setMap(null);
			
			    removeMarker();
			    
			    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
			}
			
			function placesSearchCB(data, status, pagination) {
			    if (status === kakao.maps.services.Status.OK) {
			
			        displayPlaces(data);
			    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
			
			    } else if (status === kakao.maps.services.Status.ERROR) {
			        
			    }
			}
			
			function displayPlaces(places) {
			
			    var order = document.getElementById(currCategory).getAttribute('data-order');
			
			    for ( var i=0; i<places.length; i++ ) {
			
			            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
			
			            (function(marker, place) {
			                kakao.maps.event.addListener(marker, 'click', function() {
			                    displayPlaceInfo(place);
			                });
			            })(marker, places[i]);
			    }
			}
			
			function addMarker(position, order) {
			    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', 
			        imageSize = new kakao.maps.Size(27, 28),  
			        imgOptions =  {
			            spriteSize : new kakao.maps.Size(72, 208), 
			            spriteOrigin : new kakao.maps.Point(46, (order*36)), 
			            offset: new kakao.maps.Point(11, 28) 
			        },
			        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
			            marker = new kakao.maps.Marker({
			            position: position,
			            image: markerImage 
			        });
			
			    marker.setMap(map); 
			    markers.push(marker);  
			
			    return marker;
			}
			
			function removeMarker() {
			    for ( var i = 0; i < markers.length; i++ ) {
			        markers[i].setMap(null);
			    }   
			    markers = [];
			}
			
			function displayPlaceInfo (place) {
			    var content = '<div class="placeinfo">' +
			                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
			
			    if (place.road_address_name) {
			        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
			                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
			    }  else {
			        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
			    }                
			   
			    content += '    <span class="tel">' + place.phone + '</span>' + 
			                '</div>' + 
			                '<div class="after"></div>';
			
			    contentNode.innerHTML = content;
			    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
			    placeOverlay.setMap(map);  
			}
			
			
			function addCategoryClickEvent() {
			    var category = document.getElementById('category'),
			        children = category.children;
			
			    for (var i=0; i<children.length; i++) {
			        children[i].onclick = onClickCategory;
			    }
			}
			
			function onClickCategory() {
			    var id = this.id,
			        className = this.className;
			
			    placeOverlay.setMap(null);
			
			    if (className === 'on') {
			        currCategory = '';
			        changeCategoryClass();
			        removeMarker();
			    } else {
			        currCategory = id;
			        changeCategoryClass(this);
			        searchPlaces();
			    }
			}
			
			function changeCategoryClass(el) {
			    var category = document.getElementById('category'),
			        children = category.children,
			        i;
			
			    for ( i=0; i<children.length; i++ ) {
			        children[i].className = '';
			    }
			
			    if (el) {
			        el.className = 'on';
			    } 
			} 
		</script>
<!-- =======================================================지도======================================================= -->        
	</section>
        
        
        
        
        

      <!-- 응급실 / 공휴일진료기관 -->
      <section class="container mb-3">
        <div class="row gallery">
          <div class="col-md-7 mt-3">
            <div class="d-flex align-items-center justify-content-between mb-3">
              <h2 class="h3 mb-0" style="font-size: 1.8rem;">내 주변 응급실</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="${path}/search/emergency.do">더보기<i class="fi-arrow-long-right ms-2"></i></a>
            </div>
            <div class="row">
            
            	<c:if test="${not empty emList}">
            		<c:forEach var="emergency" items="${emList}" varStatus="status">
						<div class="col-sm-6 mb-3">
						  <article class="card border-0 shadow-sm card-hover card-horizontal" style=" margin-bottom: 33px;">
						    <a class="card-img-top custom" href="${path}/search/emergencyInfo.do?hpid=${emergency.hpid}&img=resources/img/medisearch/hp/hp${status.count}.jpg" style="background-image: url(${path}/resources/img/medisearch/hp/hp${status.count}.jpg);"></a>
						    <div class="card-body py-3 ps-2 pe-0">
						      <a class="fs-xs text-decoration-none">약 ${emergency.distance} M</a>
						      <h3 class="fs-base pt-1 mb-1">
						        <a class="nav-link custom-font fw-normal fs-sm" href="${path}/search/emergencyInfo.do?hpid=${emergency.hpid}&img=resources/img/medisearch/hp/hp${status.count}.jpg">${emergency.dutyName}</a>
						      </h3>
						      <span class="fi-map-pin"></span>
						      <span class="fs-sm text-muted fs-xs" style="color: black;">${emergency.dutyAddr}</span><br>
						      <c:if test="${emergency.dutyTel3 == '-'}">
							      <span><i class="fi-phone me-1" style="font-weight:900;"></i> ${emergency.dutyTel1}</span>
						      </c:if>
						      <c:if test="${emergency.dutyTel3 != '-'}">
							      <span><i class="fi-phone me-1" style="font-weight:900;"></i> &nbsp;${emergency.dutyTel3}</span>
						      </c:if>
						    </div>
						  </article>
						</div>
            		</c:forEach>
            	</c:if>
            	
            </div>
          </div>
          <div class="col-md-5 mt-3">
            <div class="d-flex align-items-center justify-content-between mb-3">
              <h2 class="h3 mb-0" style="font-size: 1.8rem;">공휴일 진료기관</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="${path}/search/holiday">더보기<i class="fi-arrow-long-right ms-2"></i></a>
            </div>
            <!-- Basic table -->
            <div class="table-responsive" style="border:1; box-shadow: 0px 0px 10px #d3d3d3; border-radius: 20px;">
              <table class="table table-striped table-mb">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>거리</th>
                    <th>기관 분류</th>
                    <th>이름</th>
                    <th>운영 상황</th>
                  </tr>
                </thead>
                <tbody>
                
                	<c:if test="${not empty hdList}">
                		<c:forEach var="holiday" items="${hdList}" varStatus="status">
							<tr>
							  <th scope="row">${status.count}</th>
							  <td class="fs-sm">약 ${holiday.distance}m</td>
							  <td class="fs-sm">${holiday.dutyDivNam}</td>
							  <td class="fs-xs">${holiday.dutyName}</td>
							  <c:if test="${holiday.dutyDivNam != '약국'}">
								  <td class="fs-sm">진료중</td>
							  </c:if>
							  <c:if test="${holiday.dutyDivNam == '약국'}">
								  <td class="fs-sm">운영중</td>
							  </c:if>
							</tr>
                		</c:forEach>
                	</c:if>
                	
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </section>
      
      <!-- 약국 -->
      <section class="container-xxl mb-5">
        <div class="d-flex align-items-center justify-content-between mb-2">
          <h2 class="h3 mb-0" style="margin-top:30px;" style="font-size: 1.8rem;">내 주변 약국</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="${path}/search/pharmacy">더보기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="row md-3">
          <!-- Image on top -->
          <c:if test="${not empty phList}">
          	<c:forEach var="pharmacy" items="${phList}" varStatus="status">
				<div class="col-lg-3">
				  <div class="card shadow-sm">
				    <img src="${path}/resources/img/medisearch/ph/ph${status.count}.jpg" class="card-img-top" alt="Card image">
				    <div class="card-body">
				      <h5 class="card-title fs-6 fw-normal">${pharmacy.dutyName}</h5>
				      <span class="fi-map-pin"></span>
				      <span class="card-text fs-sm text-muted fw-light">${pharmacy.dutyAddr}</span>
				      <div class="row justify-content-end px-4">
				        <a href="${path}/search/pharmacyInfo?no=${pharmacy.pharmacyNo}&i=${status.count}" class="btn btn-sm btn-primary" style="max-width:6rem; margin-top:1rem;">상세 정보</a>
				      </div>                
				    </div>
				  </div>
				</div>
          		
          	</c:forEach>
          </c:if>
          
        </div>
      </section>
      <!-- 의약품 -->
      <section class="container overflow-auto mb-5">
        <div class="d-flex align-items-center justify-content-between mb-3">
          <h2 class="h3 mb-0" style="margin-top:30px; font-size: 1.8rem;">의약품</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="${path}/search/pill">더보기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="row g-2 g-md-3 gallery" data-thumbnails="true" style="min-width: 30rem; margin-bottom: 100px;">
          <div class="col-6" style="border-radius: 20px; padding:0px; box-shadow: 0px 0px 10px #d3d3d3;">
            <a class="gallery-item rounded rounded-md-3" href="${path}/search/pill?searchValue=${phillList.get(3).itemName}&searchType=itemName">
            	<img src="${path}/resources/img/medisearch/pill/pill1.jpg">
            </a>
          </div>
          <div class="col-3">
            <span style="display: inline-block; border-radius: 20px; padding:0px; box-shadow: 0px 0px 10px #d3d3d3;">
            	<a class="gallery-item rounded rounded-md-3 mb-md-2" href="${path}/search/pill?searchValue=${phillList.get(0).itemName}&searchType=itemName">
            		<img src="${path}/resources/img/medisearch/pill/pill2.jpg" >
            	</a>
            </span>
            <span style="display: inline-block; border-radius: 20px; padding:0px; box-shadow: 0px 0px 10px #d3d3d3;">
            	<a class="gallery-item rounded rounded-md-3" href="${path}/search/pill?searchValue=${phillList.get(1).itemName}&searchType=itemName">
            		<img src="${path}/resources/img/medisearch/pill/pill3.jpg" >
            	</a>
            </span>
          </div>
          <div class="col-3">
            <span style="display: inline-block; border-radius: 20px; padding:0px; box-shadow: 0px 0px 10px #d3d3d3;">
            	<a class="gallery-item rounded rounded-md-3 mb-md-2" href="${path}/search/pill?searchValue=${phillList.get(4).itemName}&searchType=itemName">
            		<img src="${path}/resources/img/medisearch/pill/pill4.png">
            	</a>
            </span>
            <span style="display: inline-block; border-radius: 20px; padding:0px; box-shadow: 0px 0px 10px #d3d3d3;">
            	<a class="gallery-item rounded rounded-md-3" href="${path}/search/pill?searchValue=${phillList.get(2).itemName}&searchType=itemName">
            		<img src="${path}/resources/img/medisearch/pill/pill5.jpg">
            	</a>
            </span>
          </div>
        </div>
      </section>
    </main>

<!-- 추가 -->
<script>
	function changeAttr1(v) {
		$("#patientClassification").attr("value", v);
	}
	function changeAttr2(v) {
		$("#department").attr("value", v);
	}
</script>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp" />