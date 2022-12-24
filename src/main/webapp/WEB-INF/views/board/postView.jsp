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
              <h1 class="display-4 mb-4 pb-md-2" style="color: black; font-size: 3.8rem;"> &nbsp;Post Board</h1>
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
          <div class="d-flex flex-wrap border-bottom border-light pb-3 mb-4 justify-content-end" style="border-bottom: 1px solid #666276 !important;">
            <a class="text-uppercase text-decoration-none border-end border-light pe-3 me-3 mb-2" href="#">Reviews</a>
            <div class="d-flex align-items-center border-end border-light pe-3 me-3 mb-2">
              <i class="fi-calendar-alt opacity-70 me-2"></i><span>Mar 25</span>
            </div>
            <div class="d-flex align-items-center border-end border-light pe-3 me-3 mb-2">
              <i class="fi-clock opacity-70 me-2"></i><span>6 min read</span>
            </div>
            <a class="d-flex align-items-center text-decoration-none mb-2" href="#comments" data-scroll>
              <i class="fi-chat-circle opacity-70 me-2"></i><span>2 comments</span>
            </a>
          </div>
          
          <blockquote class="blockquote mb-4">
            <h1>Board Title</h1>
            <footer class="blockquote-footer"> </footer>
          </blockquote>

          <p class="opacity-70">Praesent sed pulvinar posuere nisl tincidunt. Iaculis sit quam magna congue. Amet vel non aliquet habitasse. Egestas erat odio et, eleifend turpis etiam blandit interdum. Nec augue ut senectus quisque diam quis. At augue accumsan, in bibendum. A eget et, eget quisque egestas netus vel. Velit, aliquet turpis convallis ullamcorper. Scelerisque sagittis condimentum pretium in vitae etiam lacinia quis amet. Porttitor consequat, sollicitudin vivamus pharetra nibh faucibus neque, viverra. Praesent amet sed lacus vitae.</p>
          <p class="opacity-70">Velit parturient tellus tellus, congue pulvinar tellus viverra. In cum massa mattis ac. Amet vitae massa ut mi etiam. Auctor aliquam tristique felis donec eu sit nisi. Accumsan mauris eget convallis mattis sed etiam scelerisque.</p>
          
          <!-- Tags + Sharing-->
          <div class="pt-4 pb-5 mb-md-3">
            <div class="d-md-flex align-items-center justify-content-between border-top pt-4" style="border-top: 1px solid #fd5631 !important;">
              <div class="d-flex align-items-center me-3 mb-3 mb-md-0">
                <div class="d-none d-sm-block fw-bold text-nowrap mb-2 me-2 pe-1">Tags:</div>
                <div class="d-flex flex-wrap">
                  <a class="btn btn-xs rounded-pill fs-sm fw-normal btn-translucent-light me-2 mb-2" style="background-color:#fd5631;" href="#">Tage_1</a>
                  <a class="btn btn-xs rounded-pill fs-sm fw-normal btn-translucent-light me-2 mb-2" style="background-color:#fd5631;" href="#">Tage_2</a>
                  <a class="btn btn-xs rounded-pill fs-sm fw-normal btn-translucent-light mb-2" style="background-color:#fd5631;" href="#">Tage_3</a>
                </div>
              </div>
              <div class="d-flex align-items-center">
                <div class="fw-bold text-nowrap pe-1 mb-2">Share:</div>
                <div class="d-flex">
                  <a class="btn btn-icon btn-xs rounded-circle mb-2 ms-2" href="#" data-bs-toggle="tooltip" style="background-color:#fd5631;">
                    <i class="fi-facebook" style="color:#fff;"></i>
                  </a>
                  <a class="btn btn-icon btn-xs rounded-circle mb-2 ms-2" href="#" data-bs-toggle="tooltip" style="background-color:#fd5631;">
                    <i class="fi-twitter" style="color:#fff;"></i>
                  </a>
                  <a class="btn btn-icon btn-xs rounded-circle mb-2 ms-2" href="#" data-bs-toggle="tooltip" style="background-color:#fd5631;">
                    <i class="fi-linkedin" style="color:#fff;"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- Comments-->
          <div class="mb-4 mb-md-5" id="comments">
            <h3 class="mb-4 pb-2">2 comments</h3>
            <!-- Comment-->
            <div class="border-bottom border-light pb-4 mb-4" style="border-bottom: 1px solid #000000 !important;">
              <p class="opacity-70">Elementum ut quam tincidunt egestas vitae elit, hendrerit. Ullamcorper nulla amet lobortis elit, nibh condimentum enim. Aliquam felis nisl tellus sodales lectus dictum tristique proin vitae. Odio fermentum viverra tortor quis reprehenderit in voluptate velit.</p>
              <div class="d-flex justify-content-end align-items-center">
                <div class="d-flex align-items-center pe-2">
                  <div class="ps-2">
                    <h6 class="fs-base mb-0">Daniel Adams</h6><span class="opacity-50 fs-sm">3 days ago</span>
                  </div>
                </div>                
              </div>
              
            </div>
            <!-- Comment-->
            <div class="pb-4">
              <p class="opacity-70">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.</p>
              <div class="d-flex justify-content-end align-items-center">
                <div class="d-flex align-items-center pe-2">
                  
                  <div class="ps-2">
                    <h6 class="fs-base mb-0">Darrel Steward</h6><span class="opacity-50 fs-sm">1 week ago</span>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
          <!-- Comment form-->
          <h3 class="mb-4 pb-sm-2">Leave your comment</h3>
          <form class="needs-validation row gy-md-4 gy-3 pb-sm-2" novalidate>
            
            <div class="col-12">
              <label class="form-label" for="comment-text">Comment</label>
              <textarea class="form-control form-control-lg" id="comment-text" rows="4" placeholder="Type comment here" required></textarea>
              <div class="invalid-feedback">Please type your comment.</div>
            </div>
            <div class="col-12 py-2">
              <button class="btn btn-lg btn-primary" type="submit">Post comment</button>
            </div>
          </form>
        </div>
      </div>
    </main>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />

