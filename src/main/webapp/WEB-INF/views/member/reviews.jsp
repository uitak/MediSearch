<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| My Page | 리뷰" />
</jsp:include>

      <!-- Page content-->
      <div class="container pt-5 pb-lg-4 mt-5 mb-sm-2">
        <!-- Breadcrumb-->
        <nav class="mb-4 pt-md-3" aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="medisearch-member-info.html">My Page</a></li>
            <li class="breadcrumb-item active" aria-current="page">리뷰</li>
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
                  <a class="card-nav-link" onclick="location.href='${path}/member/favorites';" style="cursor: pointer;"><i class="fi-heart opacity-60 me-2"></i>즐겨찾기</a>
                  <a class="card-nav-link active" onclick="location.href='${path}/member/reviews';" style="cursor: pointer;"><i class="fi-star opacity-60 me-2"></i>리뷰</a>
                  <a class="card-nav-link" onclick="location.replace('${path}/logout')" style="cursor:pointer;"><i class="fi-logout opacity-60 me-2"></i>로그아웃</a>
                </div>
              </div>
            </div>
          </aside>
          <!-- Content-->
          <div class="col-lg-8 col-md-7 mb-5">
            <h1 class="h2">리뷰</h1>
            <p class="pt-1">내가 쓴 리뷰를 볼 수 있어요!</p>
            <div class="progress mb-4" style="height: .25rem;">
              <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <!-- 리뷰 -->
            <div class="d-flex flex-sm-row flex-column align-items-sm-center align-items-stretch justify-content-between pb-4 mb-2 mb-md-3">
              <h3 class="h4 mb-sm-0">8 reviews</h3>
              <div class="d-flex align-items-center ms-sm-4">
                <label class="fs-sm me-2 pe-1 text-nowrap" for="review-sorting2"><i class="fi-arrows-sort text-muted mt-n1 me-2"></i>Sort by:</label>
                <select class="form-select form-select-sm" id="review-sorting2">
                  <option>전체</option>
                  <option>병원</option>
                  <option>약국</option>
                  <option>의약품</option>
                </select>
              </div>
            </div>
            <!-- Review-->
            <div class="mb-4 pb-4 border-bottom">
              <div class="d-flex justify-content-between mb-3">
                <div class="pe-2">
                  <h6 class="mb-0"> <span class="fw-normal text-muted me-1">[병원]</span>연세참한의원</h6><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i><i class="star-rating-icon fi-star"></i></span>
                </div><span class="text-muted fs-sm">2023. 1. 2.</span>
              </div>
              <p> 한의사 선생님이 정수리에 침을 놓아주셨어요... ㅠ...</p>
              <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(2)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(1)</span></button>
              </div>
            </div>
            <!-- Review-->
            <div class="mb-4 pb-4 border-bottom">
              <div class="d-flex justify-content-between mb-3">
                <div class="pe-2">
                  <h6 class="mb-0"> <span class="fw-normal text-muted me-1">[병원]</span>서울대학교병원</h6><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star"></i></span>
                </div><span class="text-muted fs-sm">2023. 1. 2.</span>
              </div>
              <p>건강 검진 받고 왔습니다. 꼼꼼하게 잘봐주셔서 좋았어요!!!</p>
              <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(4)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(2)</span></button>
              </div>
            </div>
            <!-- Review-->
            <div class="mb-4 pb-4 border-bottom">
              <div class="d-flex justify-content-between mb-3">
                <div class="pe-2">
                  <h6 class="mb-0"> <span class="fw-normal text-muted me-1">[약국]</span>사랑약국</h6><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                </div><span class="text-muted fs-sm">2023. 1. 2.</span>
              </div>
              <p>약사님이 친절하게 설명을 잘해주십니다!</p>
              <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(2)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(0)</span></button>
              </div>
            </div>
            <!-- Review-->
            <div class="mb-4 pb-4 border-bottom">
              <div class="d-flex justify-content-between mb-3">
                <div class="pe-2">
                  <h6 class="mb-0"> <span class="fw-normal text-muted me-1">[의약품]</span>게보린릴랙스연질캡슐</h6><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-half active"></i><i class="star-rating-icon fi-star"></i></span>
                </div><span class="text-muted fs-sm">2023. 1. 2.</span>
              </div>
              <p>광고는 광고네요... 그저 그랬어요...</p>
              <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(4)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(2)</span></button>
              </div>
            </div>
            <!-- Review-->
            <div class="mb-4">
              <div class="d-flex justify-content-between mb-3">
                <div class="pe-2">
                  <h6 class="mb-0"> <span class="fw-normal text-muted me-1">[병원]</span>서울신세계안과의원</h6><span class="star-rating"><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i><i class="star-rating-icon fi-star-filled active"></i></span>
                </div><span class="text-muted fs-sm">2023. 1. 2.</span>
              </div>
              <p>결막염으로 고생했는데, 처방덕분에 많이 좋아졌습니다!</p>
              <div class="d-flex align-items-center">
                <button class="btn-like" type="button"><i class="fi-like"></i><span>(2)</span></button>
                <div class="border-end me-1">&nbsp;</div>
                <button class="btn-dislike" type="button"><i class="fi-dislike"></i><span>(0)</span></button>
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
                <li class="page-item active  d-none d-sm-block">
                  <a href="#" class="page-link">1</a>
                </li>
                <li class="page-item d-none d-sm-block" aria-current="page">
                  <span class="page-link">
                    2
                    <span class="visually-hidden">(current)</span>
                  </span>
                </li>
                <!--  
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">3</a>
                </li>
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">4</a>
                </li>
                <li class="page-item d-none d-sm-block">
                  <a href="#" class="page-link">5</a>
                </li>
                -->
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

