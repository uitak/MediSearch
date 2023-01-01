<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param name="title" value="| 커뮤니티" />
</jsp:include>

<c:set var="searchType" value="${param.searchType}"/>
<c:if test="${empty searchType}">
	<c:set var="searchType" value="${'title'}"/>
</c:if>



    <!-- 헤더 이미지 부분 -->
    <!-- Page header-->
    <section class="mt-5 pt-4">
      <!-- Parallax container-->
      <div class="jarallax mt-2" data-jarallax data-speed="1.0">
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
              <li class="breadcrumb-item active" aria-current="page"><a href="${path}/board/communityList" style="color: white;">Community</a></li>
            </ol>
          </nav>
          <!-- Text-->
          <div class="col-md-6 col-sm-8 py-md-5 py-4 px-0">
            <h1 class="display-4 mb-4 pb-md-2" style="color: black; font-size: 3.8rem;"><a href="#" id="goComunity"> &nbsp;Community</a></h1>
            <p class="mb-sm-5 mb-4 pb-md-5 pb-3 lead" style="color: rgb(255, 115, 55);"> &nbsp;&nbsp;&nbsp;&nbsp;병원, 약국, 의약품, 질병에 대한 의견을 나눌 수 있습니다.</p>
          </div>
        </div>
      </div>
    </section>


    <!-- blogzine 코드 시작 -->
    <!-- ======================= Main contain START -->
    <section class="py-4">
      <div class="container container-blogzine">
        <div class="row pb-4">


          <div class="row g-4 tab-container" style="display: flex; justify-content: space-between;">

            <div class="col-md-6 col-xl-4" style="width: 313px;">
              <!-- Category item START -->
              <div class="card border h-100">
                <!-- Card header -->
                <div class="card-header border-bottom p-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-lg shadow bg-body rounded-circle" ><img class="img-icons"
                        src="${path}/resources/blogzine/template/assets/images/MediSearch/icons/free-forum.png"></div>
                    <h3 class="mb-0 ms-3">자유게시판</h3>
                  </div>
                </div>

                <!-- Card body START -->
                <div class="card-body p-3">
                  <!-- Followers and Post -->
                  <div class="d-flex justify-content-between">
                    <!-- Total post -->
                    <div>
                      <h6 class="mb-0" style="font-weight: 400;">전체 포스트</h6>
                      <h5 class="mb-0">${boardCount}</h5>
                    </div>
                    <div class="tab-list">
                      <div id="tab-3" class="btn btn-primary-soft w-100 mb-0 hv-btn"
                        style="background-color: rgb(255, 158, 84); color: white; font-weight: 700;"><b>포스트 더보기</b></div>
                    </div>
                  </div>
                </div>
                <!-- Card body END -->
              </div>
              <!-- Category item END -->
            </div>

            <div class="col-md-6 col-xl-4" style="width: 313px;">
              <!-- Category item START -->
              <div class="card border h-100">
                <!-- Card header -->
                <div class="card-header border-bottom p-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-lg shadow bg-body rounded-circle"><img class="img-icons"
                        src="${path}/resources/blogzine/template/assets/images/MediSearch/icons/review-color.png"></div>
                    <h3 class="mb-0 ms-3">리뷰</h3>
                  </div>
                </div>

                <!-- Card body START -->
                <div class="card-body p-3">
                  <!-- Followers and Post -->
                  <div class="d-flex justify-content-between">
                    <!-- Total post -->
                    <div>
                      <h6 class="mb-0" style="font-weight: 400;">전체 포스트</h6>
                      <h5 class="mb-0">${reviewCount}</h5>
                    </div>
                    <div class="tab-list">
                      <div id="tab-1" class="btn btn-primary-soft w-100 mb-0 hv-btn"
                        style="background-color: rgb(255, 158, 84); color: white; font-weight: 700;"><b>포스트 더보기</b></div>
                    </div>
                  </div>
                </div>
                <!-- Card body END -->
              </div>
              <!-- Category item END -->
            </div>

            <div class="col-md-6 col-xl-4" style="width: 313px;">
              <!-- Category item START -->
              <div class="card border h-100">
                <!-- Card header -->
                <div class="card-header border-bottom p-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-lg shadow bg-body rounded-circle"><img class="img-icons"
                        src="${path}/resources/blogzine/template/assets/images/MediSearch/icons/qa-color.png"></div>
                    <h3 class="mb-0 ms-3">Q&A</h3>
                  </div>
                </div>

                <!-- Card body START -->
                <div class="card-body p-3">
                  <!-- Followers and Post -->
                  <div class="d-flex justify-content-between" style="display: flex;">
                    <!-- Total post -->
                    <div>
                      <h6 class="mb-0" style="font-weight: 400;">전체 포스트</h6>
                      <h5 class="mb-0">${qnaCount}</h5>
                    </div>
                    <div class="tab-list">
                      <div id="tab-2" class="btn btn-primary-soft w-100 mb-0 hv-btn"
                        style="background-color: rgb(255, 158, 84); color: white; font-weight: 700;"><b>포스트 더보기</b></div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Category item END -->
            </div>

            <div class="col-md-6 col-xl-4" style="width: 313px;">
              <!-- Category item START -->
              <div class="card border h-100">
                <!-- Card header -->
                <div class="card-header border-bottom p-3">
                  <div class="d-flex align-items-center">
                    <a href="${path}/board/help" class="icon-lg shadow bg-body rounded-circle"><img class="img-icons" src="${path}/resources/blogzine/template/assets/images/MediSearch/icons/operator-color.png"></a>
                    <h3 class="mb-0 ms-3">고객센터</h3>
                  </div>
                </div>

                <!-- Card body START -->
                <div class="card-body p-3">
                  <!-- Followers and Post -->
                  <div class="d-flex justify-content-between">
                    <!-- Total post -->
                    <div>
                      <h6 class="mb-0" style="font-weight: 400;">전체 포스트</h6>
                      <h5 class="mb-0"></h5>
                    </div>
                    <div>
                      <a href="${path}/board/help"><div class="btn btn-primary-soft w-100 mb-0 hv-btn" style="background-color: rgb(255, 158, 84); color: white; font-weight: 700;"><b>포스트 더보기</b></div></a>
                    </div>
                  </div>

                </div>
                <!-- Card body END -->
              </div>
              <!-- Category item END -->
            </div>

