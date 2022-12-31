<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 의약품" />
</jsp:include>
		
		<c:set var="searchType" value="${param.searchType}"/>
		<c:if test="${empty searchType}">
			<c:set var="searchType" value="${title}"/>
		</c:if>
		
        <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="1.0"><span class="img-overlay bg-transparent opacity-100" ></span>
            <div class="jarallax-img" style="background-image: url(${path}/resources/img/medisearch/pills2.jpg);"></div>
            <div class="content-overlay container py-md-5">
              <div class="mt-5 mb-md-5 py-5">
                
                <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 ">
                    <h1 class="display-5 text-light mt-sm-5 my-4">의약품 <span style="color:rgb(253, 86, 49)">검색</span></h1>
                </div>
                  <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
                  <!-- Search form-->
                  <form class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-5" action="${path}/search/pill" method="get" onsubmit="return submitCheck();">
                    <div class="input-group input-group-lg border-end-md"><span class="input-group-text text-muted rounded-pill ps-3"><i class="fi-search"></i></span>
                      <input class="form-control" type="text" id="searchValue" name="searchValue" placeholder="검색어를 입력하세요." value="${param.searchValue}" >
                    </div>
                    <hr class="d-md-none my-2">
                    <div class="d-sm-flex">
                      <div class="dropdown w-100 mb-sm-0 mb-3" data-bs-toggle="select">
                        <button class="btn btn-link btn-lg dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><i class="fi-list me-2"></i><span class="dropdown-toggle-label">분류</span></button>
                        <input type="hidden" name="searchType" id="searchType" value="none">
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#" value="itemName" ><i class="fi-meds fs-lg opacity-60 me-2"></i><span class="dropdown-item-label">약품명</span></a></li>
                          <li><a class="dropdown-item" href="#" value="efcyQesitm" ><i class="fi-heart-filled fs-lg opacity-60 me-2"></i><span class="dropdown-item-label">효능</span></a></li>
                        </ul>
                      </div>
                      <button class="btn btn-primary btn-lg rounded-pill w-100 w-md-auto ms-sm-3 " style="background-color: red;" type="submit">Search</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="position-absolute d-none d-xxl-block bottom-0 start-0 w-100 bg-white zindex-1" style="border-top-left-radius: 30px; border-top-right-radius: 30px; height: 30px;"></div>
          </section>
          
        <!-- header 끝 -->
        
        
        
        

           <!-- main -->
      <section class="container pb-5 mb-md-4">
        <div class="row">
          <div class="col-md-6 mb-3 mb-md-0">
            <div class="d-sm-flex align-items-center justify-content-between pb-4 mb-sm-2">
              <h2 class="h3 mb-sm-0"style="color:rgb(255, 125, 0)">검색 결과</h2>
            </div>
            <!-- 조회된 내용이 없을 시,-->
            <c:if test="${empty list}">
            <div>
				<p style="font-size:1.6rem"><i class="fi-alert-circle"></i> 조회된 결과가 없습니다. </p>
            </div>
            </c:if>
            <!-- Accordion-->
            <div id="accordionJobs ">
            <c:if test="${not empty list}">
            <c:forEach var="pill" items="${list}">
              <div class="card bg-secondary mb-2" data-bs-toggle="collapse" onclick="onClickAddInfo('${pill.pillNo}');" >
                <div class="card-body">
                  <div class="d-flex justify-content-between mb-2">
                  	<c:if test="${pill.itemImage != '-' }">
                    <div class="d-flex align-items-center"><img class="me-2" src="${pill.itemImage}" width="300" alt="Xbox Logo"></div><button class="btn btn-icon btn-light btn-xs text-primary shadow-sm rounded-circle" type="button" data-bs-toggle="tooltip" title="Add to saved jobs"><i class="fi-heart"></i></button>
                  	</c:if>
                  	<c:if test="${pill.itemImage == '-' }">
                    <div class="d-flex align-items-center"><img class="me-2" src="${path}/resources/img/medisearch/pillnoimg.png" width="300" alt="Xbox Logo"></div><button class="btn btn-icon btn-light btn-xs text-primary shadow-sm rounded-circle" type="button" data-bs-toggle="tooltip" title="Add to saved jobs"><i class="fi-heart"></i></button>
                  	</c:if>
                  </div>
                  <h3 class="h6 card-title pt-1 mb-0" style="color:rgb(255, 125, 0)">제품명 : <c:out value="${pill.itemName}"/></h3>
                </div>
                  <div class="card-body mt-n1 pt-0">
                    <p class="fs-sm"><b><c:out value="${pill.efcyQesitm}" escapeXml="false"/><a href='#'>더 보기+</a></b></p>
                    <div class="d-flex align-items-center justify-content-between"> 
                      
                    </div>
                </div>
              </div>

            	</c:forEach>
              </c:if>
            </div>
            <nav class="border-top pb-md-4 pt-4 mt-2 " >
                <ul class="pagination mb-1">
                <li class="page-item d-none d-sm-block"><button class="page-link" onclick="movePage('${path}/search/pill?page=1');"><i class="fi-chevrons-left"></i></button></li>
				<li class="page-item d-none d-sm-block"><button class="page-link" onclick="movePage('${path}/search/pill?page=${pageInfo.prevPage}');"><i class="fi-chevron-left"></i></button></li>
                  <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" step="1" varStatus="status">
					<c:if test="${status.current == pageInfo.currentPage}">
						 <li class="page-item active d-none d-sm-block"><button class="page-link" disabled>${status.current}</button></li>
					</c:if>
					<c:if test="${status.current != pageInfo.currentPage}">
						 <li class="page-item d-none d-sm-block"><button class="page-link" onclick="movePage('${path}/search/pill?page=${status.current}');">
							${status.current}
						</button></li>
					</c:if>
				</c:forEach>
                  <li class="page-item d-none d-sm-block"><button class="page-link" onclick="movePage('${path}/search/pill?page=${pageInfo.nextPage}');"><i class="fi-chevron-right"></i></button></li>
				<!-- 마지막 페이지 -->
				<li class="page-item d-none d-sm-block"><button class="page-link" onclick="movePage('${path}/search/pill?page=${pageInfo.maxPage}');"><i class="fi-chevrons-right"></i></button></li>
                </ul>
              </nav>
              
              
          </div>
          <div class="col-md-1">
            <hr class="hr-vertical mx-auto">
          </div>
          
           <div class="col-md-5 text-center text-md-start" >
	           <div id="pillInfo">
	            	
	           </div>
          </div>
        </div>
      </section> 
   

    
    <!-- 테스트 중 -->
     <script type="text/javascript">
     
     function submitCheck() {

    	   var code = $("#searchType").val();

    	    if(code == "none") {
			alert("분류를 선택하세요");
    	    return false;

    	  }

    	   return true

    	 }
     
     function onClickAddInfo(pillNo){
    	 //alert('pillNo : ' + pillNo);
    	 // ajax 코드 구현
    	 $.ajax({
    		 type:'get',
             url: "${path}/search/pill/view",
             data:{ no : pillNo},
             dataType: 'json',
             success :(obj) =>{
            	 str = '<div class="d-flex flex-row-reverse" >';
            	 str += '<c:if test="${loginMember != null}">'
            	 str += '<a href="${path}/board/postPillReview?pillNo='+ obj.pillNo +'" class=" icon-box card flex-row align-items-center card-hover rounded-pill py-2 ps-2 pe-4">';
            	 str += '<div class="icon-box-media bg-faded-primary text-primary rounded-circle me-2">';            	 
            	 str += '<i class="fi-chat-left"></i>';
            	 str += '</div>';
            	 str += ' <h2 class="icon-box-title fs-sm ps-1 mb-0">리뷰 쓰기</h3>';
            	 str += ' </a>';
            	 str += '</c:if>';
            	 str += '</div>';
                 str += '<h3 class="h3 pt-2 mb-4" style="color:rgb(255, 125, 0)">'+obj.itemName+'</h3>';
                 if(obj.itemImage != '-'){
                 str += '<a href="' + obj.itemImage + '" download>';
                 str += '<img src="' + obj.itemImage + '" alt="testimg" width="100%" height="100%">';
                 str += '</a>';
                 }
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">제조사명</h5>';
                 str += ' <p class="md-3"><b>'+obj.entpName+'</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">효능</h5>';
                 str += '<p class="md-3"><b>' + obj.efcyQesitm + '</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">복용방법</h5>';
                 str += '<p class="md-3"><b>' + obj.useMethodQesitm + '</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">경고사항</h5>';
                 str += '<p class="md-3"><b>' + obj.atpnWarmQesitm + '</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">주의사항</h5>';
                 str += '<p class="md-3"><b>' + obj.useMethodQesitm + '</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">상호작용</h5>';
                 str += '<p class="md-3"><b>' + obj.intrcQesitm + '</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">부작용</h5>';
                 str += '<p class="md-3"><b>' + obj.seQesitm + '</b></p>';
                 str += '<h5 class="pt-md-3" style="color:rgb(255, 125, 0)">저장방법</h5>';
                 str += '<p class="md-3"><b>' + obj.depositMethodQesitm + '</b></p>';
                 $('#pillInfo').html(str);
             },
             error : (e) =>{
                 $('#pillInfo').html('에러 발생!');
                 console.log(e);
             },
             
    	 });
    	 
     }
    
     
     $(function() {
         $(".dropdown-item").on("click", function() {
           // alert($(this).attr("value"));
           var searchType = $(this).attr("value");
           $("#searchType").attr("value", searchType);
         });

       });
     
     function movePage(pageUrl){
    	const urlParams = new URLSearchParams(window.location.search);
 		var searchValue = document.getElementById("searchValue"); // 값
 		var searchType = 'itemName';
 		if(searchValue.value.length > 0){
 			
			if(urlParams.get('searchType')=='itemName'){
				searchType = 'itemName';
			}else if(urlParams.get('searchType')=='efcyQesitm'){
				searchType = 'efcyQesitm';
			}
 			
 			pageUrl = pageUrl + '&searchType=' + searchType + '&searchValue=' + searchValue.value; 
 		}
 		location.href = encodeURI(pageUrl);	
 	}
     	
     
     
	</script> 
     
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

