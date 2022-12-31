<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 리뷰 작성" />
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
                <li class="breadcrumb-item"><a href="city-guide-home-v1.html">Home</a></li>
                <li class="breadcrumb-item"><a href="city-guide-home-v1.html">Community</a></li>
                <li class="breadcrumb-item active" aria-current="page">Review</li>
              </ol>
            </nav>
            <!-- Text-->
            <div class="col-md-6 col-sm-8 py-md-5 py-4 px-0">
              <h1 class="display-4 mb-4 pb-md-2" style="color: black; font-size: 3.8rem;"> &nbsp;Post Review</h1>
              <p class="mb-sm-5 mb-4 pb-md-5 pb-3 lead" style="color: rgb(255, 115, 55);"> &nbsp;&nbsp;&nbsp;&nbsp;병원, 약국, 의약품에 대한 후기를 남겨주세요.</p>
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
              <h2 class="h4 mb-4"><i class="fi-pencil text-primary fs-5 mt-n1 me-2"></i>글 쓰기</h2>
              <form>
              <div class="row">
                <div class="col-sm-12 mb-4">
                  <label class="form-label" for="pr-fn"><b>제목</b> <span class='text-danger'>*</span></label>
                  <input class="form-control form-control-lg" type="text" id="pr-fn" placeholder="글 제목을 입력하세요" required>
                </div>
                
                <div class="col-sm-6 mb-4">
                    <label class="form-label" for="pr-fn"><b>평점</b><span class='text-danger'>*</span></label><br>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                         1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                    <label class="form-check-label" for="flexRadioDefault2">
                         2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                    <label class="form-check-label" for="flexRadioDefault3">
                         3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault4">
                    <label class="form-check-label" for="flexRadioDefault4">
                         4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault5">
                    <label class="form-check-label" for="flexRadioDefault5">
                         5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                    </label>
                </div>
                <div class="col-sm-6 mb-4">
                </div>
                <div class="col-sm-6 mb-4">
                  <label class="form-label" for="pr-country"><b>분류</b> <span class='text-danger'>*</span></label>
                  <select class="form-select form-select-lg" id="pr-country" required>
                    <option value="" disabled selected>항목을 선택하세요.</option>
                    <option value="Australia">병원</option>
                    <option value="Belgium">약국</option>
                    <option value="Canada">의약품</option>
                    
                  </select>
                </div>
                <div class="col-sm-6 mb-4">
                  
                </div>
                <div class="col-12 mb-4">
                    <label class="form-label" for="pr-description"><b>내용</b> <span class='text-danger'>*</span></label>
                    <textarea style="resize: none;"class="form-control" rows="7" id="pr-description" placeholder="500자 이내로 작성해주세요."></textarea>
                </div>

                <div class="col-12 mb-4">
                  <div class="mb-3">
                  <!-- Image -->
                  <div class="position-relative">
                    <label class="form-label" for="pr-country"><b>파일 <span class='text-danger'>올리기</span></b></label>
                    <label class="w-100" style="cursor:pointer;">
                      <span> 
                        <input class="form-control" type="file" name="my-image" id="image" accept="image/gif, image/jpeg, image/png">
                      </span>
                    </label>
                  </div>
                  <p class="small mb-0 mt-2"><i class="fi-alert-triange text-danger fs-5 mt-n1 me-2"></i><b class='text-danger'>주의 :</b> JPG, JPEG, PNG의 이미지 파일만 업로드 가능합니다.</p>
                  </div>
                </div>
               
              
            
              <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5">
                <a class="btn btn-primary btn-lg rounded-pill ms-sm-auto"type="submit">제출<i class="fi-chevron-right fs-sm ms-2"></i></a>
              </div>
            </div>
        </form>
            <!-- Navigation-->
          </div>
        </div>
      </div>
    </main>
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

