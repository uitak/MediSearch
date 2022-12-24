<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 고객센터" />
</jsp:include>


      <!-- Page content-->
      <!-- Page header-->
      <section class="bg-dark py-5">
        <div class="container pt-5 pb-5">
          <!-- Breadcrumbs + page title-->
          <nav class="mb-4 pb-lg-3" aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-light">
              <li class="breadcrumb-item"><a href="medisearch-index.html">메디서치</a></li>
              <li class="breadcrumb-item active" aria-current="page">고객센터</li>
            </ol>
          </nav>
          <!-- Page title-->
          <div class="mb-lg-5 mx-auto text-center" style="max-width: 856px;">
            <h1 class="text-light mb-2 pb-1">도움이 필요하신가요?</h1>
            <p class="mb-5 fs-3 text-light">모든 답은 이미 여기 있습니다 :)</p>
            <!-- Search form-->
            <form class="form-group form-group-lg form-group-light rounded-pill">
              <input class="form-control" type="text" placeholder="무엇을 찾고 계신가요?">
              <button class="btn btn-lg btn-primary rounded-pill px-sm-4 px-3" type="submit"><i class="fi-search me-sm-2"></i><span class="d-sm-inline d-none">검색</span></button>
            </form>
          </div>
        </div>
      </section>
      <!-- Help by category-->
      <section class="position-relative bg-white rounded-xxl-4 mb-5 pt-md-3 pb-lg-5 zindex-5" style="margin-top: -30px;">
        <div class="container pt-5">
          <h2 class="mb-4 pb-2 text-center">도움말</h2>
          <div class="row g-4">
            <!-- Item-->
            <div class="col-md-4">
              <div class="card card card-hover border-0 shadow-sm position-relative h-100">
                <div class="card-body pb-0 icon-box">
                  <div class="icon-box-media d-flex align-items-center justify-content-center bg-faded-info text-info rounded-circle mb-3" style="width: 4rem; height: 4rem;"><i class="fi-file fs-3"></i></div>
                  <h3 class="h4 pb-1 icon-box-title">정보 수정 요청</h3>
                  <p class="mb-1">잘못된 정보가 있다면 알려주세요.<br>빠른 시일내에 수정하겠습니다!</p>
                </div>
                <div class="card-footer pt-0 border-0"><a class="nav-link my-1 px-0 stretched-link" href="#">수정 요청하러 가기<i class="fi-chevron-right ms-2 mt-n1 align-middle fs-xs"></i></a></div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-md-4">
              <div class="card card card-hover border-0 shadow-sm position-relative h-100">
                <div class="card-body pb-0 icon-box">
                  <div class="icon-box-media d-flex align-items-center justify-content-center bg-faded-success text-success rounded-circle mb-3" style="width: 4rem; height: 4rem;"><i class="fi-security fs-3"></i></div>
                  <h3 class="h4 pb-1 icon-box-title">개인정보보호 및 보안</h3>
                  <p class="mb-1">개인정보보호 및 보안 관련 문제가 있으신가요?<br>여기서 해결책을 찾아보세요!</p>
                </div>
                <div class="card-footer pt-0 border-0"><a class="nav-link my-1 px-0 stretched-link" href="#">질문 찾으러 가기<i class="fi-chevron-right ms-2 mt-n1 align-middle fs-xs"></i></a></div>
              </div>
            </div>
            <!-- Item-->
            <div class="col-md-4">
              <div class="card card card-hover border-0 shadow-sm position-relative h-100">
                <div class="card-body pb-0 icon-box">
                  <div class="icon-box-media d-flex align-items-center justify-content-center bg-faded-warning text-warning rounded-circle mb-3" style="width: 4rem; height: 4rem;"><i class="fi-help fs-3"></i></div>
                  <h3 class="h4 pb-1 icon-box-title">답을 찾지 못하셨나요?</h3>
                  <p class="mb-1">질문에 대한 답변을 찾지 못하셨나요?<br>도와드리겠습니다. 지원 팀에 요청을 보내세요!</p>
                </div>
                <div class="card-footer pt-0 border-0"><a class="nav-link my-1 px-0 stretched-link" href="#">메디서치 팀에 문의하기<i class="fi-chevron-right ms-2 mt-n1 align-middle fs-xs"></i></a></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Contact Us CTA-->
      <section class="container mb-5 pb-lg-5">
        <div class="py-md-4 py-5 bg-secondary rounded-3">
          <div class="col-sm-10 col-11 d-flex flex-md-row flex-column align-items-center justify-content-between mx-auto px-0">
            <div class="order-md-1 order-2 text-md-start text-center" style="max-width: 524px;">
              <h2 class="mb-4 pb-md-3">메디서치 팀에게 연락해서<br>직접 문의할 수 있어요!</h2><a class="btn btn-lg btn-primary rounded-pill w-sm-auto w-100" href="job-board-contacts.html">문의하기</a>
            </div><img class="order-md-2 order-1 ms-md-4" src="${path}/resources/img/job-board/illustrations/mail.svg" alt="Illustration">
          </div>
        </div>
      </section>
    </main>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
    
    