<!-- 공지사항 -->

            <div class="tab_pages">
              <div class="col-12 box-route" style="margin-top: 80px;" id="box-0">
                <!-- Blog list table START -->
                <div class="card border bg-transparent rounded-3">
                  <!-- Card header START -->
                  <div class="card-header bg-transparent border-bottom p-3">
                    <div class="d-sm-flex justify-content-sm-between align-items-center">
                      <h5 class="mb-2 mb-sm-0">공지사항 <span class="badge"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; opacity: 90%;">${noticeCount}</span>
                      </h5>
                      <c:if test="${loginMember != null}">
                      	<c:if test="${loginMember.role eq 'ADMIN'}">
	                      <a class="btn btn-sm  mb-0 hv-btn" href="${path}/board/postNotice" style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">
	                      	<i class="fas fa-plus me-2"></i>글쓰기
	                      </a>
                      	</c:if>
                      </c:if>
                    </div>
                  </div>
                  <!-- Card header END -->


                  <!-- Card body START -->
                  <div class="card-body p-3">

                    <!-- Search and select START -->
                    <div class="row g-3 align-items-center justify-content-between mb-3">
                      <!-- Search -->
                      <div class="col-md-8">
                        <form class="rounded position-relative">
                          <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                          <button
                            class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y"
                            type="submit"><i class="fas fa-search fs-6 "></i></button>
                        </form>
                      </div>

                      <!-- Select option -->
                      <div class="col-md-3">
                        <!-- Short by filter -->
                        <form>
                          <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                            <option value="">최신순</option>
                            <option>조회수</option>
                            <option>제목 오름차순</option>
                            <option>제목 내림차순</option>
                          </select>
                        </form>
                      </div>
                    </div>
                    <!-- Search and select END -->



                    <!-- Blog list table START -->
                    <div class="table-responsive border-0">
                      <table class="table table-dark-gray align-middle p-4 mb-0  table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">조회수</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>
                        <!-- Table body START -->
                        <tbody>
							<c:if test="${empty noticeList}">
								<tr>
									<td colspan="5" align="center" valign="middle">조회된 공지사항이 없습니다</td>
								</tr>
							</c:if>
							<c:if test="${not empty noticeList}">
								<c:forEach var="notice" items="${noticeList}">
									<tr onclick="board(${notice.boardNo});"  style="cursor:pointer;">
			                            <!-- Table data -->
			                            <td>${notice.title}</td>
			                            <!-- Table data -->
			                            <td>관리자</td>
			                            <!-- Table data -->
			                            <td>${notice.views}</td>
			                            <!-- Table data -->
			                            <td><fmt:formatDate type="date" value="${notice.createDate}"/></td>
			                            <!-- Table data -->
			                            <td>
			                              <div class="d-flex gap-2">
			                                <a href="" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
			                                <a href="" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
			                              </div>
			                            </td>
	                          		</tr>
								</c:forEach>
							</c:if>
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
                    <!-- Pagination START -->
                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                      <!-- Content -->
