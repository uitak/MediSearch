<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>MediSearch ${param.title}</title>
  <!-- SEO Meta Tags-->
  <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
  <meta name="keywords"
    content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
  <meta name="author" content="Createx Studio">
  <!-- Viewport-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon and Touch Icons-->
  <link rel="apple-touch-icon" sizes="180x180" href=".${path}/resources/img/medisearch/logo_final.jpg">
  <link rel="icon" type="image/png" sizes="32x32" href="${path}/resources/img/medisearch/logo_final.jpg">
  <link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/img/medisearch/logo_final.jpg">
<!--   <link rel="manifest" href="site.webmanifest"> -->
  <link rel="mask-icon" color="#5bbad5" href="safari-pinned-tab.svg">
  <meta name="msapplication-TileColor" content="#766df4">
  <meta name="theme-color" content="#ffffff">
  
  <!-- Page loading styles-->
  <link href="${path}/resources/css/page.css" rel="stylesheet">
  <link href="${path}/resources/custom-css/custom.css" rel="stylesheet">

  <!-- blogzine stylesheet -->
  <link id="style-switch" rel="stylesheet" type="text/css" href="${path}/resources/blogzine/template/assets/css/style.css">
  <!-- Plugins CSS -->""
  <link rel="stylesheet" type="text/css" href="${path}/resources/blogzine/template/assets/vendor/font-awesome/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="${path}/resources/blogzine/template/assets/vendor/bootstrap-icons/bootstrap-icons.css">
  <link rel="stylesheet" type="text/css" href="${path}/resources/blogzine/template/assets/vendor/apexcharts/css/apexcharts.css">
  <link rel="stylesheet" type="text/css"
    href="${path}/resources/blogzine/template/assets/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">
  <style>
  	body {
	    -webkit-user-select:none;
	    -moz-user-select:none;
	    -ms-user-select:none;
	    user-select:none
    }
    .hv-btn {
      border: none;
    }

    .hv-btn:hover {
      box-shadow: 0px 0px 8px rgb(205, 205, 205);
      border: 1px solid rgb(255, 158, 84);
    }

    .img-icons {
      width: 38px;
      height: 38px;
    }

    .community:hover {
      color: rgb(255, 111, 75);
    }

    .active-btn {
      background-color: rgb(255, 158, 84);
      color: white;
      font-weight: 700;
    }

    .container {
      margin-top: -20px;
    }

    .container-blogzine {
      margin-bottom: 100px;
    }

    h6>a {
      text-decoration: none;
    }

    .course-title :hover {
      color: rgb(255, 111, 75);
    }

    #goComunity{
      text-decoration: none;
    }
    #goComunity:hover{
      color: black;
    }
  </style>

  <!-- ????????? -->
  <style>
    .tab_pages {
      position: relative;
      z-index: 50;
    }

    #box-1, #box-2, #box-3, #review_list_1,#review_list_2,#review_list_3 {
      display: none;
    }
  </style>
  
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      let review = document.querySelector("#tab-1");
      let qa = document.querySelector("#tab-2");
      let board = document.querySelector("#tab-3");
      
      let review0 = document.querySelector("#review_0");
      let review1 = document.querySelector("#review_1");
      let review2 = document.querySelector("#review_2");
      let review3 = document.querySelector("#review_3");

      review.addEventListener('click',()=>{
        document.getElementById("box-0").style.display="none";
        document.getElementById("box-1").style.display="block";
        document.getElementById("box-2").style.display="none";
        document.getElementById("box-3").style.display="none";
      });

      qa.addEventListener('click',()=>{
        document.getElementById("box-0").style.display="none";
        document.getElementById("box-1").style.display="none";
        document.getElementById("box-2").style.display="block";
        document.getElementById("box-3").style.display="none";
      });

      board.addEventListener('click',()=>{
        document.getElementById("box-0").style.display="none";
        document.getElementById("box-1").style.display="none";
        document.getElementById("box-2").style.display="none";
        document.getElementById("box-3").style.display="block";
      });

      review0.addEventListener('click',()=>{
        document.getElementById("review_list_0").style.display="block";
        document.getElementById("review_list_1").style.display="none";
        document.getElementById("review_list_2").style.display="none";
        document.getElementById("review_list_3").style.display="none";
      });

      review1.addEventListener('click',()=>{
        document.getElementById("review_list_0").style.display="none";
        document.getElementById("review_list_1").style.display="block";
        document.getElementById("review_list_2").style.display="none";
        document.getElementById("review_list_3").style.display="none";
      });

      review2.addEventListener('click',()=>{
        document.getElementById("review_list_0").style.display="none";
        document.getElementById("review_list_1").style.display="none";
        document.getElementById("review_list_2").style.display="block";
        document.getElementById("review_list_3").style.display="none";
      });

      review3.addEventListener('click',()=>{
        document.getElementById("review_list_0").style.display="none";
        document.getElementById("review_list_1").style.display="none";
        document.getElementById("review_list_2").style.display="none";
        document.getElementById("review_list_3").style.display="block";
      });
    });

  </script>

  <!-- Page loading scripts-->
  <script src="${path}/resources/js/page.js"></script>
  
  <script src="${path}/resources/js/jquery-3.6.1.min.js"></script>
  
  <!-- Vendor Styles-->
  <link rel="stylesheet" media="screen" href="${path}/resources/vendor/simplebar/dist/simplebar.min.css" />
  <link rel="stylesheet" media="screen" href="${path}/resources/vendor/tiny-slider/dist/tiny-slider.css" />
  <!-- Main Theme Styles + Bootstrap-->
  <link rel="stylesheet" media="screen" href="${path}/resources/css/theme.min.css">
  
  
  <!-- ????????? ????????? ?????? api ?????? -->
  	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
    function execDaumPostcode() {
    	  new daum.Postcode({
    	    oncomplete: function(data) {
    	      // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

    	      // ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
    	      // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
    	      var fullRoadAddr = data.roadAddress; // ????????? ?????? ??????
    	      var extraRoadAddr = ''; // ????????? ????????? ?????? ??????

    	      // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
    	      // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
    	      if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
    	        extraRoadAddr += data.bname;
    	      }
    	      // ???????????? ??????, ??????????????? ?????? ????????????.
    	      if(data.buildingName !== '' && data.apartment === 'Y'){
    	        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
    	      }
    	      // ?????????, ?????? ????????? ????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
    	      if(extraRoadAddr !== ''){
    	        extraRoadAddr = ' (' + extraRoadAddr + ')';
    	      }
    	      // ?????????, ?????? ????????? ????????? ?????? ?????? ????????? ????????? ????????????.
    	      if(fullRoadAddr !== ''){
    	        fullRoadAddr += extraRoadAddr;
    	      }

    	      // ??????????????? ?????? ????????? ?????? ????????? ?????????.
    	      document.getElementById('signup-address').value = fullRoadAddr;
    	      document.getElementById("signup-address").focus();
    	     
    	    }
    	  }).open();
    	}
	</script>
	<!-- ????????? ????????? ?????? api ??? -->
  
  
