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
            <li class="breadcrumb-item"><a href="#">홈</a></li>
            <li class="breadcrumb-item"><a href="#">응급실 찾기</a></li>
            <li class="breadcrumb-item active" aria-current="page">용인 세브란스 병원</li>
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
                      <img class="rounded-3" src="${path}/resources/img/hos/resize/hp25.jpg" alt="Image"></div>
                    <div>
                      <iframe class="rounded-3" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.691262625329!2d126.9408692!3d37.56233709999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x760d3f98106f3696!2z7IS467iM656A7Iqk67OR7JuQ!5e0!3m2!1sko!2skr!4v1671447212146!5m2!1sko!2skr" alt="Image" style="height: 420px;"></iframe>
                    </div>

                    <!-- <div>
                      <div class="ratio ratio-16x9">
                        <iframe class="rounded-3" src="https://www.youtube.com/embed/dofyR9p8e7w" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                      </div>
                    </div> -->
                  </div>
                </div>
                <!-- Thumbnails nav-->
                <ul class="tns-thumbnails mb-4" id="thumbnails">
                  <li class="tns-thumbnail"><img src="${path}/resources/img/hos/resize/hp25.jpg" alt="Thumbnail" ></li>
                  <li class="tns-thumbnail"><img src="${path}/resources/img/hos/resize/900.png" alt="Thumbnail"></li>
                  <!-- <li class="tns-thumbnail"><img src="img/real-estate/single/th09.jpg" alt="Thumbnail"></li>
                  <li class="tns-thumbnail"><img src="img/real-estate/single/th10.jpg" alt="Thumbnail"></li>
                  <li class="tns-thumbnail"><img src="img/real-estate/single/th11.jpg" alt="Thumbnail"></li>
                  <li class="tns-thumbnail"><img src="img/real-estate/single/th12.jpg" alt="Thumbnail"></li> -->
                  <!-- <li class="tns-thumbnail">
                    <div class="d-flex flex-column align-items-center justify-content-center h-100"><i class="fi-play-circle fs-4 mb-1"></i><span>Play video</span></div>
                  </li> -->
                </ul>
              </div>
 <!-- ============================================================== 병원 정보 =============================================================================== -->             
              <!-- Page title + Features-->
              <div class="order-lg-2 order-1">
                <h1 class="h2 mb-2">용인 세브란스 병원</h1>
                <p class="mb-2 pb-1 fs-lg"><i class="fi-map-pin mt-n1 lead align-middle text-muted"></i>경기 용인시 기흥구 동백죽전대로 3634</p>
                <ul class="d-flex mb-4 pb-lg-2 list-unstyled">
                  <li class="me-3 pe-3 border-end"><i class="fi-phone mt-n1 lead align-middle text-muted"></i><b class="me-1"> 1899-1004</b></li>
                  <!-- 
                  <li class="me-3 pe-3 border-end"><i class="fi-single-bed mt-n1 lead align-middle text-muted"></i><b class="me-1"> 이용가능</b></li>
                  <li class="me-3 pe-3 border-end"><i class="fi-car mt-n1 lead align-middle text-muted"></i></li>
                  <li><b>15 </b>200</li>
                  -->
                </ul>
              </div>
            </div>

<!--================================================================= 병원 개요 ====================================================================-->            
            <!-- Overview-->
            <h2 class="h5">병원 소개</h2>
            <p class="mb-4 pb-2">국내 최초의 현대적 의료기관이자 최고의 신뢰를 받는 연세대학교 의료원의 역량이 결집된 세브란스병원이 용인 지역에 문을 열었습니다.

              디지털 혁신, 안전과 공감, 하나의 세브란스라는 운영 목표 아래 뛰어난 의료진과 최고 수준의 진료 환경으로 아시아 중심 병원으로 도약하고자 합니다. 용인세브란스병원은 디지털 혁신의 효율적인 시스템을 통해 안전하고 질 높은 의료서비스를 제공합니다. 또한 퇴행성뇌질환센터, 심장혈관센터 등의 전문센터를 통해 다양한 임상과가 유기적으로 협력하는 다학제 치료를 시행하고 신속한 진료와 체계적인 치료를 제공할 것입니다.
              
              용인세브란스병원은 환자 안전을 최우선으로 한 혁신적인 진료 프로세스, 첨단 디지털 솔루션, 선진적 케어 시스템을 통한 국내 의료계의 새로운 패러다임을 제시하는 종합 병원의 미래 모델입니다.
              </p>

<!--====================================================================== 지도 =================================================================  -->              
            <!-- Rental agent-->
            <h2 class="h5">응급실 위치</h2>
            <!--
            <div class="card card-horizontal">
              <div class="card-img-top bg-position-center-x" style="background-image: url(img/real-estate/agents/01.jpg);"></div>
              <blockquote class="blockquote card-body p-4">
                <p class="mb-4">Amet libero morbi venenatis ut est. Iaculis leo ultricies nunc id ante adipiscing. Vel metus odio at faucibus ac. Neque id placerat et id ut.</p>
                <footer class="d-flex justify-content-between">
                  <div class="pe-3">
                    <h6 class="mb-0">Kristin Watson</h6>
                    <div class="text-muted fw-normal fs-sm mb-3">Imperial Property Group Agent</div><a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#"><i class="fi-facebook"></i></a><a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#"><i class="fi-twitter"></i></a><a class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle me-2 mb-2" href="#"><i class="fi-instagram"></i></a>
                  </div>
                  <div><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                    <div class="text-muted fs-sm mt-1">24 reviews</div>
                  </div>
                </footer>
              </blockquote>
            </div>
          -->
          <!-- Location (Map)-->
          <div class="position-relative">
            <!-- <img class="rounded-3" src="img/city-guide/single/map-sm.jpg" alt="Map"> -->
            <!-- <iframe class="rounded-3" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50571.503708807424!2d126.87841757497236!3d37.6087723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9821b2378f7d%3A0x4bc463fe9a7dbd04!2z7ISc7Jq467OR7JuQ!5e0!3m2!1sko!2skr!4v1671269215626!5m2!1sko!2skr" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> -->
            <iframe class="rounded-3" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.691263482909!2d126.93868051516766!3d37.56233707979857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c988fb8086133%3A0x760d3f98106f3696!2z7IS467iM656A7Iqk67OR7JuQ!5e0!3m2!1sko!2skr!4v1671448414778!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            
            <div class="d-flex w-100 h-100 flex-column align-items-center justify-content-center position-absolute top-0 start-0">
              <!-- <img class="d-block mx-auto mb-4 rounded-circle bg-white shadow" src="img/city-guide/brands/hotel.svg" width="40" alt="Place logo"> -->
              <!-- 길찾기 버튼 > 누를 시 구글 맵과 연동되서 길찾기 버튼 활성화 -->
              <!-- <a class="btn btn-primary rounded-pill stretched-link" href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.691263482909!2d126.93868051516766!3d37.56233707979857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c988fb8086133%3A0x760d3f98106f3696!2z7IS467iM656A7Iqk67OR7JuQ!5e0!3m2!1sko!2skr!4v1671448414778!5m2!1sko!2skr" data-iframe="true" data-bs-toggle="lightbox">
                <i class="fi-route me-2"></i>길 찾기
              </a> -->
            
            </div>
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
                  <!-- <div class="dropdown d-inline-block" data-bs-toggle="tooltip" title="Share">
                    <button class="btn btn-icon btn-light-primary btn-xs shadow-sm rounded-circle ms-2 mb-2" type="button" data-bs-toggle="dropdown"><i class="fi-share"></i></button>
                    <div class="dropdown-menu dropdown-menu-end my-1">
                      <button class="dropdown-item" type="button"><i class="fi-facebook fs-base opacity-75 me-2"></i>Facebook</button>
                      <button class="dropdown-item" type="button"><i class="fi-twitter fs-base opacity-75 me-2"></i>Twitter</button>
                      <button class="dropdown-item" type="button"><i class="fi-instagram fs-base opacity-75 me-2"></i>Instagram</button>
                    </div>
                  </div> -->
                </div>
              </div>

