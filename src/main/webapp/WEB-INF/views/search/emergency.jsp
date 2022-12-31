<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 응급실 검색" />
</jsp:include>

	<script src="${path}/resources/js/address2.js"></script>

      <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="0.5" style="height: 500px;"><span class="img-overlay bg-transparent opacity-100" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/hospital/er01.jpg); height: 500px;"></div>
        <div class="content-overlay container py-md-5">
          <div class="mt-5 mb-md-5 py-5">
            <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 text-center">
              <h1 class="display-5 text-light mt-sm-5 my-4">응급실 검색<span class="dropdown d-inline-block ms-2"></span></h1>
              <p class="fs-lg text-white">Search the emergency room. <br>Find the emergency room you want with MediSearch</p>
            </div>
            <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
            </div>
          </div>
        </div>
      </section>

<!-- Search form-->
      <!-- Page content-->
      <!-- Page container-->
      <div class="container-fluid  pt-5 p-0">

        <div class="row g-0 mt-n3">
          <!-- Filters sidebar (Offcanvas on mobile)-->
          <aside class="col-lg-4 col-xl-3 border-top-lg border-end-lg shadow-sm px-3 px-xl-4 px-xxl-5 pt-lg-2">
            <div class="offcanvas offcanvas-start offcanvas-collapse" id="filters-sidebar">
              
              
              
              <!-- Search form-->
              <div class="offcanvas-header d-block border-bottom pt-0 pt-lg-4 px-lg-0">
<!-- 병원명 : 바로 검색 : erName-->
                <form class="form-group mb-lg-2 rounded-pill" id=erName name="erName" method="">
                  <div class="input-group"><span class="input-group-text text-muted"><i class="fi-search"></i></span>
                    <input class="form-control" type="text" id="btn-search" name="erName" placeholder="응급실명으로 찾기">
                  </div>
                  <button class="btn btn-primary rounded-pill d-lg-inline-block d-none" type="submit" onclick="demo1('search/emergencyName.do');">Search</button>
                  <button class="btn btn-icon btn-primary rounded-circle flex-shrink-0 d-lg-none d-inline-flex" type="button"><i class="fi-search mt-n2"></i></button>
                </form>
<!-- 병원명 : 바로 검색 끝 -->
              </div>
<!-- 필터 : 검색결과 보여주기 -->
              
              <div class="offcanvas-body py-lg-4">
                <!-- Tabs content-->
                <div class="tab-content">
<form id="filt" name="filt" method="post">
                  <!-- Filters-->
                  <div class="tab-pane fade show active" id="filters" role="tabpanel">

<!-- -------------------------시/도에 맞춰 구/군이 나타나기------------------------ -->
              <div class="pb-4 mb-2">
                <h3 class="h6">지역</h3>
                <select class="form-select mb-2" name="city" id="city" onchange="itemChange()">
                  <!-- disabled -->
                  <option value="si" selected>-- 시/도 --</option>
                  <option value="seoul" >서울특별시</option>
                  <option value="busan">부산광역시</option>
                  <option value="daegu">대구광역시</option>
                  <option value="incheon">인천광역시</option>
                  <option value="gwangju">광주광역시</option>
                  <option value="daejun">대전광역시</option>
                  <option value="ulsan">울산광역시</option>
                  <option value="sejong">세종특별자치시</option>
                  <option value="gyeonggi">경기도</option>
                  <option value="gangwon">강원도</option>
                  <option value="chungcheongB">충청북도</option>
                  <option value="chungcheongN">충청남도</option>
                  <option value="jeollanB">전라북도</option>
                  <option value="jeollanN">전라남도</option>
                  <option value="gyeongsangB">경상북도</option>
                  <option value="gyeongsangN">경상남도</option>
                  <option value="jeju">제주특별자치도</option>
                </select>



<!--------------------------------------변경 부분 jsp-------------------------------------------->
                  <select class="form-select" id="gu" name="gu">
                    <option value="" selected>-- 구/군 --</option>
                  </select>
              </div>

<!-- 가용병상/중증질환수용가능 정보 -->
                    <div class="pb-4 mb-2">
                      <h3 class="h6">가용병상/중증질환 수용 가능 정보</h3>
                      <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 11rem;">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="hotel" name="acceptable" value="MkioskTy25">
                          <label class="form-check-label fs-sm" for="hotel">응급실</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="hostel" name="acceptable" value="hpopyn">
                          <label class="form-check-label fs-sm" for="hostel">수술실</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="motel" name="acceptable" value="hv2">
                          <label class="form-check-label fs-sm" for="motel">내과 중환자실</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="apartment" name="acceptable" value="hv3">
                          <label class="form-check-label fs-sm" for="apartment">외과 중환자실</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="cottage" name="acceptable" value="hv6">
                          <label class="form-check-label fs-sm" for="cottage">신경외과 중환자실</label>
                        </div>
                      </div>
                    </div>