<!--                       <p class="mb-sm-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p> -->
                      <!-- Pagination -->
                      <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                          <li class="page-item disabled">
                            <a class="page-link" href="" tabindex="-1" aria-disabled="true">&lt;&lt;</a>
                          </li>
                          <li class="page-item"><a class="page-link" href="">1</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">2</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">..</a></li>
                          <li class="page-item"><a class="page-link" href="">15</a></li>
                          <li class="page-item">
                            <a class="page-link" href="#">&gt;&gt;</a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                    <!-- Pagination END -->
                  </div>
                </div>
              </div>
              <!-- 자유게시판 -->
              <div class="col-12 box-route" style="margin-top: 80px;" id="box-3">
                <div class="card border bg-transparent rounded-3">
                  <!-- Card header START -->
                  <div class="card-header bg-transparent border-bottom p-3">
                    <div class="d-sm-flex justify-content-sm-between align-items-center">
                      <h5 class="mb-2 mb-sm-0">자유게시판 <span class="badge"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; opacity: 90%;">${boardCount}</span>
                      </h5>
                      <c:if test="${loginMember != null}">
	                      <a class="btn btn-sm  mb-0 hv-btn" href="${path}/board/postBoard" style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">
	                      	<i class="fas fa-plus me-2"></i>글쓰기
	                      </a>
                      </c:if>
                    </div>
                  </div>
                  <!-- Card header END -->


                  <!-- Card body START -->
                  <div class="card-body p-3">

                    <!-- Search and select START -->
                    <div class="row g-3 align-items-center justify-content-between mb-3">
                      <!-- Search -->
                      <div class="col-md-8">
                        <form class="rounded position-relative">
                          <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search" aria-label="Search">
                          <button class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 "></i></button>
                        </form>
                      </div>

                      <!-- Select option -->
                      <div class="col-md-3">
                        <!-- Short by filter -->
                        <form>
                          <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                            <option value="">최신순</option>
                            <option>조회수</option>
                            <option>제목 오름차순</option>
                            <option>제목 내림차순</option>
                          </select>
                        </form>
                      </div>
                    </div>
                    <!-- Search and select END -->



                    <!-- Blog list table START -->
                    <div class="table-responsive border-0">
                      <table class="table table-dark-gray align-middle p-4 mb-0  table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">번호</th>
                            <th scope="col" class="border-0">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">조회수</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>

                        <!-- Table body START -->
                        <tbody>
                        	<c:if test="${empty boardList}">
								<tr>
									<td colspan="6" align="center" valign="middle">조회된 글이 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${not empty boardList}">
								<c:forEach var="board" items="${boardList}">
                          			<!-- Table item -->
	                         		<tr onclick="board(${board.boardNo});" style="cursor:pointer;">
	                            		<!-- Table data -->
	                            		<td>${board.boardNo}</td>
			                            <td><c:out value="${board.title}"/></td>
			                            <!-- Table data -->
			                            <td><c:out value="${board.userId}"/></td>
			                            <!-- Table data -->
			                            <td><c:out value="${board.views}"/></td>
			                            <!-- Table data -->
			                            <td><fmt:formatDate type="date" value="${board.createDate}"/></td>
			                            <!-- Table data -->
			                            <td>
	                              			<div class="d-flex gap-2">
				                                <a href="" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip"
				                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
				                                <a href="" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip"
				                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
	                              			</div>
	                            		</td>
	                          		</tr>
                 				</c:forEach>
							</c:if>
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
                    <!-- Pagination START -->
                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                      <!-- Content -->
