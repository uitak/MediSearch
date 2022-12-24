<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| My Page" />
</jsp:include>


      <!-- Page content-->
      <div class="container pt-5 pb-lg-4 mt-5 mb-sm-2">
        <!-- Breadcrumb-->
        <nav class="mb-4 pt-md-3" aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="medisearch-member-info.html">My Page</a></li>
            <li class="breadcrumb-item active" aria-current="page">회원정보</li>
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
                  <h2 class="fs-lg mb-0">홍길동 님</h2>
                  <ul class="list-unstyled fs-sm mt-3 mb-0">
                    <li><i class="fi-mail opacity-60 me-2"></i>hong@email.com</li>
                    <li><i class="fi-map-pin opacity-60 me-2"></i>서울시 강남구 역삼동</li>
                  </ul>
                </div>
              </div>
              <div class="collapse d-md-block mt-3" id="account-nav">
                <div class="card-nav">
                  <a class="card-nav-link active" href="medisearch-member-info.html"><i class="fi-user opacity-60 me-2"></i>회원정보</a>
                  <a class="card-nav-link" href="medisearch-member-security.html"><i class="fi-lock opacity-60 me-2"></i>비밀번호 재설정</a>
                  <a class="card-nav-link" href="medisearch-member-favorites.html"><i class="fi-heart opacity-60 me-2"></i>즐겨찾기</a>
                  <a class="card-nav-link" href="medisearch-member-reviews.html"><i class="fi-star opacity-60 me-2"></i>리뷰</a>
                  <a class="card-nav-link" href="medisearch-index.html"><i class="fi-logout opacity-60 me-2"></i>로그아웃</a>
                </div>
              </div>
            </div>
          </aside>
          <!-- Content-->
          <div class="col-lg-8 col-md-7 mb-5">
            <h1 class="h2">회원정보</h1>
            <p class="pt-1">회원정보를 확인하고 변경된 정보가 있다면 수정하세요!</p>
            <div class="progress mb-4" style="height: .25rem;">
              <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <div class="border rounded-3 p-3 mb-4" id="personal-info">
              <!-- 아이디-->
              <div class="border-bottom pb-3 mb-3">
                <div class="d-flex align-items-center justify-content-between">
                  <div class="pe-2">
                    <label class="form-label fw-bold">아이디</label>
                    <div id="id-value">id123</div>
                  </div>
                  <div class="me-n3" data-bs-toggle="tooltip" title="수정"><a class="nav-link py-0" href="#id-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                </div>
                <div class="collapse" id="id-collapse" data-bs-parent="#personal-info">
                  <input class="form-control mt-3" id="readonly-input" type="text" data-bs-binded-element="#id-value" data-bs-unset-value="Not specified" value="id123" readonly>
                </div>
              </div>
              <!-- 이름-->
              <div class="border-bottom pb-3 mb-3">
                <div class="d-flex align-items-center justify-content-between">
                  <div class="pe-2">
                    <label class="form-label fw-bold">이름</label>
                    <div id="name-value">홍길동</div>
                  </div>
                  <div class="me-n3" data-bs-toggle="tooltip" title="수정"><a class="nav-link py-0" href="#name-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                </div>
                <div class="collapse" id="name-collapse" data-bs-parent="#personal-info">
                  <input class="form-control mt-3" type="text" data-bs-binded-element="#name-value" data-bs-unset-value="Not specified" value="홍길동">
                </div>
              </div>
              <!-- 이메일-->
              <div class="border-bottom pb-3 mb-3">
                <div class="d-flex align-items-center justify-content-between">
                  <div class="pe-2">
                    <label class="form-label fw-bold">이메일</label>
                    <div id="email-value">hong@email.com</div>
                  </div>
                  <div class="me-n3" data-bs-toggle="tooltip" title="수정"><a class="nav-link py-0" href="#email-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                </div>
                <div class="collapse" id="email-collapse" data-bs-parent="#personal-info">
                  <input class="form-control mt-3" type="email" data-bs-binded-element="#email-value" data-bs-unset-value="Not specified" value="hong@email.com">
                </div>
              </div>
              <!-- Address-->
              <div>
                <div class="d-flex align-items-center justify-content-between">
                  <div class="pe-2">
                    <label class="form-label fw-bold">주소</label>
                    <div id="address-value"></div>
                  </div>
                  <div class="me-n3" data-bs-toggle="tooltip" title="수정"><a class="nav-link py-0" href="#address-collapse" data-bs-toggle="collapse"><i class="fi-edit"></i></a></div>
                </div>
                <div class="collapse" id="address-collapse" data-bs-parent="#personal-info">
                  <input class="form-control mt-3" type="text" data-bs-binded-element="#address-value" data-bs-unset-value="Not specified" placeholder="주소">
                </div>
              </div>
            </div>
            <div class="d-flex align-items-center justify-content-between border-top mt-4 pt-4 pb-1">
              <button class="btn btn-primary px-3 px-sm-4" type="button">회원정보 저장</button>
              <button class="btn btn-link btn-sm px-0" type="button"><i class="fi-trash me-2"></i>탈퇴하기</button>
            </div>
          </div>
        </div>
      </div>
    </main>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

