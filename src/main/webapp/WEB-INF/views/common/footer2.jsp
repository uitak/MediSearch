<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
	   
	<!-- Footer-->
  <footer class="footer pt-lg-5 pt-4 bg-dark text-light">
    <div class="container mb-4 py-4 pb-lg-5">
      <div class="row gy-4">
        <div class="col-lg-3 col-md-6 col-sm-4">
          <ul class="nav nav-light flex-column">
            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal text-light text-nowrap"
                href="mailto:example@gmail.com"><i
                  class="fi-mail mt-n1 me-1 align-middle text-primary"></i>multicampus@multicampus.com</a></li>
            <li class="nav-item mb-2"><a class="nav-link p-0 fw-normal text-light text-nowrap" href="tel:4065550120"><i
                  class="fi-device-mobile mt-n1 me-1 align-middle text-primary"></i>(02) 3429-5114</a></li>
          </ul>
        </div>
        <!-- Links-->
        <div class="col-lg-2 col-md-3 col-sm-4">
          <h3 class="fs-base text-light">Quick links</h3>
          <ul class="list-unstyled fs-sm">
            <li><a class="nav-link-light" href="#">Hosptial</a></li>
            <li><a class="nav-link-light" href="#">Pharmacy</a></li>
            <li><a class="nav-link-light" href="#">Medicine</a></li>
            <li><a class="nav-link-light" href="#">Community</a></li>
          </ul>
        </div>
        <!-- Links-->
        <div class="col-lg-2 col-md-3 col-sm-4">
          <h3 class="fs-base text-light">Team Member</h3>
          <ul class="list-unstyled fs-sm">
            <li class="text-light">김영주</li>
            <li class="text-light">김현우</li>
            <li class="text-light">박은성</li>
            <li class="text-light">송승현</li>
            <li class="text-light">이다영</li>
            <li class="text-light">정의탁</li>
          </ul>
        </div>
        <!-- Subscription form-->
        <div class="col-lg-4 offset-lg-1">
          <h3 class="h4 text-light">메디서치를 구독하세요</h3>
          <p class="fs-sm mb-4 opacity-60">새롭게 업데이트되는 소식을 놓치지마세요!</p>
          <form class="form-group form-group-light rounded-pill" style="max-width: 500px;">
            <div class="input-group input-group-sm"><span class="input-group-text text-muted"><i
                  class="fi-mail"></i></span>
              <input class="form-control" type="email" placeholder="Email">
            </div>
            <button class="btn btn-primary btn-sm rounded-pill" type="button">구독하기</button>
          </form>
        </div>
      </div>
    </div>
    <div class="py-4 border-top border-light">
      <div class="container d-flex flex-column flex-lg-row align-items-center justify-content-between py-2">
        <!-- Copyright-->
        <p class="order-lg-1 order-2 fs-sm mb-2 mb-lg-0"><span class="text-light opacity-60">&copy; All rights reserved.
            Made by </span><a class="nav-link-light fw-bold" href="https://createx.studio/" target="_blank"
            rel="noopener">Medi Search</a></p>
        <div class="d-flex flex-lg-row flex-column align-items-center order-lg-2 order-1 ms-lg-4 mb-lg-0 mb-4">
          <!-- Links-->
          <div class="d-flex flex-wrap fs-sm mb-lg-0 mb-4 pe-lg-4"><a class="nav-link-light px-2 mx-1"
              href="#">About</a><a class="nav-link-light px-2 mx-1" href="#">Blog</a><a class="nav-link-light px-2 mx-1"
              href="#">Support</a><a class="nav-link-light px-2 mx-1" href="#">Contacts</a></div>
          <div class="d-flex align-items-center">
            <!-- Language switcher-->
            <div class="light fs-sm align-items-center p-0 fw-normal"><span>Korea</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span
      class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">
    </i></a>
  <!-- Vendor scrits: js libraries and plugins-->
  <script src="${path}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="${path}/resources/vendor/simplebar/dist/simplebar.min.js"></script>
  <script src="${path}/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
  <script src="${path}/resources/vendor/jarallax/dist/jarallax.min.js"></script>
  <script src="${path}/resources/vendor/tiny-slider/dist/min/tiny-slider.js"></script>
  <!-- Main theme script-->
  <script src="${path}/resources/js/theme.min.js"></script>
  
  <!-- 회원가입 script -->
  <script src="${path}/resources/js/signup.js"></script>

	

  <!-- blogzine script 시작 -->
  <!-- =======================
    JS libraries, plugins and custom scripts -->

  <!-- Vendors -->
  <script src="${path}/resources/blogzine/template/assets/vendor/apexcharts/js/apexcharts.min.js"></script>
  <script src="${path}/resources/blogzine/template/assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>
  <script src="${path}/resources/blogzine/template/assets/vendor/overlay-scrollbar/js/OverlayScrollbars.min.js"></script>

  <!-- Template Functions -->
  <!-- <script src="${path}/resources/blogzine/template/assets/js/functions.js"></script> -->
  


</body>

</html>