<!--                       <p class="mb-sm-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p> -->
                      <!-- Pagination -->
                      <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                          <li class="page-item disabled">
                            <a class="page-link" href="" tabindex="-1" aria-disabled="true">&lt;&lt;</a>
                          </li>
                          <li class="page-item disabled"><a class="page-link" href="">1</a></li>
                          <li class="page-item "><a class="page-link" href="">2</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">..</a></li>
                          <li class="page-item"><a class="page-link" href="">15</a></li>
                          <li class="page-item">
                            <a class="page-link" href="">&gt;&gt;</a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                    <!-- Pagination END -->
                  </div>
                </div>
              </div>
              
<!-- 리뷰 -->
              <div class="col-12 box-route" style="margin-top: 80px;" id="box-1">
                <div class="card border bg-transparent rounded-3">
                  <!-- Card header START -->
                  <div class="card-header bg-transparent border-bottom p-3">
                    <div class="d-sm-flex justify-content-sm-between align-items-center">
                      <h5 class="mb-2 mb-sm-0">리뷰</h5>
                      <span id="review_pages">
                        <span class="btn btn-sm  mb-0 hv-btn" id="review_0"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">전체</span>
                        <span class="btn btn-sm  mb-0 hv-btn" id="review_1"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">병원</span>
                        <span class="btn btn-sm  mb-0 hv-btn" id="review_2"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">약국</span>
                        <span class="btn btn-sm  mb-0 hv-btn" id="review_3"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">의약품</span>
<!--                         <a href="#" class="btn btn-sm  mb-0 hv-btn" -->
<!--                           style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none; margin-left: 30px;"><i -->
<!--                             class="fas fa-plus me-2"></i>글쓰기</a> -->
                      </span>
                    </div>
                  </div>
                  <!-- Card header END -->


                  <!-- Card body START -->
                  <div class="card-body p-3">

                    <!-- Search and select START -->
                    <div class="row g-3 align-items-center justify-content-between mb-3">
                      <!-- Search -->
                      <div class="col-md-8">
                        <form class="rounded position-relative">
                          <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search"
                            aria-label="Search">
                          <button
                            class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y"
                            type="submit"><i class="fas fa-search fs-6 "></i></button>
                        </form>
                      </div>

                      <!-- Select option -->
                      <div class="col-md-3">
                        <!-- Short by filter -->
                        <form>
                          <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                            <option value="">최신</option>
                            <option>별점</option>
                            <option>이름</option>
                          </select>
                        </form>
                      </div>
                    </div>
                    <!-- Search and select END -->