<!--====================================================== 병원 정보 ===========================================================-->
              <h3 class="h5 mb-2">응급실 정보: </h3>
              <h2 class="h3 mb-4 pb-2">용인 세브란스 병원<span class="d-inline-block ms-1 fs-base fw-normal text-body">응급실</span></h2>
              <!-- Property details-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5 class="mb-0 pb-3">세부 정보</h5>
                  <ul class="list-unstyled mt-n2 mb-0">
                    <li class="mt-2 mb-0"><b>병원 이름: &nbsp;&nbsp;&nbsp;</b>용인 세브란스 병원</li>
                    <li class="mt-2 mb-0"><b>응급실 번호: &nbsp;&nbsp;&nbsp;</b>1899-1004</li>
                    <li class="mt-2 mb-0"><b>주소: &nbsp;&nbsp;&nbsp;</b>경기 용인시 기흥구 동백죽전대로 363</li>
                    <li class="mt-2 mb-0"><b>실시간 응급실 가용 병상 수: &nbsp;&nbsp;&nbsp;</b>15/200</li>
                    <!-- 
                    <li class="mt-2 mb-0"><b>Bathrooms: &nbsp;&nbsp;&nbsp;</b>2</li>
                    <li class="mt-2 mb-0"><b>Parking places: &nbsp;&nbsp;&nbsp;</b>2</li>
                    <li class="mt-2 mb-0"><b>Pets allowed: &nbsp;&nbsp;&nbsp;</b>cats only</li> 
                    -->
                  </ul>
                </div>
              </div>
              <a class="btn btn-lg btn-primary w-100 mb-3" href="#">리뷰 게시판 보러가기</a>
              <a class="d-inline-block mb-4 pb-2 text-decoration-none">
                <i class="fi-help me-2 mt-n1 align-middle"></i>자세한 정보는 제공된 해당 병원 연락처로 문의바랍니다.</a>
              
<!-- =============================================================가용 시설 목록=========================================================================== -->
              <!-- Amenities-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5>응급 시설 가용 여부</h5>
                  <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 mb-0 text-nowrap">
                    <li class="col"><i class="fi-car mt-n1 me-2 fs-lg align-middle"></i>구급차 ( O )</li>
                    <li class="col"><i class="fi-heart mt-n1 me-2 fs-lg align-middle"></i>인공호흡기 ( O )</li>
                    <li class="col"><i class="fi-cctv mt-n1 me-2 fs-lg align-middle"></i>조명촬영기 ( O )</li>
                    <li class="col"><i class="fi-bed mt-n1 me-2 fs-lg align-middle"></i>MRI ( O )</li>
                    <li class="col"><i class="fi-layers mt-n1 me-2 fs-lg align-middle"></i>CT ( O )</li>
                    <li class="col"><i class="fi-double-bed me-2 fs-lg align-middle"></i>인큐베이터 ( O )</li>
                    <!-- 
                    <li class="col"><i class="fi-tv mt-n1 me-2 fs-lg align-middle"></i>TV</li>
                    <li class="col"><i class="fi-laundry mt-n1 me-2 fs-lg align-middle"></i>Laundry</li>
                    <li class="col"><i class="fi-cctv mt-n1 me-2 fs-lg align-middle"></i>Security cameras</li>
                    <li class="col"><i class="fi-no-smoke mt-n1 me-2 fs-lg align-middle"></i>No smocking</li> 
                    -->
                  </ul>

                  <!-- 더보기 란 -->
                  <!-- 
                  <div class="collapse" id="seeMoreAmenities">
                    <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 pt-2 mb-0 text-nowrap">
                      <li class="col"><i class="fi-double-bed mt-n1 me-2 fs-lg align-middle"></i>Double bed</li>
                      <li class="col"><i class="fi-bed mt-n1 me-2 fs-lg align-middle"></i>Single bed</li>
                    </ul>
                  </div><a class="collapse-label collapsed d-inline-block mt-3" href="#seeMoreAmenities" data-bs-toggle="collapse" data-bs-label-collapsed="Show more" data-bs-label-expanded="Show less" role="button" aria-expanded="false" aria-controls="seeMoreAmenities"></a>
                -->
                </div> 
              </div>

