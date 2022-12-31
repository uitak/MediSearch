<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 약국 검색" />
</jsp:include>

	<script src="${path}/resources/js/address.js"></script>

	<form  action="${path}/search/pharmacy" method="GET">

      <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="0.5" style="height: 500px;"><span class="img-overlay bg-transparent opacity-100" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/hospital/ph01.jpg); height: 500px;"></div>
        <div class="content-overlay container py-md-5">
          <div class="mt-5 mb-md-5 py-5">
            <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 text-center">
              <h1 class="display-5 text-light mt-sm-5 my-4">약국 검색<span class="dropdown d-inline-block ms-2"><span class="dropdown-menu dropdown-menu-end my-1"><a class="dropdown-item fs-base fw-bold" href="#">Hamburg</a><a class="dropdown-item fs-base fw-bold" href="#">Munich</a><a class="dropdown-item fs-base fw-bold" href="#">Frankfurt am Main</a><a class="dropdown-item fs-base fw-bold" href="#">Stuttgart</a><a class="dropdown-item fs-base fw-bold" href="#">Cologne</a></span></span></h1>
              <p class="fs-lg text-white">Search the pharmacy. <br>Find the pharmacy you want with Medisearch</p>
            </div>
            <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
              <!-- Search form-->
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
                
                    <div class="border-top py-4">
                      <button class="btn btn-outline-primary rounded-pill" type="reset" onclick="resetfilters()"><i class="fi-rotate-right me-2"></i>Reset filters</button>
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
                <li class="breadcrumb-item active" aria-current="page">약국 찾기</li>
              </ol>
            </nav>
            <!-- Title-->
            <div class="d-sm-flex align-items-center justify-content-between pb-3 pb-sm-4">
              <h1 class="h2 mb-sm-0">약국 찾기</h1>
            </div>
            <!-- Sorting-->
            <!-- -------------------------------------- script ---------------------------------------------- -->
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
            <!------------------------ DB ------------------------->
            <div class="row row-cols-xl-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-xxl-4 py-4">
            
				<c:if test="${empty list}">
					<h3>검색 결과가 없습니다.</h3>
				</c:if>
				<c:if test="${not empty list}">
					<c:set var="i" value="${pageInfo.currentPage}"/>
					<c:forEach var="pharmacy" items="${list}">
						<c:if test="${i+0 > 24}">
		            		<c:set var="i" value="1"/>
	            		</c:if>
						<!-- Item-->
						<div class="col pb-sm-2">
						  <article class="position-relative">
						    <div class="position-relative mb-3">
						      <!------------------------ script (Add to Favorites)------------------------->
						      <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="즐겨찾기"><i class="fi-heart"></i></button>
						      <img class="rounded-3" src="${path}/resources/img/medisearch/ph/ph${i}.jpg" alt="Article img" width="900px" height="200px">
						    </div>
						    <!------------------------ DB ------------------------->
						    <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="${path}/search/pharmacyInfo?no=${pharmacy.pharmacyNo}&i=${i}">${pharmacy.dutyName}</a></h3>
						    <ul class="list-inline mb-0 fs-xs">
						      <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>${pharmacy.star}</b><span class="text-muted">&nbsp;(${pharmacy.reviews})</span></li>
						      <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>${pharmacy.dutyAddr}</li>
						    </ul>
						  </article>
						</div>
					      <c:set var="i" value="${i+2}"/>
					</c:forEach>
				</c:if>
            
          </div>
           <!-- Pagination-->
           <!------------------------ script ------------------------->
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
// 			const urlParams = new URL(location.href).searchParams;
			var city = url.searchParams.get('city');
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

