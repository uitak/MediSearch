<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 약국 검색" />
</jsp:include>

	<script src="${path}/resources/js/address.js"></script>


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
                <form class="form-group mb-lg-2 rounded-pill">
                  <div class="input-group"><span class="input-group-text text-muted"><i class="fi-search"></i></span>
                    <input class="form-control" type="text" id="btn-search" placeholder="Search...">
                  </div>
                  <button class="btn btn-primary rounded-pill d-lg-inline-block d-none" type="button" onclick="SearchAction()">Search</button>
                  <button class="btn btn-icon btn-primary rounded-circle flex-shrink-0 d-lg-none d-inline-flex" type="button"><i class="fi-search mt-n2"></i></button>
                </form>
              </div>
              <!-- Nav tabs-->
              <div class="offcanvas-header d-block border-bottom py-lg-4 py-3 px-lg-0">
                <ul class="nav nav-pills" role="tablist">
                  <li class="nav-item"><a class="nav-link d-flex align-items-center active" href="#filters" data-bs-toggle="tab" role="tab"><i class="fi-filter-alt-horizontal me-2"></i>Filters</a></li>
                </ul>
              </div>
              <div class="offcanvas-body py-lg-4">
                <!-- Tabs content-->
                <div class="tab-content">
                  <!-- Filters-->
                  <form id="frm-reset">
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
                
                    <div class="border-top py-4">
                      <button class="btn btn-outline-primary rounded-pill" type="reset" onclick="resetfilters()"><i class="fi-rotate-right me-2"></i>Reset filters</button>
                    </div>
                  </div>
                </form>
                </div>
              </div>
            </div>
          </aside>




          <!-- Page content-->
          <div class="col-lg-8 col-xl-9 position-relative overflow-hidden pb-5 pt-4 px-3 px-xl-4 px-xxl-5">
            <!-- Map popup-->
            <div class="map-popup invisible" id="map">
              <button class="btn btn-icon btn-light btn-sm shadow-sm rounded-circle" type="button" data-bs-toggle-class="invisible" data-bs-target="#map"><i class="fi-x fs-xs"></i></button>
              <div class="interactive-map" data-map-options-json="json/map-options-city-guide.json"></div>
            </div>
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
                <select class="form-select form-select-sm" id="sortby">
                  <option>가나다순</option>
                  <option>거리순</option>
                  <option>별점순</option>
                </select>
              </div>
              <hr class="d-none d-sm-block w-100 mx-4">
              <div class="d-none d-sm-flex align-items-center flex-shrink-0 text-muted"><i class="fi-check-circle me-2"></i><span class="fs-sm mt-n1">148 results</span></div>
            </div>



            <!-- Catalog grid-->
            <!------------------------ DB ------------------------->
            <div class="row row-cols-xl-3 row-cols-sm-2 row-cols-1 gy-4 gx-3 gx-xxl-4 py-4">
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <!------------------------ script (Add to Favorites)------------------------->
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp23.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <!------------------------ DB ------------------------->
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="city-guide-single.html">다온 약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>대전광역시 동구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp24.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">매일여는온누리약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.7</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>대전광역시 동구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp25.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">잠실미소약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp26.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">환승센터약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp27.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp28.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp29.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp19.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp20.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp21.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp22.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
              <!-- Item-->
              <div class="col pb-sm-2">
                <article class="position-relative">
                  <div class="position-relative mb-3">
                    <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites"><i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/hospital/hp23.jpg" alt="Article img" width="900px" height="200px">
                  </div>
                  <h3 class="mb-2 fs-lg" ><a class="nav-link stretched-link" href="#">고려대학교 안암병원</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 성북구</li>
                  </ul>
                </article>
              </div>
            </div>


            <!-- Pagination-->
            <!------------------------ script ------------------------->
            <nav class="border-top pb-md-4 pt-4" aria-label="Pagination">
              <ul class="pagination mb-1">
                <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
                <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
                <li class="page-item d-none d-sm-block">...</li>
                <li class="page-item d-none d-sm-block"><a class="page-link" href="#">8</a></li>
                <li class="page-item"><a class="page-link" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </main>
       
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