<!-- ========================================================중증질환 수용 가능 정보 검색================================================ -->              
              <!-- Not included in rent-->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5>중증질환 수용 가능 여부</h5>
                  <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 mb-0 text-nowrap">
                    <li class="col"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>응급실</li>
                    <li class="col"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>수술실</li>
                    <li class="col"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>내과 중환자실</li>
                    <li class="col"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>외과 중환자실</li>
                    <li class="col"><i class="fi-telegram mt-n1 me-2 fs-lg align-middle"></i>신경외과 중환자실</li>
                  </ul>
                </div>
              </div>
              <!-- Post meta-->
              <!--
              <ul class="d-flex mb-4 list-unstyled fs-sm">
                <li class="me-3 pe-3 border-end">Published: <b>Dec 19, 2022</b></li>
                <li class="me-3 pe-3 border-end">Ad number: <b>681013232</b></li>
                <li class="me-3 pe-3">Views: <b>48</b></li>
              </ul>
              -->
              <div class="card border-0 bg-secondary mb-4">
                <div class="card-body">
                  <h5>수술/시술 가능 여부</h5>
                  <ul class="list-unstyled row row-cols-md-2 row-cols-1 gy-2 mb-0 text-nowrap">
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>응급실(자살여부)</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>뇌출혈수술</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>뇌경색의재관류</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>심근경색의재관류</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>복부손상의수술</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>사지접합의수술</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>응급내시경</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>응급투석</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>조산산모</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>정신질환자</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>신생아</li>
                    <li class="col"><i class="fi-list mt-n1 me-2 fs-lg align-middle"></i>중증화상</li>
                  </ul>
                </div>
              </div>
            </div>
          </aside>
        </div>
      </section>


