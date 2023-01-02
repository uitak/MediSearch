<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| My Page | 보안" />
</jsp:include>

      <!-- Page content-->
      <div class="container pt-5 pb-lg-4 mt-5 mb-sm-2">
        <!-- Breadcrumb-->
        <nav class="mb-4 pt-md-3" aria-label="Breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="medisearch-member-info.html">My Page</a></li>
            <li class="breadcrumb-item active" aria-current="page">비밀번호 재설정</li>
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
                  <a class="card-nav-link active" onclick="location.href='${path}/member/security';" style="cursor: pointer;"><i class="fi-lock opacity-60 me-2"></i>비밀번호 재설정</a>
                  <a class="card-nav-link" onclick="location.href='${path}/member/favorites';" style="cursor: pointer;"><i class="fi-heart opacity-60 me-2"></i>즐겨찾기</a>
                  <a class="card-nav-link" onclick="location.href='${path}/member/reviews';" style="cursor: pointer;"><i class="fi-star opacity-60 me-2"></i>리뷰</a>
                  <a class="card-nav-link" onclick="location.replace('${path}/logout')" style="cursor:pointer;"><i class="fi-logout opacity-60 me-2"></i>로그아웃</a>
                </div>
              </div>
            </div>
          </aside>
          <!-- Content-->
          <div class="col-lg-8 col-md-7 mb-5">
            <h1 class="h2">비밀번호 재설정</h1>
            <p class="pt-1">비밀번호 설정을 관리하고 계정을 보호하세요!</p>
            <div class="progress mb-4" style="height: .25rem;">
              <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <form class="needs-validation pb-4" action="${path}/member/security" method="POST" novalidate>
              <div class="row align-items-end mb-2">
                <div class="col-sm-6 mb-2">
                  <label class="form-label" for="pass1">현재 비밀번호</label>
                  <div class="password-toggle">
                    <input class="form-control" type="password" id="pass1" name="password" required> <!-- account-password -->
                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                  </div>
                </div>
                <div class="col-sm-6 mb-2"><a class="d-inline-block mb-2" href="#">비밀번호를 잊으셨나요?</a></div>
              </div>
              <div class="row mb-2">
                <div class="col-sm-6 mb-3">
                  <label class="form-label" for="account-password-new">새 비밀번호</label>
                  <div class="password-toggle">
                    <input class="form-control" type="password" id="account-password-new" name="userPwd" required> <!-- id="account-password-new" -->
                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                  </div>
                  <p class="fs-xs text-danger mb-0" id="pwCheck1"></p>
                </div>
                <div class="col-sm-6 mb-3">
                  <label class="form-label" for="account-password-confirm">비밀번호 확인</label>
                  <div class="password-toggle">
                    <input class="form-control" type="password" id="account-password-confirm" required>
                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                  </div>
                  <p class="fs-xs text-danger mb-0" id="pwCheck2"></p>
                </div>
              </div>
              <button class="btn btn-outline-primary" id="updatePwd" type="submit">비밀번호 수정</button>
            </form>
		    <script>
		      $(function() {
		        // 비밀번호 유효성 검사
		        let check = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
		        $("#account-password-new").on("change keyup paste", () => {
		          let pw = $("#account-password-new").val();
		
		          if(check.test(pw) == false) {
		            $("#pwCheck1").text("비밀번호는 영문, 숫자 포함 8자리 이상이여야 합니다.");
		          }
		          else {
		            $("#pwCheck1").text("");
		          }
		        });
		
		        // 비밀번호 일치 확인
		        $("#account-password-confirm").on("change keyup paste", (event) => {
		          let pw1 = $("#account-password-new").val().trim();
		          let pw2 = $(event.target).val().trim();
		  
		          if(pw1 != pw2) {
		            $("#pwCheck2").text("비밀번호가 일치하지 않습니다.");
		          }
		          else {
		            $("#pwCheck2").text("");
		          }
		        });
		      });
		    </script>
            <div class="border-top pt-4 mt-3"></div>
          </div>
        </div>
      </div>
    </main>
    
    
<jsp:include page="/WEB-INF/views/common/footer.jsp" />


