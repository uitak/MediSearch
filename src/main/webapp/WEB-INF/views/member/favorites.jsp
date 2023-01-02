<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| My Page | 즐겨찾기" />
</jsp:include>


      <!-- Page content-->
      <div class="container pt-5 pb-lg-4 mt-5 mb-sm-2">
        <!-- Breadcrumb-->
        <nav class="mb-4 pt-md-3" aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">My Page</a></li>
            <li class="breadcrumb-item active" aria-current="page">즐겨찾기</li>
          </ol>
        </nav>
        <!-- Page content-->
        <div class="row">
          <!-- Sidebar-->
          <aside class="col-lg-4 col-md-5 pe-xl-4 mb-5">
            <!-- Account nav-->
            <div class="card card-body border-0 shadow-sm pb-1 me-lg-1">
              <div class="d-flex d-md-block d-lg-flex align-items-start pt-lg-2 mb-4"><img class="rounded-circle" src="${path}/resources/img/avatars/14.png" width="48" alt="Annette Black">
                <div class="pt-md-2 pt-lg-0 ps-3 ps-md-0 ps-lg-3">
                  <h2 class="fs-lg mb-0">${loginMember.name} 님</h2>
                  <ul class="list-unstyled fs-sm mt-3 mb-0">
                    <li><i class="fi-mail opacity-60 me-2"></i>${loginMember.email}</li>
                    <li><i class="fi-map-pin opacity-60 me-2"></i>${loginMember.address}</li>
                  </ul>
                </div>
              </div>
              <div class="collapse d-md-block mt-3" id="account-nav">
                <div class="card-nav">
                  <a class="card-nav-link" onclick="location.href='${path}/member/info';" style="cursor: pointer;"><i class="fi-user opacity-60 me-2"></i>회원정보</a>
                  <a class="card-nav-link" onclick="location.href='${path}/member/security';" style="cursor: pointer;"><i class="fi-lock opacity-60 me-2"></i>비밀번호 재설정</a>
                  <a class="card-nav-link active" onclick="location.href='${path}/member/favorites';" style="cursor: pointer;"><i class="fi-heart opacity-60 me-2"></i>즐겨찾기</a>
                  <a class="card-nav-link" onclick="location.href='${path}/member/reviews';" style="cursor: pointer;"><i class="fi-star opacity-60 me-2"></i>리뷰</a>
                  <a class="card-nav-link" onclick="location.replace('${path}/logout')" style="cursor:pointer;"><i class="fi-logout opacity-60 me-2"></i>로그아웃</a>
                </div>
              </div>
            </div>
          </aside>
          <!-- Content-->
          <div class="col-lg-8 col-md-7 mb-5">
            <h1 class="h2 mb-0">즐겨찾기</h1>
            <div class="d-flex align-items-center justify-content-between pb-2">
              <p class="mt-4 pt-1">즐겨찾기한 목록을 확인할 수 있어요!</p>
              <!-- Sort-->
              <div class="d-flex align-items-sm-center align-items-end">
                <div class="d-flex flex-sm-row flex-column align-items-sm-center w-100 pe-sm-2">
                  <label class="mb-sm-0 mb-2 me-sm-2 pe-sm-1 text-nowrap" for="sortby"><i class="fi-arrows-sort me-2"></i>Sort by:</label>
                  <select class="form-select form-select-sm" id="sortby" style="min-width: 180px;">
                    <option>전체</option>
                    <option>병원</option>
                    <option>약국</option>
                    <option>의약품</option>
                  </select>
                </div><a class="d-inline-block ms-sm-4 ms-3 mb-sm-0 mb-2 fs-sm fw-bold text-decoration-none text-nowrap" href="#"><i class="fi-x fs-xs me-2 align-middle"></i>Clear all</a>
              </div>
            </div>
            <div class="progress mb-4" style="height: .25rem;">
              <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>

            <!-- Item-->
            <div class="card card-hover card-horizontal border-0 shadow-sm mb-4">
              <div class="card-img-top position-relative" style="background-image: url(${path}/resources/img/medisearch/hp/hp01.jpg);"><a class="stretched-link" href="#"></a>
                <div class="position-absolute end-0 top-0 pt-3 pe-3 zindex-5">
                  <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle shadow-sm" type="button" data-bs-toggle="tooltip" data-bs-target="#unfavortie-modal" data-bs-placement="left" title="즐겨찾기 해제"  id="unfavorite"><i class="fi-heart-filled"></i></button>
                </div>
              </div>
              <div class="card-body position-relative pb-3">
                <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">병원</h4>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">경희대학교병원</a></h3>
                <p class="mb-2 fs-sm text-muted">서울특별시 동대문구 경희대로 23 (회기동)</p>
                <div class="fw-bold"><i class="fi-map-pin mt-n1 me-2 lead align-middle opacity-70"></i>500m</div>
                <div class="d-flex align-items-center justify-content-center justify-content-sm-start border-top pt-3 pb-2 mt-3 text-nowrap"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.8</b><span class="text-muted">&nbsp;(48)</span></div>
              </div>
            </div>
            <!-- Item-->
            <div class="card card-hover card-horizontal border-0 shadow-sm mb-4">
              <div class="card-img-top position-relative" style="background-image: url(${path}/resources/img/medisearch/hp/hp02.jpg);"><a class="stretched-link" href="#"></a>
                <div class="position-absolute end-0 top-0 pt-3 pe-3 zindex-5">
                  <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle shadow-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="즐겨찾기 해제"><i class="fi-heart-filled"></i></button>
                </div>
              </div>
              <div class="card-body position-relative pb-3">
                <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">병원</h4>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">건국대학교병원</a></h3>
                <p class="mb-2 fs-sm text-muted">서울특별시 광진구 능동로 120-1 (화양동)</p>
                <div class="fw-bold"><i class="fi-map-pin mt-n1 me-2 lead align-middle opacity-70"></i>1km</div>
                <div class="d-flex align-items-center justify-content-center justify-content-sm-start border-top pt-3 pb-2 mt-3 text-nowrap"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>5.0</b><span class="text-muted">&nbsp;(18)</span></div>
              </div>
            </div>
            <!-- Item-->
            <div class="card card-hover card-horizontal border-0 shadow-sm mb-4">
              <div class="card-img-top position-relative" style="background-image: url(${path}/resources/img/medisearch/ph/ph01.jpg);"><a class="stretched-link" href="#"></a>
                <div class="position-absolute end-0 top-0 pt-3 pe-3 zindex-5">
                  <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle shadow-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="즐겨찾기 해제"><i class="fi-heart-filled"></i></button>
                </div>
              </div>
              <div class="card-body position-relative pb-3">
                <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">약국</h4>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">다나약국</a></h3>
                <p class="mb-2 fs-sm text-muted">서울특별시 종로구 종로 128, 302호(종로3가)</p>
                <div class="fw-bold"><i class="fi-map-pin mt-n1 me-2 lead align-middle opacity-70"></i>250m</div>
                <div class="d-flex align-items-center justify-content-center justify-content-sm-start border-top pt-3 pb-2 mt-3 text-nowrap"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>4.3</b><span class="text-muted">&nbsp;(20)</span></div>
              </div>
            </div>
            <!-- Item-->
            <div class="card card-hover card-horizontal border-0 shadow-sm mb-4">
              <div class="card-img-top position-relative" style="background-image: url(https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/152035092098000085);"><a class="stretched-link" href="#"></a>
                <div class="position-absolute end-0 top-0 pt-3 pe-3 zindex-5">
                  <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle shadow-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="즐겨찾기 해제"><i class="fi-heart-filled"></i></button>
                </div>
              </div>
              <div class="card-body position-relative pb-3">
                <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">의약품</h4>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">아네모정</a></h3>
                <p class="mb-2 fs-sm text-muted">이 약은 위산과다, 속쓰림, 위부불쾌감, 위부팽만감, 체함, 구역, 구토, 위통, 신트림에 사용합니다.</p>
                <div class="fw-bold"><i class="fi-building mt-n1 me-2 lead align-middle opacity-70"></i>삼진제약(주)</div>
                <div class="d-flex align-items-center justify-content-center justify-content-sm-start border-top pt-3 pb-2 mt-3 text-nowrap"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>3.9</b><span class="text-muted">&nbsp;(50)</span></div>
              </div>
            </div>
            <!-- Item-->
            <div class="card card-hover card-horizontal border-0 shadow-sm mb-4">
              <div class="card-img-top position-relative" style="background-image: url(https://nedrug.mfds.go.kr/pbp/cmn/itemImageDownload/152035092098000085);"><a class="stretched-link" href="#"></a>
                <div class="position-absolute end-0 top-0 pt-3 pe-3 zindex-5">
                  <button class="btn btn-icon btn-light btn-xs text-primary rounded-circle shadow-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="즐겨찾기 해제"><i class="fi-heart-filled"></i></button>
                </div>
              </div>
              <div class="card-body position-relative pb-3">
                <h4 class="mb-1 fs-xs fw-normal text-uppercase text-primary">의약품</h4>
                <h3 class="h6 mb-2 fs-base"><a class="nav-link stretched-link" href="#">아네모정</a></h3>
                <p class="mb-2 fs-sm text-muted">이 약은 위산과다, 속쓰림, 위부불쾌감, 위부팽만감, 체함, 구역, 구토, 위통, 신트림에 사용합니다.</p>
                <div class="fw-bold"><i class="fi-building mt-n1 me-2 lead align-middle opacity-70"></i>삼진제약(주)</div>
                <div class="d-flex align-items-center justify-content-center justify-content-sm-start border-top pt-3 pb-2 mt-3 text-nowrap"><i class="fi-star-filled mt-n1 me-1 fs-base text-warning align-middle"></i><b>3.9</b><span class="text-muted">&nbsp;(50)</span></div>
              </div>
            </div>
            <!-- Pagination: with icons -->
            <nav aria-label="Page navigation example ">
              <ul class="pagination pagination-lg">
                <li class="page-item">
                  <a href="#" class="page-link" aria-label="Previous">
                    <i class="fi-chevron-left"></i>
                  </a>
                </li>
                <li class="page-item d-sm-none">
                  <span class="page-link page-link-static">2 / 5</span>
                </li>
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">1</a>
                </li>
                <li class="page-item active d-none d-sm-block" aria-current="page">
                  <span class="page-link">
                    2
                    <span class="visually-hidden">(current)</span>
                  </span>
                </li>
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">3</a>
                </li>
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">4</a>
                </li>
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">5</a>
                </li>
                <li class="page-item">
                  <a href="#" class="page-link" aria-label="Next">
                    <i class="fi-chevron-right"></i>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </main>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