<!-- ========================================================================= 근처 약국 출력 ======================================================================= -->      
      <!-- Recently viewed-->
      <section class="container mb-5 pb-2 pb-lg-4">
        <div class="d-flex align-items-center justify-content-between mb-3">
          <!-- view all 링크 다면 약국 검색 페이지로 이동 -->
          <h2 class="h3 mb-0">근처 약국</h2><a class="btn btn-link fw-normal p-0" href="#">View all<i class="fi-arrow-long-right ms-2"></i></a>
        </div>
        <div class="tns-carousel-wrapper tns-controls-outside-xxl tns-nav-outside tns-nav-outside-flush mx-n2">
          <div class="tns-carousel-inner row gx-4 mx-0 pt-3 pb-4" data-carousel-options="{&quot;items&quot;: 4, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;500&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;992&quot;:{&quot;items&quot;:4}}}">
            <!-- Item-->
            <div class="col">
              <div class="card shadow-sm card-hover border-0 h-100">
                <div class="card-img-top card-img-hover"><a class="img-overlay" href="#"></a>
                  <div class="content-overlay end-0 top-0 pt-3 pe-3">
                    <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i class="fi-heart"></i></button>
                  </div><img src="${path}/resources/img/pha/2000_612.jpg" alt="Image">
                </div>
                <div class="card-body position-relative pb-3">
                  <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">약국</h4>
                  <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">마곡 소망약국</a></h3>
                  <p class="mb-2 fs-sm text-muted">서울 구로구 시흥대로 547</p>

                  <!-- <div class="fw-bold"><i class="fi-cash mt-n1 me-2 lead align-middle opacity-70"></i>$84,000</div> -->
                </div>
                <!-- <div class="card-footer d-flex align-items-center justify-content-center mx-3 pt-3 text-nowrap"><span class="d-inline-block mx-1 px-2 fs-sm">4<i class="fi-bed ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">2<i class="fi-bath ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">2<i class="fi-car ms-1 mt-n1 fs-lg text-muted"></i></span></div> -->
              </div>
            </div>
            <!-- Item-->
            <div class="col">
              <div class="card shadow-sm card-hover border-0 h-100">
                <div class="card-img-top card-img-hover"><a class="img-overlay" href="#"></a>
                  <div class="content-overlay end-0 top-0 pt-3 pe-3">
                    <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i class="fi-heart"></i></button>
                  </div><img src="${path}/resources/img/pha/2001_612.jpg" alt="Image">
                </div>
                <div class="card-body position-relative pb-3">
                  <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">약국</h4>
                  <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">은혜약국</a></h3>
                  <p class="mb-2 fs-sm text-muted">서울 구로구 시흥대로 547</p>
                  <!-- <div class="fw-bold"><i class="fi-cash mt-n1 me-2 lead align-middle opacity-70"></i>$1,629 </div> -->
                </div>
                <!-- <div class="card-footer d-flex align-items-center justify-content-center mx-3 pt-3 text-nowrap"><span class="d-inline-block mx-1 px-2 fs-sm">3<i class="fi-bed ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">2<i class="fi-bath ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">2<i class="fi-car ms-1 mt-n1 fs-lg text-muted"></i></span></div> -->
              </div>
            </div>
            <!-- Item-->
            <div class="col">
              <div class="card shadow-sm card-hover border-0 h-100">
                <div class="card-img-top card-img-hover"><a class="img-overlay" href="#"></a>
                  <div class="content-overlay end-0 top-0 pt-3 pe-3">
                    <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i class="fi-heart"></i></button>
                  </div><img src="${path}/resources/img/pha/2002_612.jpg" alt="Image">
                </div>
                <div class="card-body position-relative pb-3">
                  <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">약국</h4>
                  <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">동원약국</a></h3>
                  <p class="mb-2 fs-sm text-muted">서울 구로구 시흥대로 547</p>
                  <!-- <div class="fw-bold"><i class="fi-cash mt-n1 me-2 lead align-middle opacity-70"></i>$1,330</div> -->
                </div>
                <!-- <div class="card-footer d-flex align-items-center justify-content-center mx-3 pt-3 text-nowrap"><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-bed ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-bath ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-car ms-1 mt-n1 fs-lg text-muted"></i></span></div> -->
              </div>
            </div>
            <!-- Item-->
            <div class="col">
              <div class="card shadow-sm card-hover border-0 h-100">
                <div class="card-img-top card-img-hover"><a class="img-overlay" href="#"></a>
                  <div class="content-overlay end-0 top-0 pt-3 pe-3">
                    <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i class="fi-heart"></i></button>
                  </div><img src="${path}/resources/img/pha/2003_612.jpg" alt="Image">
                </div>
                <div class="card-body position-relative pb-3">
                  <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">약국</h4>
                  <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">지혜약국</a></h3>
                  <p class="mb-2 fs-sm text-muted">서울 구로구 시흥대로 547</p>
                  <!-- <div class="fw-bold"><i class="fi-cash mt-n1 me-2 lead align-middle opacity-70"></i>$65,000</div> -->
                </div>
                <!-- <div class="card-footer d-flex align-items-center justify-content-center mx-3 pt-3 text-nowrap"><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-bed ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-bath ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">2<i class="fi-car ms-1 mt-n1 fs-lg text-muted"></i></span></div> -->
              </div>
            </div>
            <!-- Item-->
            <div class="col">
              <div class="card shadow-sm card-hover border-0 h-100">
                <div class="card-img-top card-img-hover"><a class="img-overlay" href="#"></a>
                  <div class="content-overlay end-0 top-0 pt-3 pe-3">
                    <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Wishlist"><i class="fi-heart"></i></button>
                  </div><img src="${path}/resources/img/pha/2004_612.jpg" alt="Image">
                </div>
                <div class="card-body position-relative pb-3">
                  <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">약국</h4>
                  <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">하늘약국</a></h3>
                  <p class="mb-2 fs-sm text-muted">서울 구로구 시흥대로 547</p>
                  <!-- <div class="fw-bold"><i class="fi-cash mt-n1 me-2 lead align-middle opacity-70"></i>$351,900</div> -->
                </div>
                <!-- <div class="card-footer d-flex align-items-center justify-content-center mx-3 pt-3 text-nowrap"><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-bed ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">1<i class="fi-bath ms-1 mt-n1 fs-lg text-muted"></i></span><span class="d-inline-block mx-1 px-2 fs-sm">2<i class="fi-car ms-1 mt-n1 fs-lg text-muted"></i></span></div> -->
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>


<!-- ============================================================ MediSearch푸터 footer ============================================================ -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
