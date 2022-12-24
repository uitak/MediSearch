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
          <li class="breadcrumb-item"><a href="#">홈</a></li>
          <li class="breadcrumb-item"><a href="#">병원 찾기</a></li>
          <!--========================================================== 병원 이름이 들어가는 곳 =========================================================-->
          <li class="breadcrumb-item active" aria-current="page">서울병원</li>
        </ol>
      </nav>

      <!--========================================================== 병원 정보가 들어가는 곳 =========================================================-->
      <div class="d-sm-flex align-items-center justify-content-between mb-4 pb-sm-2">
        <h1 class="h2 me-3 mb-sm-0">서울병원</h1>
        <div class="text-nowrap">
         
          <!-- 공유 버튼 -->
          <div class="dropdown d-inline-block" data-bs-toggle="tooltip" title="즐겨찾기에 추가">
            <!-- <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2" type="button" data-bs-toggle="dropdown"><i class="fi-share"></i></button> -->
            <!-- <div class="col"> -->
            <a class="btn btn-primary btn-lg rounded-pill w-sm-auto w-100" href="#">wishlist<i class="fi-heart fs-sm ms-2"></i></a>
            <!-- </div> -->
          
            <!-- 공유 버튼 페이스북, 트위터, 인스타 -->
            <!--
            <div class="dropdown-menu dropdown-menu-end my-1">
              <button class="dropdown-item" type="button"><i
                  class="fi-facebook fs-base opacity-75 me-2"></i>Facebook</button>
              <button class="dropdown-item" type="button"><i
                  class="fi-twitter fs-base opacity-75 me-2"></i>Twitter</button>
              <button class="dropdown-item" type="button"><i
                  class="fi-instagram fs-base opacity-75 me-2"></i>Instagram</button>
            </div>
          -->
          </div>
        
        </div>
      </div>


      <!-- Nav pills-->
      <ul class="nav nav-pills border-bottom pb-3 mb-4">
        <!-- <li class="nav-item"><a class="nav-link d-flex align-items-center" href="city-guide-single.html"><i
              class="fi-image me-2"></i>Gallery</a></li> -->
        <li class="nav-item"><a class="nav-link d-flex align-items-center active" href="#">
          <i class="fi-info-circle me-2"></i>상세정보</a></li>
             
        <!-- <li class="nav-item"><a class="nav-link d-flex align-items-center" href="city-guide-single-reviews.html">
          <i class="fi-edit me-2"></i>리뷰</a></li>  링크 누를 시 리뷰 게시판으로 이동 -->
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
                  <img class="rounded-3" src="${path}/resources/img/hos/resize/100.jpg" alt="Image"></div>
                <div>
                  <iframe class="rounded-3" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50571.503708807424!2d126.87841757497236!3d37.6087723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9821b2378f7d%3A0x4bc463fe9a7dbd04!2z7ISc7Jq467OR7JuQ!5e0!3m2!1sko!2skr!4v1671269215626!5m2!1sko!2skr" alt="Image" style="height: 420px;"></iframe>
                </div>
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


            <!-- Thumbnails nav-->
            <ul class="tns-thumbnails mb-4" id="thumbnails" >
              <li class="tns-thumbnail"><img src="${path}/resources/img/hos/resize/100.jpg" alt="Thumbnail" ></li>
              <li class="tns-thumbnail"><img src="${path}/resources/img/hos/resize/900.png" alt="Thumbnail"></li>
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
            <li><i class="fi-star-filled mt-n1 me-1 text-warning align-middle"></i><b>4.9 </b><span
                class="text-muted">(48 reviews)</span></li>
            <!-- <li><i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li> -->
            <!-- ========================= 병원 위치 정보 들어가는 자리 ========================= -->
            <li><i class="fi-map-pin mt-n1 me-1 align-middle opacity-70"></i>서울특별시 은평구 대조동 진흥로 191</li>
          </ul>
          <div class="mb-4 pb-md-3">
            <p class="mb-1">
              서울대학교병원 내과는 대한민국의료계를 이끌어 온 전통과 명예로 세계 최고 수준의 교육, 연구, 진료를 통해 21세기 선진 의료를 선도하기 위해 노력해 오고 있습니다. 서울대학교병원의 가장 큰 규모의 임상진료과로 100여명의 교수, 150여명의 임상강사 및 전공의 의료진이 소속되어 있습니다. 16개의 병동, 응급실, 중환자실에서 1일 500명 이상의 입원 환자를 진료하고 매일 3,000여명의 외래 환자를 진료하고 있습니다. 아울러 특수질환에 대한 다양한 교육프로그램과 안내책자들을 개발 활용하여 환자의 이해를 증진시키고 있으며 다양한 특수클리닉의 개설, 운영으로 특수질환에 대한 환자들의 진료 욕구를 충족시키고 환자의 아픔과 고통을 함께 나눈다는 생각을 가지고 최선을 다해 진료에 임하고 있습니다. 

            </p>
            <div class="collapse" id="seeMoreAbout">
              <p class="mb-1">
                또한 기초 및 임상연구를 통한 새로운 의학기술의 개발, 혁신적인 의학교육을 통한 우수한 의료진의 양성을 바탕으로 수준 높은 진료를 지향해 나가고 있습니다. 구조적으로는 호흡기내과, 순환기내과, 소화기내과, 혈액종양내과, 내분비내과, 알레르기내과, 신장내과, 감염내과, 류마티스내과로 나뉘어 9개의 분과로 구성되어 있고 입원전담전문의 제도를 운영하며 서울대학교 의과대학 및 서울대학교병원의 교육, 연구, 진료에서 중추적 역할을 수행하고 있습니다. 
              </p>
            </div>
            <a class="collapse-label collapsed" href="#seeMoreAbout" data-bs-toggle="collapse"
              data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false"
              aria-controls="seeMoreAbout"></a>
          </div>

          <!-- =============================================== 수술/시술 들어갈 곳 ================================================ -->
          <!-- Amenities-->
          <div class="mb-4 pb-md-3">
            <h2 class="h4">수술/시술 가능 여부</h2>
            <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>MRI</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>CT</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>인공관절</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>파키슨병</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>뇌혈관센터</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>뇌혈관중재적시술</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>종합검진</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>위내시경</li>
              <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>위암</li>
            </ul>
            <!-- 더보기 란 -->
            <div class="collapse" id="seeMoreAmenities">
              <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
                <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>다한증</li>
                <li class="col"><i class="fi-spa mt-n1 me-2 fs-lg align-middle"></i>심장혈관촬영및관상동맥중재술</li>
              </ul>
            </div><a class="collapse-label collapsed" href="#seeMoreAmenities" data-bs-toggle="collapse"
              data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false"
              aria-controls="seeMoreAmenities"></a>
          </div>


          <!-- Room types-->
          <!--
          <div class="mb-4 pb-md-3">
            <h2 class="h4">Room types</h2>
            <ul class="list-unstyled row row-cols-lg-3 row-cols-md-2 row-cols-1 gy-1 mb-1 text-nowrap">
              <li class="col"><i class="fi-no-smoke mt-n1 me-2 fs-lg align-middle"></i>Non-smoking rooms</li>
              <li class="col"><i class="fi-single-bed mt-n1 me-2 fs-lg align-middle"></i>Single rooms</li>
              <li class="col"><i class="fi-double-bed mt-n1 me-2 fs-lg align-middle"></i>Family suites</li>
            </ul>
          </div>
          -->

          <!-- Awards-->
          <!--
          <h2 class="h4">Awards</h2>
          <ul class="list-unstyled">
            <li class="d-flex align-items-center mb-2"><img class="flex-shrink-0 me-2"
                src="img/city-guide/single/awards/01.jpg" width="40" alt="Award logo">
              <div>2020 Traveler’s Choice</div>
            </li>
            <li class="d-flex align-items-center mb-2"><img class="flex-shrink-0 me-2"
                src="img/city-guide/single/awards/02.jpg" width="40" alt="Award logo">
              <div>TUI Top Quality 2020</div>
            </li>
            <li class="d-flex align-items-center mb-2"><img class="flex-shrink-0 me-2"
                src="img/city-guide/single/awards/03.jpg" width="40" alt="Award logo">
              <div>TUI Holly 2019</div>
            </li>
          </ul>
          <hr class="my-4">
          -->


          <!-- Payment-->
          <!--
          <div class="d-lg-flex align-items-center pb-2 pb-lg-0">
            <h4 class="fs-lg mb-lg-0">병원에서 이용 가능한 카드:</h4>
            <div class="ps-lg-3"><img class="me-2 border rounded-1 shadow-sm"
                src="img/city-guide/single/payment/visa.svg" width="54" alt="Visa"><img
                class="me-2 border rounded-1 shadow-sm" src="img/city-guide/single/payment/mastercard.svg" width="54"
                alt="Mastercard"><img class="me-2 border rounded-1 shadow-sm"
                src="img/city-guide/single/payment/maestro.svg" width="54" alt="Maestro"><img
                class="border rounded-1 shadow-sm" src="img/city-guide/single/payment/american-express.svg" width="54"
                alt="American Express"></div>
          </div>
          -->
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
                <img src="${path}/resources/img/city-guide/brands/hotel.svg" width="60" alt="Thumbnail">
                <div class="ps-2 ms-1">
                  <h3 class="h5 mb-2"> 서울병원</h3>
                  <ul class="list-unstyled d-flex flex-wrap fs-sm">
                    <li class="me-2 mb-1 pe-1">
                      <i class="fi-star-filled mt-n1 me-1 text-warning align-middle opacity-70"></i>
                      <!--=========== 리뷰 별점 넣는 곳 ========-->
                      <b>4.9 </b>(48)</li>
                    <!-- <li class="me-2 mb-1 pe-1">
                      <i class="fi-wallet mt-n1 me-1 align-middle opacity-70"></i>$$</li> -->
                      <!--===================================== 병원 분류 넣는 곳 =============================================-->
                    <li class="me-2 mb-1 pe-1">
                      <i class="fi-globe mt-n1 me-1 align-middle opacity-70"></i>종합병원</li>
                  </ul>
                </div>
              </div>
              <!--========================================  병원 정보 입력 란 별 다른일 없음 href="#" 삭제=========================================-->
              <!-- Place contacts-->
              <div class="mb-3 pb-3 border-bottom">
                <h4 class="h5 mb-2">기본 정보:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2">
                    <i class="fi-map-pin mt-1 me-2 align-middle opacity-70"></i>서울특별시 은평구 대조동 진흥로 191
                  </li>
                  <!-- 전화번호 -->
                  <li class="nav-item mb-2">
                    <a class="nav-link d-inline-block p-0 fw-normal d-inline-flex align-items-start" href="tel:3025550107">
                      <i class="fi-phone mt-1 me-2 align-middle opacity-70"></i>(302) 555-0107</a>, 
                      <a class="nav-link d-inline-block p-0 fw-normal" href="tel:3025550208">(302) 555-0208</a></li>

                  <!-- 진료과목 -->
                  <!--
                  <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start" href="#">
                    <i class="fi-search mt-1 me-2 align-middle opacity-60"></i>내과, 재활치료과</a>
                  </li>
                  -->
                  
                  <!-- 응급실 운영 여부 -->
                  <li class="nav-item"><a class="nav-link p-0 fw-normal d-flex align-items-start" href="mailto:bb-hotel@example.com">
                   
                    <i class="fi-help mt-1 me-2 align-middle opacity-70"></i>응급실 운영 여부 : X</a></li>
                </ul>
              </div>

              <div class="mb-3 pb-3 border-bottom">
                <h4 class="h5 mb-2">진료과목:</h4>
                <ul class="nav flex-column">
                  <li class="nav-item mb-2">
                    <a class="nav-link p-0 fw-normal d-flex align-items-start" href="#">
                    <i class="fi-search mt-1 me-2 align-middle opacity-70"></i>내과, 재활치료과, 가정의학과, 피부과, 산부인과</a>
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
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      <tr class="active-row">
                          <td>화요일</td>
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      <tr class="active-row">
                          <td>수요일</td>
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      <tr class="active-row">
                          <td>목요일</td>
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      <tr class="active-row">
                          <td>금요일</td>
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      <tr class="active-row">
                          <td>토요일</td>
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      <tr class="active-row">
                          <td>일요일</td>
                          <td>09:00 ~ 18:00</td>
                      </tr>
                      
                  </tbody>
              </table>
       
              </div>

              <!-- 진료시간 -->
              <!-- Place following-->
              <!-- <div class="d-flex align-items-center">
                <h4 class="h5 mb-0 me-3">진료시간</h4>
                <div class="text-nowrap"> -->
                  <!-- <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2" href="#"><i class="fi-facebook"></i></a>
                  <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2" href="#"><i class="fi-instagram"></i></a>
                  <a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle" href="#"><i class="fi-twitter"></i></a> -->
                  <!-- <ul class="nav flex-column">
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>월요일: 08:00 ~ 18:00</a>
                    </li>
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>화요일: 08:00 ~ 18:00</a>
                    </li>
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>수요일: 08:00 ~ 18:00</a>
                    </li>
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>목요일: 08:00 ~ 18:00</a>
                    </li>
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>금요일: 08:00 ~ 18:00</a>
                    </li>
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>토요일: 08:00 ~ 18:00</a>
                    </li>
                    <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal d-flex align-items-start">
                      <i class="mt-1 me-2 align-middle opacity-70"></i>일요일: 08:00 ~ 18:00</a>
                    </li>
                  </ul>
                </div>
              </div> -->
            </div>
          </div>

          <!--========================================================================= 지도 ===========================================================================-->
          <!-- Location (Map)-->
          <div class="position-relative">
            <!-- <img class="rounded-3" src="img/city-guide/single/map-sm.jpg" alt="Map"> -->
            <iframe class="rounded-3" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50571.503708807424!2d126.87841757497236!3d37.6087723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9821b2378f7d%3A0x4bc463fe9a7dbd04!2z7ISc7Jq467OR7JuQ!5e0!3m2!1sko!2skr!4v1671269215626!5m2!1sko!2skr" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
            <div class="d-flex w-100 h-100 flex-column align-items-center justify-content-center position-absolute top-0 start-0">
              <!-- <img class="d-block mx-auto mb-4 rounded-circle bg-white shadow" src="img/city-guide/brands/hotel.svg" width="40" alt="Place logo"> -->
              <!-- 길찾기 버튼 > 누를 시 구글 맵과 연동되서 길찾기 버튼 활성화 -->
              <a class="btn btn-primary rounded-pill stretched-link"
                href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50571.503708807424!2d126.87841757497236!3d37.6087723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9821b2378f7d%3A0x4bc463fe9a7dbd04!2z7ISc7Jq467OR7JuQ!5e0!3m2!1sko!2skr!4v1671269215626!5m2!1sko!2skr"
                data-iframe="true" data-bs-toggle="lightbox">
                <i class="fi-route me-2"></i>길 찾기
              </a>
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
            <h3 class="h4 pb-3"><i class="fi-star-filled mt-n1 me-2 lead align-middle text-warning"></i>4,9 (32 reviews)
            </h3>
            <div
              class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch justify-content-between">
              <a class="btn btn-outline-primary mb-sm-0 mb-3" href="#modal-review" data-bs-toggle="modal"><i
                  class="fi-edit me-1"></i>Add review</a>
              <div class="d-flex align-items-center ms-sm-4">
                <label class="me-2 pe-1 text-nowrap" for="reviews-sorting"><i
                    class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                <select class="form-select" id="reviews-sorting">
                  <option>Newest</option>
                  <option>Oldest</option>
                  <option>Popular</option>
                  <option>High rating</option>
                  <option>Low rating</option>
                </select>
              </div>
            </div>
          </div>
          <!-- Review-->
          <div class="mb-4 pb-4 border-bottom">
            <div class="d-flex justify-content-between mb-3">
              <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/03.jpg"
                  width="48" alt="Avatar">
                <div class="ps-2">
                  <h6 class="fs-base mb-0">Annette Black</h6><span class="star-rating"><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i></span>
                </div>
              </div><span class="text-muted fs-sm">Jan 17, 2021</span>
            </div>
            <p>Elementum ut quam tincidunt egestas vitae elit, hendrerit. Ullamcorper nulla amet lobortis elit, nibh
              condimentum enim. Aliquam felis nisl tellus sodales lectus dictum tristique proin vitae. Odio fermentum
              viverra tortor quis.</p>
            <div class="d-flex align-items-center">
              <button class="btn-like" type="button"><i class="fi-like"></i><span>(3)</span></button>
              <div class="border-end me-1">&nbsp;</div>
              <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(0)</span></button>
            </div>
          </div>
          <!-- Review-->
          <div class="mb-4 pb-4 border-bottom">
            <div class="d-flex justify-content-between mb-3">
              <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/13.png"
                  width="48" alt="Avatar">
                <div class="ps-2">
                  <h6 class="fs-base mb-0">Darrell Steward</h6><span class="star-rating"><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i><i
                      class="star-rating-icon fi-star"></i></span>
                </div>
              </div><span class="text-muted fs-sm">Dec 1, 2020</span>
            </div>
            <p>Vel dictum nunc ut tristique. Egestas diam amet, ut proin hendrerit. Dui accumsan at phasellus tempus
              consequat dignissim.</p>
            <div class="d-flex align-items-center">
              <button class="btn-like" type="button"><i class="fi-like"></i><span>(0)</span></button>
              <div class="border-end me-1">&nbsp;</div>
              <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(1)</span></button>
            </div>
          </div>
          <!-- Review-->
          <!-- <div class="mb-4 pb-4 border-bottom">
            <div class="d-flex justify-content-between mb-3">
              <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/05.jpg"
                  width="48" alt="Avatar">
                <div class="ps-2">
                  <h6 class="fs-base mb-0">Floyd Miles</h6><span class="star-rating"><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i></span>
                </div>
              </div><span class="text-muted fs-sm">Oct 28, 2020</span>
            </div>
            <p>Viverra nunc blandit sapien non imperdiet sit. Purus tempus elementum aliquam eu urna. A aenean duis non
              egestas at libero porttitor integer eget. Sed dictum lobortis laoreet gravida.</p>
            <div class="d-flex align-items-center">
              <button class="btn-like" type="button"><i class="fi-like"></i><span>(2)</span></button>
              <div class="border-end me-1">&nbsp;</div>
              <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(1)</span></button>
            </div>
          </div> -->
          <!-- Review-->
          <!-- <div class="mb-4 pb-4 border-bottom">
            <div class="d-flex justify-content-between mb-3">
              <div class="d-flex align-items-center pe-2"><img class="rounded-circle me-1" src="${path}/resources/img/avatars/04.jpg"
                  width="48" alt="Avatar">
                <div class="ps-2">
                  <h6 class="fs-base mb-0">Ralph Edwards</h6><span class="star-rating"><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i
                      class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i></span>
                </div>
              </div><span class="text-muted fs-sm">Sep 14, 2020</span>
            </div>
            <p>Elementum nisl, egestas nam consectetur nisl, at pellentesque cras. Non sed ac vivamus dolor dignissim
              ut. Nisl sapien blandit pulvinar sagittis donec sociis ipsum arcu est. Tempus, rutrum morbi scelerisque
              tempor mi. Etiam urna, cras bibendum leo nec faucibus velit. Tempor lectus dignissim at auctor integer
              neque quam amet.</p>
            <div class="d-flex align-items-center">
              <button class="btn-like" type="button"><i class="fi-like"></i><span>(0)</span></button>
              <div class="border-end me-1">&nbsp;</div>
              <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(0)</span></button>
            </div>
          </div> -->
          <!-- Pagination-->
          <nav class="mt-2 mb-4" aria-label="Reviews pagination">
            <ul class="pagination">
              <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
              <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span
                    class="visually-hidden">(current)</span></span></li>
              <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
              <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
              <li class="page-item d-none d-sm-block">...</li>
              <li class="page-item d-none d-sm-block"><a class="page-link" href="#">8</a></li>
              <li class="page-item"><a class="page-link" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a>
              </li>
            </ul>
          </nav>
        </div>
        <!--======================================리뷰 추가===========================================-->


        
        <!--================================================= 근처 약국 ====================================================-->
        <!-- Recently viewed-->
        <section class="container pb-5 mb-lg-4">
          <div class="d-flex align-items-center justify-content-between mb-4 pb-2" style="margin-top: 3%;">
            <h2 class="h3 mb-0">근처 약국</h2><a class="btn btn-link fw-normal ms-sm-3 p-0" href="city-guide-catalog.html">View all<i class="fi-arrow-long-right ms-2"></i></a>
          </div>
          <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside mb-xxl-2">
            <div class="tns-carousel-inner" data-carousel-options="{&quot;items&quot;: 3, &quot;gutter&quot;: 24, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1,&quot;nav&quot;:true},&quot;500&quot;:{&quot;items&quot;:2},&quot;850&quot;:{&quot;items&quot;:3},&quot;1400&quot;:{&quot;items&quot;:3,&quot;nav&quot;:false}}}">
              <!-- Item-->
              <div>
                <div class="position-relative">
                  <div class="position-relative mb-3">
                    <button
                      class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                      type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
                      <i class="fi-heart"></i>
                    </button>
                    <img class="rounded-3" src="${path}/resources/img/pha/2000.jpg" alt="Article img">
                  </div>
                  <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">소망약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1"><i
                        class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span
                        class="text-muted">&nbsp;(48)</span></li>
                    <li class="list-inline-item pe-1">
                      <!-- <i class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li> -->
                    <li class="list-inline-item pe-1">
                      <i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>창원 의창구 팔용동</li>
                  </ul>
                </div>
              </div>
              <!-- Item-->
              <div>
                <div class="position-relative">
                  <div class="position-relative mb-3">
                    <button
                      class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                      type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
                      <i class="fi-heart"></i>
                    </button>
                    <img class="rounded-3" src="${path}/resources/img/pha/2001.jpg" alt="Article img">
                  </div>
                  <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">은혜약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1">
                      <i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b>
                      <span class="text-muted">&nbsp;(24)</span></li>
                    <li class="list-inline-item pe-1">
                      <!-- <i class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$$</li> -->
                    <li class="list-inline-item pe-1">
                      <i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 강서구 화곡1동</li>
                  </ul>
                </div>
              </div>
              <!-- Item-->
              <div>
                <div class="position-relative">
                  <div class="position-relative mb-3">
                    <button
                      class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                      type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
                      <i class="fi-heart"></i></button><img class="rounded-3" src="${path}/resources/img/pha/2002.jpg" alt="Article img">
                  </div>
                  <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">동원약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1">
                      <i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.9</b>
                        <span class="text-muted">&nbsp;(43)</span></li>
                    <li class="list-inline-item pe-1">
                      <!-- <i class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$$</li> -->
                    <li class="list-inline-item pe-1">
                      <i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>대구 달서구 도원동</li>
                  </ul>
                </div>
              </div>
              <!-- Item-->
              <div>
                <div class="position-relative">
                  <div class="position-relative mb-3">
                    <button
                      class="btn btn-icon btn-light-primary btn-xs text-primary rounded-circle position-absolute top-0 end-0 m-3 zindex-5"
                      type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist">
                      <i class="fi-heart"></i></button><img class="rounded-3" src="${path}/resources/img/pha/2003.jpg" alt="Article img">
                  </div>
                  <h3 class="mb-2 fs-lg"><a class="nav-link stretched-link" href="#">지혜약국</a></h3>
                  <ul class="list-inline mb-0 fs-xs">
                    <li class="list-inline-item pe-1">
                      <i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.5</b><span
                        class="text-muted">&nbsp;(13)</span></li>
                    <li class="list-inline-item pe-1">
                      <!-- <i class="fi-credit-card mt-n1 me-1 fs-base text-muted align-middle"></i>$$</li> -->
                    <li class="list-inline-item pe-1">
                      <i class="fi-map-pin mt-n1 me-1 fs-base text-muted align-middle"></i>서울 노원구 하계동</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>
  </main>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

