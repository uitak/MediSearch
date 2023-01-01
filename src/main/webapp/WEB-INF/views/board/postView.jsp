<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 글 상세 보기" />
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
                <li class="breadcrumb-item active" aria-current="page">Board</li>
              </ol>
            </nav>
            <!-- Text-->
            <div class="col-md-6 col-sm-8 py-md-5 py-4 px-0">
              <h1 class="display-4 mb-4 pb-md-2" style="color: black; font-size: 3.8rem;"> &nbsp;View Post</h1>
              <p class="mb-sm-5 mb-4 pb-md-5 pb-3 lead" style="color: rgb(255, 115, 55);"> &nbsp;&nbsp;&nbsp;&nbsp;자유롭게 의견을 나누세요.</p>
            </div>
          </div>
        </div>
      </section>
  
      <!-- Page content-->
      <div class="container mt-5 mb-md-4 py-5">

        <!-- Post content-->
        <div class="col-lg">
          <!-- Post meta-->
         
          
          <blockquote class="blockquote mb-4">
            <h1 style="color: rgb(255, 115, 55);"><c:out value="${board.title}"/></h1>
            <footer class="blockquote-footer"> </footer>
          </blockquote>
		
		<div class="border-bottom border-light pb-4 mb-4" style="border-bottom: 1px solid #000000 !important;">
          <h3 class="opacity-0" style="font-size: 1.5rem;" ><c:out value="${board.content}"/></h3>
          </div>
         
          
          <!-- Tags + Sharing-->
         
          <!-- Comments-->
          <div class="mb-4 mb-md-5" id="comments">
            <!-- Comment-->
            <c:if test="${!empty replyList}">
            <c:forEach var="reply" items="${replyList}">
            <div class="border-bottom border-light pb-4 mb-4" style="border-bottom: 1px solid #000000 !important;">
              <p class="opacity-30"><c:out value="${reply.content}"/></p>
              <div class="d-flex justify-content-end align-items-center">
                <div class="d-flex align-items-center pe-2">
                  <div class="ps-2">
                    <h6 class="fs-base mb-0" style="color: rgb(255, 115, 55);"><c:out value="${reply.writerId}"/></h6>
                    <span class="opacity-50 fs-sm"><fmt:formatDate type="date" value="${reply.createDate}"/></span>
                  </div>
                </div>                
              </div>
              
            </div>
            </c:forEach>
            </c:if>
            <c:if test="${empty replyList}">
			
				<p>등록된 리플이 없습니다.</p>
			
			</c:if>
            <!-- Comment-->
            
          </div>
          <!-- Comment form-->
          <c:if test="${loginMember != null}">
          <h3 class="mb-4 pb-sm-2" style="color: rgb(255, 115, 55);">댓글 쓰기</h3>
          <form class="needs-validation row gy-md-4 gy-3 pb-sm-2" action="${path}/board/reply" method="post">
          <div>
          <input type="hidden" name="writerId" value="${loginMember.userId}" readonly>
          <input type="hidden" name="boardNo" value="${board.boardNo}" />
          </div>
            
            <div class="col-12">
              <label class="form-label" for="comment-text"><b>내용</b></label>
              <textarea class="form-control form-control-lg" id="comment-text" rows="4" placeholder="댓글을 작성하세요" name="content" required></textarea>
              <div class="invalid-feedback">Please type your comment.</div>
            </div>
            
            <div class="d-flex flex-column flex-sm-row bg-light rounded-3 p-4 px-md-5">
                <input class="btn btn-primary btn-lg rounded-pill ms-sm-auto" type="submit" value="등록">
              </div>
          </form>
          </c:if>
        </div>
      </div>
    </main>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