<!-- 리뷰_전체 -->
                    <div class="table-responsive border-0" id="review_list_0">
                      <table class="table table-dark-gray align-middle p-4 mb-0 table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">분류</th>
                            <th scope="col" class="border-0">이름</th>
                            <th scope="col" class="border-0">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">별점</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>

                        <!-- Table body START -->
                        <tbody>
                        
                        	<c:if test="${empty reviewList}">
                        		<tr>
                        			<td colspan="7" align="center" valign="middle">조회된 리뷰가 없습니다.</td>
                        		</tr>
                        	</c:if>
                        	<c:if test="${not empty reviewList}">
                        		<c:forEach var="review" items="${reviewList}">
									<tr onclick="review(${review.reviewNo}, '${review.division}');" style="cursor:pointer;">
										<td>${review.division}</td>
			                            <td>${review.name}</td>
			                            <td>${review.title}</td>
			                            <td>${review.writer}</td>
			                            <td>${review.star}</td>
			                            <td><fmt:formatDate type="date" value="${review.createDate}"/></td>
			                            <td>
			                              <div class="d-flex gap-2">
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
			                              </div>
			                            </td>
									</tr>
                        		</c:forEach>
                        	</c:if>
                        	
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
<!-- 리뷰_병원 -->
                    <div class="table-responsive border-0" id="review_list_1">
                      <table class="table table-dark-gray align-middle p-4 mb-0  table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">분류</th>
                            <th scope="col" class="border-0">이름</th>
                            <th scope="col" class="border-0">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">별점</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>

                        <!-- Table body START -->
                        <tbody>
                        
                        	<c:if test="${empty hospitalReview}">
                        		<tr>
                        			<td colspan="7" align="center" valign="middle">조회된 리뷰가 없습니다.</td>
                        		</tr>
                        	</c:if>
                        	<c:if test="${not empty hospitalReview}">
                        		<c:forEach var="review" items="${hospitalReview}">
									<tr onclick="review(${review.reviewNo}, '${review.division}');" style="cursor:pointer;">
										<td>${review.division}</td>
			                            <td>${review.name}</td>
			                            <td>${review.title}</td>
			                            <td>${review.writer}</td>
			                            <td>${review.star}</td>
			                            <td><fmt:formatDate type="date" value="${review.createDate}"/></td>
			                            <td>
			                              <div class="d-flex gap-2">
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
			                              </div>
			                            </td>
									</tr>
                        		</c:forEach>
                        	</c:if>
                        	
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
<!-- 리뷰_약국 -->
                    <div class="table-responsive border-0" id="review_list_2">
                      <table class="table table-dark-gray align-middle p-4 mb-0  table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">분류</th>
                            <th scope="col" class="border-0">이름</th>
                            <th scope="col" class="border-0">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">별점</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>

                        <!-- Table body START -->
                        <tbody>
                        
                        	<c:if test="${empty pharmacyReview}">
                        		<tr>
                        			<td colspan="7" align="center" valign="middle">조회된 리뷰가 없습니다.</td>
                        		</tr>
                        	</c:if>
                        	<c:if test="${not empty pharmacyReview}">
                        		<c:forEach var="review" items="${pharmacyReview}">
									<tr onclick="review(${review.reviewNo}, '${review.division}');" style="cursor:pointer;">
										<td>${review.division}</td>
			                            <td>${review.name}</td>
			                            <td>${review.title}</td>
			                            <td>${review.writer}</td>
			                            <td>${review.star}</td>
			                            <td><fmt:formatDate type="date" value="${review.createDate}"/></td>
			                            <td>
			                              <div class="d-flex gap-2">
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
			                              </div>
			                            </td>
									</tr>
                        		</c:forEach>
                        	</c:if>
                        	
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
<!-- 리뷰_의약품 -->
                    <div class="table-responsive border-0" id="review_list_3">
                      <table class="table table-dark-gray align-middle p-4 mb-0  table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">분류</th>
                            <th scope="col" class="border-0">이름</th>
                            <th scope="col" class="border-0">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">별점</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>

                        <!-- Table body START -->
                        <tbody>
                        
                        	<c:if test="${empty pillReview}">
                        		<tr>
                        			<td colspan="7" align="center" valign="middle">조회된 리뷰가 없습니다.</td>
                        		</tr>
                        	</c:if>
                        	<c:if test="${not empty pillReview}">
                        		<c:forEach var="review" items="${pillReview}">
									<tr onclick="review(${review.reviewNo}, '${review.division}');" style="cursor:pointer;">
										<td>${review.division}</td>
			                            <td>${review.name}</td>
			                            <td>${review.title}</td>
			                            <td>${review.writer}</td>
			                            <td>${review.star}</td>
			                            <td><fmt:formatDate type="date" value="${review.createDate}"/></td>
			                            <td>
			                              <div class="d-flex gap-2">
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
			                                <a href="" class="btn btn-light btn-round mb-0 ms-0 align-item-center" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
			                              </div>
			                            </td>
									</tr>
                        		</c:forEach>
                        	</c:if>
                        	
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
                    <!-- Pagination START -->
                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                      <!-- Content -->
<!--                       <p class="mb-sm-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p> -->
                      <!-- Pagination -->
                      <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                          <li class="page-item disabled">
                            <a class="page-link" href="" tabindex="-1" aria-disabled="true">&lt;&lt;</a>
                          </li>
                          <li class="page-item"><a class="page-link" href="">1</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">2</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">..</a></li>
                          <li class="page-item"><a class="page-link" href="">15</a></li>
                          <li class="page-item">
                            <a class="page-link" href="">&gt;&gt;</a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                    <!-- Pagination END -->
                  </div>
                </div>
              </div>

              
              
              
