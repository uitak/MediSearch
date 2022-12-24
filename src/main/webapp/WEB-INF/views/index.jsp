<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp" />

      <!-- Page content-->
      <!-- Hero-->
      <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="0.5"><span class="img-overlay bg-transparent opacity-100" style="background-image: linear-gradient(0deg, rgba(31, 27, 45, .7), rgba(31, 27, 45, .7));"></span>
        <div class="jarallax-img" style="background-image: url(${path}/resources/img/medisearch/header/header8.jpg);"></div>
        <div class="content-overlay container py-md-5">
          <div class="mt-5 mb-md-5 py-5">
            <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 text-center">
              <h1 class="display-5 text-light mt-sm-5 my-4" style="font-size: 4rem;">MEDI<span class="d-inline-block ms-2" style="color: #fd5631;"> SEARCH</span></h1>
              <div class="d-flex flex-wrap"><a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="#"><i class="fi-search me-2"></i>Emergency</a><a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="#"><i class="fi-search me-2"></i>Holiday Clinic</a><a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="#"><i class="fi-search me-2"></i>Hosptial</a><a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="#"><i class="fi-search me-2"></i>Pharmacy</a><a class="btn btn-translucent-light btn-xs rounded-pill fs-sm me-2 mb-2" href="#"><i class="fi-search me-2"></i>Medicine</a></div>
              <p class="fs-lg text-white"> | MEDICAL INFORMATION RETRIEVAL</p>
            </div>

            <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
              <!-- Search form-->
              <form class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-5">
                  <form class="form-group d-block d-md-flex position-relative">
                      <div class="d-sm-flex">
                        <div class="dropdown w-100 mb-sm-0 mb-3" data-bs-toggle="select">
                          <button class="btn btn-link btn-lg dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">중환자분류</span></button>
                          <input type="hidden">
                          <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">신경중환자</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">신생중환자</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">흉부중환자</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">일반중환자</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">약물중환자</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">화상중환자</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">외상중환자</span></a></li>
                          </ul>
                        </div>
                      </div>
                    
                      <hr class="d-md-none my-2">
                      <div class="d-sm-flex">
                        <div class="dropdown w-100 mb-sm-0 mb-3" data-bs-toggle="select">
                          <button class="btn btn-link btn-lg dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><span class="dropdown-toggle-label">진료 과목</span></button>
                          <input type="hidden">
                          <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">내과</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">외과</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">신경외과</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">신경과</span></a></li>
                            <li><a class="dropdown-item" href="#"><span class="dropdown-item-label">소아과</span></a></li>
                          </ul>
                        </div>
                      </div>
                      &nbsp;&nbsp;
                      <div class="input-group input-group-lg">
                        
                        <input type="checkbox" name="available" value="ct">&nbsp;CT&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="available" value="ct">&nbsp;MRI&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="available" value="ct">&nbsp;조영촬영기&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="available" value="ct">&nbsp;인공호흡기&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="available" value="ct">&nbsp;구급차&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="checkbox" name="available" value="ct">&nbsp;인큐베이터
                      </div>
                      <button class="btn btn-primary btn-lg rounded-pill" type="button">Search</button>
                  </form>
                </div>
            </div>
          </div>
        </div>
        <div class="position-absolute d-none d-xxl-block bottom-0 start-0 w-100 bg-white zindex-1" style="border-top-left-radius: 30px; border-top-right-radius: 30px; height: 30px;"></div>
      </section>

   
      <section class="container py-5 pt-xxl-4 mt-md-2 md-4">
        <div class="row row-cols-lg-5 row-cols-sm-3 row-cols-2 g-3 g-xl-4">
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="#">
              <div class="icon-box-media bg-faded-accent text-accent rounded-circle mb-3 mx-auto"><i class="fi-car"></i></div>
              <h3 class="icon-box-title fs-base mb-0">응급실</h3></a>
          </div>
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="#">
              <div class="icon-box-media bg-faded-warning text-warning rounded-circle mb-3 mx-auto"><i class="fi-calendar"></i></div>
              <h3 class="icon-box-title fs-base mb-0">공휴일진료기관</h3></a>
          </div>
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="#">
              <div class="icon-box-media bg-faded-primary text-primary rounded-circle mb-3 mx-auto"><i class="fi-museum"></i></div>
              <h3 class="icon-box-title fs-base mb-0">약국</h3></a>
          </div>
          <div class="col"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="#">
              <div class="icon-box-media bg-faded-success text-success rounded-circle mb-3 mx-auto"><i class="fi-meds"></i></div>
              <h3 class="icon-box-title fs-base mb-0">의약품</h3></a>
          </div>
          <div class="dropdown h-100"><a class="icon-box card card-body h-100 border-0 shadow-sm card-hover text-center" href="#" data-bs-toggle="dropdown">
                <div class="icon-box-media bg-faded-info text-info rounded-circle mb-3 mx-auto"><i class="fi-chat-circle"></i></div>
                <h3 class="icon-box-title fs-base mb-0">커뮤니티</h3></a>
              <div class="dropdown-menu dropdown-menu-end my-1"><a class="dropdown-item fw-bold" href="city-guide-catalog.html"><i class="fs-base opacity-60 me-2"></i>리뷰</a><a class="dropdown-item fw-bold" href="city-guide-catalog.html"><i class="fs-base opacity-60 me-2"></i>질병Q&A</a><a class="dropdown-item fw-bold" href="city-guide-catalog.html"><i class="fs-base opacity-60 me-2"></i>고객센터</a></div>
          </div>
        </div>
      </section>
      <!-- 병원찾기 -->
      <section class="container pb-lg-4">
        <div class="d-sm-flex align-items-center justify-content-between mb-2 pb-2">
          <h2 class="h3 mb-sm-0" style="font-size: 1.8rem;">내 주변 병원</h2>
          <a class="btn btn-link fw-normal ms-sm-3 p-0" href="#">더보기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside">
          <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
            <!-- Item-->
            <div>
              <div class="position-relative">
                <div class="position-relative mb-3">
                  <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites">
                    <i class="fi-heart"></i>
                  </button><img class="rounded-3" src="${path}/resources/img/medisearch/hp/990.jpeg" alt="Image">
                </div>
                <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">부산대학교 병원</a></h3>
                <ul class="list-inline mb-0 fs-xs">
                  <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(48)</span></li>
                  <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>1.4 km</li>
                </ul>
              </div>
            </div>
            <!-- Item-->
            <div>
              <div class="position-relative">
                <div class="position-relative mb-3">
                  <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites">
                    <i class="fi-heart"></i>
                  </button><img class="rounded-3" src="${path}/resources/img/medisearch/hp/991.jpg" alt="Image">
                </div>
                <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">용인 세브란스 병원</a></h3>
                <ul class="list-inline mb-0 fs-xs">
                  <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span class="text-muted">&nbsp;(24)</span></li>
                  <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>0.5 km</li>
                </ul>
              </div>
            </div>
            <!-- Item-->
            <div>
              <div class="position-relative">
                <div class="position-relative mb-3">
                  <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites">
                    <i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/medisearch/hp/992.jpg" alt="Image">
                </div>
                <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">서울대학교 병원</a></h3>
                <ul class="list-inline mb-0 fs-xs">
                  <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b><span class="text-muted">&nbsp;(43)</span></li>
                  <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>1.8 km</li>
                </ul>
              </div>
            </div>
            <!-- Item-->
            <div>
              <div class="position-relative">
                <div class="position-relative mb-3">
                  <button class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Favorites">
                    <i class="fi-heart"></i></button>
                    <img class="rounded-3" src="${path}/resources/img/medisearch/hp/993.jpg" alt="Image">
                </div>
                <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">캘리포니아 주립 병원</a></h3>
                <ul class="list-inline mb-0 fs-xs">
                  <li class="list-inline-item pe-1"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span class="text-muted">&nbsp;(13)</span></li>
                  <li class="list-inline-item pe-1"><i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>0.4 km</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- 지도 -->
      <section class="container pt-lg-4 pb-lg-4 mb-3">
        <div class="d-sm-flex align-items-center justify-content-between pb-2">
          <h2 class="h3 mb-sm-0"
           style="font-size: 1.8rem; margin-top: 0px;">지도</h2>
        </div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50571.503708807424!2d126.87841757497236!3d37.6087723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9821b2378f7d%3A0x4bc463fe9a7dbd04!2z7ISc7Jq467OR7JuQ!5e0!3m2!1sko!2skr!4v1671269215626!5m2!1sko!2skr" width="600" height="450" style="border:1; box-shadow: 0px 0px 10px rgb(194, 194, 194); border-radius: 20px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </section>

      <!-- 응급실 / 공휴일진료기관 -->
      <section class="container overflow-auto mb-3">
        <div class="row gallery" style="height: 400px;">
          <div class="col-md-7" style="margin-top:30px;">
            <div class="d-flex align-items-center justify-content-between mb-3">
              <h2 class="h3 mb-0" style="font-size: 1.8rem;">내 주변 응급실</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="real-estate-catalog-rent.html">더보기<i class="fi-arrow-long-right ms-2"></i></a>
            </div>
            <div class="row mb-3">
              <div class="col-sm-6">
                <article class="card border-0 shadow-sm card-hover card-horizontal">
                  <a href="#" class="card-img-top custom" style="background-image: url(${path}/resources/img/medisearch/hp/hp01.jpg);"></a>
                  <div class="card-body py-3 px-3">
                    <a href="#" class="fs-xs text-decoration-none">500M</a>
                    <h3 class="fs-base pt-1 mb-2">
                      <a href="#" class="nav-link custom-font fw-normal">분당차병원</a>
                    </h3>
                    <span class="fi-map-pin"></span>
                    <span class="fs-sm text-muted custom-font fw-light">경기 성남시 분당구 야탑로<br>
                    <span><i class="fi-phone me-1"></i> 02-6299-1338</span>
                  </div>
                </article>
              </div>
              <div class="col-sm-6">
                <article class="card border-0 shadow-sm card-hover card-horizontal">
                  <a href="#" class="card-img-top custom" style="background-image: url(${path}/resources/img/medisearch/hp/hp02.jpg);"></a>
                  <div class="card-body py-3 px-3">
                    <a href="#" class="fs-xs text-decoration-none">700M</a>
                    <h3 class="fs-base pt-1 mb-2">
                      <a href="#" class="nav-link fw-normal">강남세브란스병원</a>
                    </h3>
                    <span class="fi-map-pin"></span>
                    <span class="fs-sm text-muted fw-light">서울 강남구 언주로 211<br>
                    <span><i class="fi-phone me-1"></i> 02-709-9117</span>
                  </div>
                </article>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <article class="card border-0 shadow-sm card-hover card-horizontal">
                  <a href="#" class="card-img-top custom" style="background-image: url(${path}/resources/img/medisearch/hp/hp03.jpg);"></a>
                  <div class="card-body py-3 px-3">
                    <a href="#" class="fs-xs text-decoration-none">1.5KM</a>
                    <h3 class="fs-base pt-1 mb-2">
                      <a href="#" class="nav-link fw-normal">서울대학교병원</a>
                    </h3>
                    <span class="fi-map-pin"></span>
                    <span class="fs-sm text-muted fw-light">서울 종로구 대학로 101<br>
                    <span><i class="fi-phone me-1"></i> 02-2650-5911</span>
                  </div>
                </article>
              </div>
              <div class="col-sm-6">
                <article class="card border-0 shadow-sm card-hover card-horizontal">
                  <a href="#" class="card-img-top custom" style="background-image: url(${path}/resources/img/medisearch/hp/hp04.jpg);"></a>
                  <div class="card-body py-3 px-3">
                    <a href="#" class="fs-xs text-decoration-none">1.8KM</a>
                    <h3 class="fs-base pt-1 mb-2">
                      <a href="#" class="nav-link fw-normal">고려대학교안암병원</a>
                    </h3>
                    <span class="fi-map-pin"></span>
                    <span class="fs-sm text-muted fw-light">서울 성북구 고려대로 73<br>
                    <span></span><i class="fi-phone me-1"></i> 02-2001-1009</span>
                  </div>
                </article>
              </div>
            </div>
          </div>
          <div class="col-md-5">
            <div class="d-flex align-items-center justify-content-between mb-3" style="margin-top:30px;">
              <h2 class="h3 mb-0" style="font-size: 1.8rem;">공휴일 진료기관</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="real-estate-catalog-rent.html">더보기<i class="fi-arrow-long-right ms-2"></i></a>
            </div>
            <!-- Basic table -->
            <div class="table-responsive" style="border:1; box-shadow: 0px 0px 10px rgb(221, 221, 221); border-radius: 20px; height: 290px;">
              <table class="table">
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
                  <tr>
                    <th scope="row">1</th>
                    <td>210m</td>
                    <td>병원</td>
                    <td>연세우리내과</td>
                    <td>진료중</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>250m</td>
                    <td>병원</td>
                    <td>365이비인후과</td>
                    <td>잔료중</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>1km</td>
                    <td>약국</td>
                    <td>천사온누리약구</td>
                    <td>운영중</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>1,5km</td>
                    <td>병원</td>
                    <td>밝은눈안과</td>
                    <td>휴게시간</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>1.6km</td>
                    <td>치과</td>
                    <td>일곱색깔치과</td>
                    <td>진료중</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </section>
      
      <!-- 약국 -->
      <section class="container-xxl mb-5">
        <div class="d-flex align-items-center justify-content-between mb-2">
          <h2 class="h3 mb-0" style="margin-top:30px;" style="font-size: 1.8rem;">내 주변 약국</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="real-estate-catalog-rent.html">더보기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="row md-3">
          <div class="col-lg-3">
            <!-- Image on top -->
            <div class="card shadow-sm">
              <img src="${path}/resources/img/medisearch/ph/ph01.jpg" class="card-img-top" alt="Card image">
              <div class="card-body">
                <h5 class="card-title fs-6 fw-normal">다온약국</h5>
                <span class="fi-map-pin"></span>
                <span class="card-text fs-xs text-muted fw-light">대전광역시 동구 계족로 362, 다온약국 1층</span>
                <div class="row justify-content-end px-4">
                  <a href="#" class="btn btn-sm btn-primary" style="max-width:6rem; margin-top:1rem;">상세 정보</a>
                </div>                
              </div>
            </div>
          </div>
          
          <div class="col-lg-3">
            <div class="card shadow-sm">
              <img src="${path}/resources/img/medisearch/ph/ph02.jpg" class="card-img-top" alt="Card image">
              <div class="card-body">
                <h5 class="card-title fs-6 fw-normal">매일여는온누리약국</h5>
                <span class="fi-map-pin"></span>
                <span class="card-text fs-xs text-muted fw-light">대전광역시 동구 계족로 362, 다온약국 1층</span>
                <div class="row justify-content-end px-4">
                  <a href="#" class="btn btn-sm btn-primary" style="max-width:6rem; margin-top:1rem;">상세 정보</a>
                </div>                
              </div>
            </div>
          </div>
  
          <div class="col-lg-3">
            <div class="card shadow-sm">
              <img src="${path}/resources/img/medisearch/ph/ph03.jpg" class="card-img-top" alt="Card image">
              <div class="card-body">
                <h5 class="card-title fs-6 fw-normal">잠실미소약국</h5>
                <span class="fi-map-pin"></span>
                <span class="card-text fs-xs text-muted fw-light">대전광역시 동구 계족로 362, 다온약국 1층</span>
                <div class="row justify-content-end px-4">
                  <a href="#" class="btn btn-sm btn-primary" style="max-width:6rem; margin-top:1rem;">상세 정보</a>
                </div>                
              </div>
            </div>
          </div>
  
          <div class="col-lg-3">
            <div class="card shadow-sm">
              <img src="${path}/resources/img/medisearch/ph/ph04.jpg" class="card-img-top" alt="Card image">
              <div class="card-body">
                <h5 class="card-title fs-6 fw-normal">환승센터약국</h5>
                <span class="fi-map-pin"></span>
                <span class="card-text fs-xs text-muted fw-light">대전광역시 동구 계족로 362, 다온약국 1층</span>
                <div class="row justify-content-end px-4">
                  <a href="#" class="btn btn-sm btn-primary" style="max-width:6rem; margin-top:1rem;">상세 정보</a>
                </div>                
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- 의약품 -->
      <section class="container overflow-auto mb-5">
        <div class="d-flex align-items-center justify-content-between mb-3">
          <h2 class="h3 mb-0" style="margin-top:30px; font-size: 1.8rem;">의약품</h2><a class="btn btn-link fw-normal ms-md-3 pb-0" href="real-estate-catalog-rent.html">더보기<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="row g-2 g-md-3 gallery" data-thumbnails="true" style="min-width: 30rem; margin-bottom: 100px;">
          <div class="col-6">
            <a class="gallery-item rounded rounded-md-3" href="#"><img src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/152035092098000085" alt="Gallery thumbnail"></a>
          </div>
          <div class="col-3">
            <a class="gallery-item rounded rounded-md-3 mb-md-2" href="#"><img src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/1NOwp2F66kj" alt="Gallery thumbnail"></a>
            <a class="gallery-item rounded rounded-md-3" href="#"><img src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/148674126111200110" alt="Gallery thumbnail"></a>
          </div>
          <div class="col-3">
            <a class="gallery-item rounded rounded-md-3 mb-md-2" href="#"><img src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/148609556259100153" alt="Gallery thumbnail"></a>
            <a class="gallery-item rounded rounded-md-3" href="#"><img src="https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/153495248483300010" alt="Gallery thumbnail"></a>
          </div>
        </div>
      </section>
    </main>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp" />