<!-- 시설 가용 여부 -->
                    <div class="pb-4 mb-2">
                      <h3 class="h6">시설 가용 여부</h3>
                      <div class="overflow-auto" data-simplebar data-simplebar-auto-hide="false" style="height: 11rem;">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="parking" name="available" value="hvctayn">
                          <label class="form-check-label fs-sm" for="parking">CT</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="restaurant" name="available" value="hvmriayn">
                          <label class="form-check-label fs-sm" for="restaurant">MRI</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="pet-friendly" name="available" value="hvangioayn">
                          <label class="form-check-label fs-sm" for="pet-friendly">조영 촬영기</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="room-service" name="available" value="hvventiayn">
                          <label class="form-check-label fs-sm" for="room-service">인공호흡기</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" id="fitness-center" name="available" value="hvamyn">
                          <label class="form-check-label fs-sm" for="fitness-center">구급차</label>
                        </div>
                      </div>
                    </div>
                    <div class="border-top py-4" style="display:flex; justify-content: space-around;">
                      <button class="btn btn-outline-primary rounded-pill" type="submit" onclick="demo('search/emergencyMap.do');"><i class="fi-filter-alt-horizontal me-2"></i>filter</button>
                      <button class="btn btn-outline-primary rounded-pill" type="reset" onclick="resetfilters()"><i class="fi-rotate-right me-2"></i>Reset</button>
                    </div>
                  </div>
</form>
<!-- 시설 가용 여부 끝 -->
                </div>
              </div>
            </div>
</aside>

          
<!-- Page content-->
          <div class="col-lg-8 col-xl-9 position-relative overflow-hidden pb-5 pt-4 px-3 px-xl-4 px-xxl-5">
            <!-- Map popup-->
            <div class="map-popup invisible" id="map">
              <button class="btn btn-icon btn-light btn-sm shadow-sm rounded-circle" type="button" data-bs-toggle-class="invisible" data-bs-target="#map"><i class="fi-x fs-xs"></i></button>
            </div>
            <!-- Breadcrumb-->
            <nav class="mb-3 pt-md-2" aria-label="Breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="${path}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">응급실 찾기</li>
              </ol>
            </nav>
            <!-- Title-->
            <div class="d-sm-flex align-items-center justify-content-between pb-3 pb-sm-4">
              <h1 class="h2 mb-sm-0">응급실 찾기</h1>
            </div>
            <!-- Sorting-->
            <div class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch my-2">
              <div class="d-flex align-items-center flex-shrink-0">
                <label class="fs-sm me-2 pe-1 text-nowrap" for="sortby"><i class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                <select class="form-select form-select-sm" id="sortby">
                  <option selected>가나다순</option>
                  <option>거리순</option>
                  <option>별점순</option>
                </select>
              </div>
              <hr class="d-none d-sm-block w-100 mx-4">
              <div class="d-none d-sm-flex align-items-center flex-shrink-0 text-muted"><i class="fi-check-circle me-2"></i><span class="fs-sm mt-n1">${count} results</span></div>
            </div>
<!-- Catalog grid-->
  <div class="row row-cols-xl-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-xxl-4 py-4">
    <!-- Item : test -->
		<c:if test="${not empty list}">
			<c:forEach var="v" items="${list}">
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/${v.hospitalImg}" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" onclick="movePage('${path}/search/emergencyInfo.do?hpid=${v.hpid}&img=${v.hospitalImg}');">${v.dutyName}</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${v.dutyAddr}</li>
                    <li class="list-inline-item pe-1"><i class="fi-apartment mt-n1 me-1 fs-base text-muted align-middle"></i>${v.dutyDivNam}</li>
                  </ul>
                </article>
              </div>
			</c:forEach>
		</c:if>
      </div> 
  <!-- 페이지 -->
            <!-- Pagination-->
            <nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
             <ul class="pagination mb-1" style="width: 238px; margin: 0px auto;">
               <li class="page-item"><a class="page-link" onclick="movePage('${path}/search/emergency.do?page=1');" aria-label="PrevL"><i class="fi-chevrons-left"></i></a></li>
               <li class="page-item"><a class="page-link" onclick="movePage('${path}/search/emergency.do?page=${pageInfo.prevPage}');" aria-label="Prev"><i class="fi-chevron-left"></i></a></li>
				<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
					<c:if test="${status.current == pageInfo.currentPage}">
						<li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">${status.current}<span class="visually-hidden">(current)</span></span></li>
					</c:if>
					<c:if test="${status.current != pageInfo.currentPage}">
						<li class="page-item d-none d-sm-block"><a class="page-link" onclick="movePage('${path}/search/emergency.do?page=${status.current}');">${status.current}</a></li>
					</c:if>
				</c:forEach>
               <li class="page-item"><a class="page-link" onclick="movePage('${path}/search/emergency.do?page=${pageInfo.nextPage}');" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
               <li class="page-item"><a class="page-link" onclick="movePage('${path}/search/emergency.do?page=${pageInfo.maxPage}');" aria-label="NextL"><i class="fi-chevrons-right"></i></a></li>
             </ul>
           </nav>
        </div>
      </div>
    </main>

<script>
	function demo(url) {
		$("#filt").attr("action", "${path}/" + url);
		$("#filt").submit();
	}
	function demo1(url) {
		$("#erName").attr("action", "${path}/" + url);
		$("#erName").submit();
	}
</script>
<script type="text/javascript">
    	$("#city").change(function() {
			if($("#city").val() != "시도" ) {
				var searchCity = $("#city").val();
				var searchTown = $("#gu").val();
				$("#searchCity").attr("value", searchCity);
				$("#searchTown").attr("value", searchTown);
			}
    		
    	});
    	
		$("#gu").change(function() {
			var searchTown = $("#gu").val();
			$("#searchTown").attr("value", searchTown);
		});
    	
	    function movePage(pageUrl){
			location.href = encodeURI(pageUrl);	
		};
</script>
<script type="text/javascript">
	
</script>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