<!-- Q&A -->
              <div class="col-12 box-route" style="margin-top: 80px;" id="box-2">
                <div class="card border bg-transparent rounded-3">
                  <!-- Card header START -->
                  <div class="card-header bg-transparent border-bottom p-3">
                    <div class="d-sm-flex justify-content-sm-between align-items-center">
                      <h5 class="mb-2 mb-sm-0">질병 Q&A <span class="badge"
                          style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; opacity: 90%;">${qnaCount}</span>
                      </h5>
                      <c:if test="${loginMember != null}">
	                      <a class="btn btn-sm  mb-0 hv-btn" href="${path}/board/postQna" style="background-color: rgb(255, 158, 84); color: white; font-weight: 700; border: none;">
	                      	<i class="fas fa-plus me-2"></i>글쓰기
	                      </a>
                      </c:if>
                    </div>
                  </div>
                  <!-- Card header END -->


                  <!-- Card body START -->
                  <div class="card-body p-3">

                    <!-- Search and select START -->
                    <div class="row g-3 align-items-center justify-content-between mb-3">
                      <!-- Search -->
                      <div class="col-md-8">
                        <form class="rounded position-relative">
                          <input class="form-control pe-5 bg-transparent" type="search" placeholder="Search"
                            aria-label="Search">
                          <button
                            class="btn bg-transparent border-0 px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6"></i></button>
                        </form>
                      </div>

                      <!-- Select option -->
                      <div class="col-md-3">
                        <!-- Short by filter -->
                        <form>
                          <select class="form-select z-index-9 bg-transparent" aria-label=".form-select-sm">
                            <option value="">최신순</option>
                            <option>조회수</option>
                            <option>제목 오름차순</option>
                            <option>제목 내림차순</option>
                          </select>
                        </form>
                      </div>
                    </div>
                    <!-- Search and select END -->



                    <!-- Blog list table START -->
                    <div class="table-responsive border-0">
                      <table class="table table-dark-gray align-middle p-4 mb-0  table-shrink">
                        <!-- Table head -->
                        <thead>
                          <tr>
                            <th scope="col" class="border-0 rounded-start">질문 유형</th>
                            <th scope="col" class="border-0">제목</th>
                            <th scope="col" class="border-0">작성자</th>
                            <th scope="col" class="border-0">조회수</th>
                            <th scope="col" class="border-0">작성일</th>
                            <th scope="col" class="border-0 rounded-end">수정 / 삭제</th>
                          </tr>
                        </thead>

                        <!-- Table body START -->
                        <tbody>
							<c:if test="${empty qnaList}">
								<tr>
									<td colspan="6" align="center" valign="middle">조회된 Q&A가 없습니다</td>
								</tr>
							</c:if>
							<c:if test="${not empty qnaList}">
								<c:forEach var="qna" items="${qnaList}">
									<tr onclick="board(${qna.boardNo});" style="cursor:pointer;">
			                            <!-- Table data -->
			                            <td>${qna.qType}</td>
			                            <!-- Table data -->
			                            <td>${qna.title}</td>
			                            <!-- Table data -->
			                            <td>${qna.userId}</td>
			                            <!-- Table data -->
			                            <td>${qna.views}</td>
			                            <!-- Table data -->
			                            <td><fmt:formatDate type="date" value="${qna.createDate}"/></td>
			                            <!-- Table data -->
			                            <td>
			                              <div class="d-flex gap-2">
			                                <a href="" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="삭제"><i class="bi bi-trash"></i></a>
			                                <a href="" class="btn btn-light btn-round mb-0" data-bs-toggle="tooltip"
			                                  data-bs-placement="top" title="수정"><i class="bi bi-pencil-square"></i></a>
			                              </div>
			                            </td>
	                          		</tr>
								</c:forEach>
							</c:if>
                        </tbody>
                        <!-- Table body END -->
                      </table>
                    </div>
                    <!-- Blog list table END -->
                    <!-- Pagination START -->
                    <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-4 mt-sm-3">
                      <!-- Content -->
<!--                       <p class="mb-sm-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p> -->
                      <!-- Pagination -->
                      <nav class="mb-sm-0 d-flex justify-content-center" aria-label="navigation">
                        <ul class="pagination pagination-sm pagination-bordered mb-0">
                          <li class="page-item disabled">
                            <a class="page-link" href="" tabindex="-1" aria-disabled="true">&lt;&lt;</a>
                          </li>
                          <li class="page-item"><a class="page-link" href="">1</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">2</a></li>
                          <li class="page-item disabled"><a class="page-link" href="">..</a></li>
                          <li class="page-item"><a class="page-link" href="">15</a></li>
                          <li class="page-item">
                            <a class="page-link" href="#">&gt;&gt;</a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                    <!-- Pagination END -->
                  </div>
                </div>
              </div>
    </section>
<!-- ======================= Main contain END ====================== -->


    <!-- blogzine 코드 끝 -->
<script type="text/javascript">
	
	function board(no) {
		location.href = "${path}/board/postView?boardNo=" + no;
	}
	
	function review(no, type) {
		location.href = "${path}/board/postReview?no=" + no + "&type=" + type;
	}
	

</script>
  </main>
  
<jsp:include page="/WEB-INF/views/common/footer2.jsp" />