</head>
<!-- Body-->

<body>
  <!-- Page loading spinner-->
  <div class="page-loading active">
    <div class="page-loading-inner">
      <div class="page-spinner"></div><span>Loading...</span>
    </div>
  </div>

  <main class="page-wrapper">
    <!--????????? / ???????????? -->
    <!-- ????????? Modal -->
      <div class="modal fade" id="signin-modal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
          <div class="modal-content">
            <div class="modal-body px-0 py-2 py-sm-0">
              <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
              <div class="row mx-0 align-items-center">
                <div class="col-md-6 border-end-md p-2 p-sm-5">
                  <h2 class="h3  mb-sm-2">?????????</h2><h2 class="h4 mb-4 mb-sm-5" style="color: #666276;">?????? ????????? ???????????? :)</h2><img class="d-block mx-auto" src="${path}/resources/img/signin-modal/signin.svg" width="344" alt="Illustartion">
                  <div class="mt-4 mt-sm-5">?????? ????????? ???????????????? <a href="#signup-modal" data-bs-toggle="modal" data-bs-dismiss="modal">????????????</a></div>
                </div>
                <div class="col-md-6 px-4 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5" onclick="kakaoLogin();">
                <a class="btn kakao rounded-pill w-100 mb-3" href="javascript:void(0)" style="color: #1a1a1c; background-color: #fee500; border-color: #fee500;"><i class="fi-chat-circle fs-lg me-1"></i>KAKAO ?????????</a>
                  <div class="d-flex align-items-center py-3 mb-3">
                    <hr class="w-100">
                    <div class="px-3">OR</div>
                    <hr class="w-100">
                  </div>
                  <c:if test="${loginMember == null}">
                  <form class="needs-validation" action="${path}/login" method="post" onsubmit="return frm_check();" novalidate>
                    <div class="mb-4">
                      <label class="form-label mb-2" for="userId">ID</label>
                      <input class="form-control" type="text" id="userId" name="userId" placeholder="?????????" required>
                    </div>
                    <div class="mb-4">
                      <label class="form-label mb-2" for="userPwd">Password</label>
                      <div class="password-toggle">
                        <input class="form-control" type="password" id="userPwd" name="userPwd" placeholder="????????????" required>
                        <label class="password-toggle-btn" aria-label="Show/hide password">
                          <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        </label>
                      </div>
                    </div>
                    <div class="d-flex align-items-center justify-content-between mb-2">
                      <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="dropdownCheck" name="saveId">
                        <label for="dropdownCheck" class="form-check-label">????????? ??????</label>
                      </div>
                      <a class="fs-sm" href="#">???????????? ??????</a>
                    </div>
                    <button class="btn btn-primary btn-lg w-100" type="submit" id="loginbtn" name="loginbtn">?????????</button>
                  </form>
                 </c:if>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- ???????????? Modal-->
      <div class="modal fade" id="signup-modal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered p-2 my-0 mx-auto" style="max-width: 950px;">
          <div class="modal-content">
            <div class="modal-body px-0 py-2 py-sm-0">
              <button class="btn-close position-absolute top-0 end-0 mt-3 me-3" type="button" data-bs-dismiss="modal"></button>
              <div class="row mx-0 align-items-center">
                <div class="col-md-6 border-end-md p-4 p-sm-5">
                  <h2 class="h3  mb-sm-2">????????????</h2><h2 class="h4 mb-4 mb-sm-5" style="color: #fd5631;">??????????????? ?????? ?????????</h2>
                  <ul class="list-unstyled mb-4 mb-sm-5">
                    <li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>?????? ???????????? ?????? ????????? ??????</span></li>
                    <li class="d-flex mb-2"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>???????????? ????????? ??? ?????? ???????????? ??????</span></li>
                    <li class="d-flex mb-0"><i class="fi-check-circle text-primary mt-1 me-2"></i><span>???????????? ???????????? ????????? ????????? ??????</span></li>
                  </ul><img class="d-block mx-auto" src="${path}/resources/img/signin-modal/signup.svg" width="344" alt="Illustartion">
                  <div class="mt-sm-4 pt-md-3">?????? ???????????? ??????????????????? <a href="#signin-modal" data-bs-toggle="modal" data-bs-dismiss="modal">?????????</a></div>
                </div>
                <div class="col-md-6 px-2 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn kakao rounded-pill w-100 mb-3" href="#" style="color: #1a1a1c; background-color: #fee500; border-color: #fee500;"><i class="fi-chat-circle fs-lg me-1"></i>KAKAO ???????????? ????????????</a><a class="btn naver rounded-pill w-100 mb-3" href="#" style="color: #fff; background-color: #03c75a; border-color: #03c75a;">NAVER ???????????? ????????????</a>

                  <div class="d-flex align-items-center py-3 mb-3">
                    <hr class="w-100">
                    <div class="px-3">OR</div>
                    <hr class="w-100">
                  </div>
                   <form action="${path}/member/enroll" method="post" class="needs-validation" novalidate>
                    <div class="mb-2">
                      <label class="form-label" for="userId">?????????</label>
                      <div class="input-group">
                        <span class="input-group-text"><i class="fi-user"></i></span>
                        <input class="form-control" type="text" id="newId" name="userId" placeholder="?????????">
                        <input class="btn btn-outline-primary fs-sm" type="button" id="checkDuplicate" value="????????????" disabled>
                      </div>
                      <div class="fs-xs text-danger mb-0" id="idCheck"></div>
                    </div>
                    <div class="mb-2">
                      <div class="d-flex justify-content-between">
                        <label class="form-label" for="pass1">????????????</label>
                        <div class='fs-sm text-muted'>?????? / ?????? /???????????? ?????? 8?????? ??????</div>
                      </div>
                      <div class="input-group password-toggle">
                        <span class="input-group-text"><i class="fi-lock"></i></span>
                        <input class="form-control" type="password" id="pass1" minlength="8" required>
                        <label class="password-toggle-btn" aria-label="Show/hide password">
                          <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        </label>
                      </div>
                      <p class="fs-xs text-danger mb-0" id="pwCheck1"></p>
                    </div>
                    <div class="mb-2">
                      <label class="form-label" for="pass2">???????????? ??????</label>
                      <div class="input-group password-toggle">
                        <span class="input-group-text"><i class="fi-lock"></i></span>
                        <input class="form-control" type="password" id="pass2" minlength="8" required>
                        <label class="password-toggle-btn" aria-label="Show/hide password">
                          <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                        </label>
                      </div>
                      <div class="fs-xs text-danger mb-0"  id="pwCheck2"></div>
                    </div>
                    <div class="mb-2">
                      <label class="form-label" for="signup-name">??????</label>
                      <input class="form-control" type="text" id="signup-name" name="name"  placeholder="??????" required>
                    </div>
                    <div class="mb-2">
                      <label class="form-label" for="signup-email">?????????</label>
                      <input class="form-control" type="email" id="signup-email" name="email" placeholder="?????????" required>
                    </div>
                    
                    
                    <div class="mb-2">
                      <label class="form-label" for="signup-address">??????</label>
                      <input class="form-control" type="text" id="signup-address" name="address"  onclick="javascript:execDaumPostcode()" placeholder="??????" required>
                    </div>
                    
                    
                    
                    <div class="form-check mb-4">
                      <input class="form-check-input" type="checkbox" id="agree-to-terms" required>
                      <label class="form-check-label" for="agree-to-terms">???????????? <a href="#">????????????</a> ??? <a href="#">????????????????????????</a>???<br>???????????????.</label>
                    </div>
                    <button id="signUp" class="btn btn-primary btn-lg w-100" type="submit" disabled>????????????</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <!-- navbar-->
    <header class="navbar navbar-expand-lg navbar-light bg-light fixed-top" data-scroll-header style="height: 90px;">
      <div class="container" style="margin: 0px auto; padding: 12px;"><a class="navbar-brand me-3 me-xl-4"
          href="${path}"><img class="d-block" src="${path}/resources/img/medisearch/logo_final.jpg" width="100"
            alt="Finder"></a>
        <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span
            class="navbar-toggler-icon"></span></button>
        
      <!-- ????????? ?????? ?????? -->
      <c:if test="${loginMember == null}">
          <form class="btn btn-sm d-none d-lg-block order-lg-3" style="border-style: none;"action="${path}/login" method="post">
          <a href="#signin-modal" data-bs-toggle="modal" style="text-decoration: none;"><i class="fi-user me-2" style="font-size: 1.1rem; "></i>?????????</a>
          </form>
        </c:if>
 
         
          <!-- ????????? ??? ?????? -->
		<c:if test="${ loginMember != null }">
      	  <div class="dropdown d-none d-lg-block order-lg-3 my-n2 me-3"><a class="d-block py-2" onclick="location.href='${path}/member/info';"><img class="rounded-circle" src="${path}/resources/img/avatars/14.png" width="40" alt="Annette Black"></a>
            <div class="dropdown-menu dropdown-menu-end">
              <div class="d-flex align-items-start border-bottom px-3 py-1 mb-2" style="width: 16rem;"><img class="rounded-circle" src="${path}/resources/img/avatars/14.png" width="48" alt="Annette Black">
                <div class="ps-2">
                  <h6 class="fs-base mb-0">${loginMember.name} ???</h6>
                  <div class="fs-xs py-2">${loginMember.email}</div>
                </div>
              </div>
              <a class="dropdown-item" onclick="location.href='${path}/member/info';" style="cursor: pointer;"><i class="fi-user opacity-60 me-2"></i>????????????</a> <!--  href="${path}| My Page" -->
              <a class="dropdown-item" onclick="location.href='${path}/member/security';" style="cursor: pointer;"><i class="fi-lock opacity-60 me-2"></i>???????????? ?????????</a>
              <a class="dropdown-item" onclick="location.href='${path}/member/favorites';" style="cursor: pointer;"><i class="fi-heart opacity-60 me-2"></i>????????????</a>
              <a class="dropdown-item" onclick="location.href='${path}/member/reviews';" style="cursor: pointer;"><i class="fi-star opacity-60 me-2"></i>??????</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" onclick="location.replace('${path}/logout')" style="cursor:pointer;">????????????</a>
            </div>
          </div>		  
		   </c:if>	  

        <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
          <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
            <!-- Menu items-->
            <!-- Menu items-->
              <li class="nav-item dropdown active"><a class="nav-link" href="${path}/search/emergency.do" role="button" aria-expanded="false" style="font-size: 1.1rem;">?????????</a></li>
              <li class="nav-item dropdown active"><a class="nav-link" href="${path}/search/holiday" role="button" aria-expanded="false" style="font-size: 1.1rem;">????????? ????????????</a></li>
              <li class="nav-item dropdown"><a class="nav-link" href="${path}/search/hospital" role="button" aria-expanded="false" style="font-size: 1.1rem;">??????</a></li>
              <li class="nav-item dropdown"><a class="nav-link" href="${path}/search/pharmacy" role="button" aria-expanded="false" style="font-size: 1.1rem;">??????</a></li>
              <li class="nav-item dropdown"><a class="nav-link" href="${path}/search/pill" role="button" aria-expanded="false" style="font-size: 1.1rem;">?????????</a></li>
              <li class="nav-item dropdown"><a class="nav-link" href="${path}/board/communityList" role="button" aria-expanded="false" style="font-size: 1.1rem;">?????????</a></li>
          </ul>
        </div>
      </div>
      
           <!-- ????????? ?????? -->
	<script src="${path}/resources/js/saveid.js"></script>
	
	<!-- ???????????? ????????? ??????
	header??? ????????? ?????? ?????? footer??? ?????? ?????? ????????? header??? footer??? ??? ??? ????????? ???????????? ??? ????????????.. 
	???????????? ?????? ???????????? ??????.. -->
		<script  type="text/javascript">
		$(function() {
			$("#pass2").blur((event) => {
				let pass1 = $("#pass1").val();			
				let pass2 = $(event.target).val();
				
				if(pass1.trim() != pass2.trim()) {
					alert("??????????????? ???????????? ????????????.");
					
					$("#pass1").val("");
					$(event.target).val("");
					$("#pass1").focus();
				}
			});
		    // ????????? ????????? ???????????? AJAX ??????
		    $("#checkDuplicate").on("click", () => {
		    	let userId = $("#newId").val().trim();
		    	
		    	if(userId.length < 5){
		    		alert("???????????? ?????? 5?????? ??????????????? ?????????.")
		    		return;
		    	}	
		    	$.ajax({
		    		type:"get",
		    		url:"${path}/member/idCheck",
		    		data:{userId}, // ???????????? ????????? ?????? ????????? ????????? ???????????? key-value ?????????.
		    		success:
		    			(data)=>{ // validate key???
		    				console.log(data);
		    				if(data.validate === true){
		    					alert("?????? ???????????? ??????????????????.")
		    				} else{
		    					alert("?????? ???????????????.")
		    				}
		    			},
		    		error:
		    			(e)=>{
							console.log(e);	    				
		    			}
		    	});
		    });
        // ???????????? ??? ???????????????????????? ?????? ??????
        $("#agree-to-terms").on("change", () => {
          if($("#agree-to-terms").is(":checked") == true) {
            $("#signUp").removeAttr("disabled");
          }
          else {
            $("#signUp").attr("disabled", "true");
          }
        });
      }); 
    </script>
	
    </header>
    
    
      