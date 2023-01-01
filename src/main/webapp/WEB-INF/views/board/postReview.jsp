<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 리뷰 보기" />
</jsp:include>

      <section class="mt-5 pt-4">
        <!-- Parallax container-->
        <div class="jarallax mt-2" data-jarallax data-speed="0.5">
          <!-- Parallax image-->
          <div class="jarallax-img bg-secondary"
            style="background-image: url(${path}/resources/img/medisearch/header/header3-1.jpg); background-position: 36% center !important;">
          </div>
          <!-- Section content-->
          <div class="container py-3">
            <!-- Breadcrumb-->
            <nav class="pt-3" aria-label="breadcrumb">
              <ol class="breadcrumb breadcrumb-light mb-lg-5">
                <li class="breadcrumb-item"><a href="${path}">Home</a></li>
                <li class="breadcrumb-item"><a href="${path}/board/communityList">Community</a></li>
                <li class="breadcrumb-item active" aria-current="page">Review</li>
              </ol>
            </nav>
            <!-- Text-->
            <div class="col-md-6 col-sm-8 py-md-5 py-4 px-0">
              <h1 class="display-4 mb-4 pb-md-2" style="color: black; font-size: 3.8rem;"> &nbsp;Review</h1>
<!--               <p class="mb-sm-5 mb-4 pb-md-5 pb-3 lead" style="color: rgb(255, 115, 55);"> &nbsp;&nbsp;&nbsp;&nbsp;병원, 약국, 의약품에 대한 후기를 남겨주세요.</p> -->
            </div>
          </div>
        </div>
      </section>
  

      <!-- Page content-->
      <!-- Page container-->
      <div class="container mt-5 mb-md-4 py-5">
        <!-- Breadcrumb-->
        <!-- <nav class="mb-3 mb-md-4 pt-md-3" aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="job-board-home-v1.html">Home</a></li>
            <li class="breadcrumb-item"><a href="job-board-home-v1.html">Community</a></li>
            <li class="breadcrumb-item active" aria-current="page">Post Review</li>
          </ol>
        </nav> -->
        <!-- Page content-->
        <div class="row justify-content-center pb-sm-2">
          <div class="col-lg-11 col-xl-10">
            <!-- Page title-->
            <!-- <div class="text-center pb-4 mb-3">
              <h1 class="h2 mb-4">리뷰 쓰기</h1>
              <p class="mb-4">병원, 약국, 의약품에 대한 여러분의 생각을 공유해주세요.</p>
            </div> -->
            <!-- Steps-->
            
            <!-- Step 1: Basic Info-->
            <div class="bg-light rounded-3 p-4 p-md-5 mb-3">
              <h2 class="h4 mb-4"><i class="fi-file text-primary fs-5 mt-n1 me-2"></i>${review.name}</h2>
              <div class="row">
                <div class="col-sm-12 mb-4">
                  <label class="form-label" for="pr-fn"><b>제목</b> <span class='text-danger'></span></label>
                  <input class="form-control form-control-lg border-0" type="text" id="pr-fn" value="${review.title}" readonly>
                </div>
                
                <div class="col-sm-6 mb-4">
                    <label class="form-label" for="pr-fn"><b>평점</b><span class='text-danger'></span></label><br>
                    <span class="star-rating">
	                  	<c:forEach var="i" begin="1" end="${review.star}" step="1">
		                  <i class="star-rating-icon fi-star-filled active"></i>
	                  	</c:forEach>
	                  	<c:forEach var="i" begin="${review.star+1}" end="5" step="1">
		                  <i class="star-rating-icon fi-star"></i>
	                  	</c:forEach>
		            </span>
                </div>
                <div class="col-12 mb-4">
                    <label class="form-label" for="pr-description"><b>내용</b> <span class='text-danger'></span></label>
                    <textarea style="resize: none;"class="form-control border-0" rows="7" id="pr-description" readonly>${review.content}</textarea>
                </div>
				<div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5">
					<c:if test="${param.type eq '병원'}">
	                	<a class="btn btn-primary btn-lg rounded-pill ms-sm-auto" href="${path}/search/hospitalInfo?hpid=${review.divId}&i=5">상세 정보 보러가기<i class="fi-chevron-right fs-sm ms-2"></i></a>
					</c:if>
					<c:if test="${param.type eq '약국'}">
	                	<a class="btn btn-primary btn-lg rounded-pill ms-sm-auto" href="${path}/search/pharmacyInfo?no=${review.divId}&i=5">상세 정보 보러가기<i class="fi-chevron-right fs-sm ms-2"></i></a>
					</c:if>
					<c:if test="${param.type eq '의약품'}">
	                	<a class="btn btn-primary btn-lg rounded-pill ms-sm-auto" href="${path}/search/pill?searchValue=${review.name}&searchType=itemName"">상세 정보 보러가기<i class="fi-chevron-right fs-sm ms-2"></i></a>
					</c:if>
              	</div>
            </div>
            <!-- Navigation-->
          </div>
        </div>
      </div>
    </main>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

