<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param name="title" value="| 의약품" />
</jsp:include>

        <section class="jarallax bg-dark zindex-1 py-xxl-5" data-jarallax data-speed="1.0"><span class="img-overlay bg-transparent opacity-100" ></span>
            <div class="jarallax-img" style="background-image: url(${path}/resources/img/medisearch/pills2.jpg);"></div>
            <div class="content-overlay container py-md-5">
              <div class="mt-5 mb-md-5 py-5">
                
                <div class="col-xl-6 col-lg-8 col-md-10 mx-auto mb-sm-5 mb-4 px-0 ">
                    <h1 class="display-5 text-light mt-sm-5 my-4">의약품 <span style="color:rgb(253, 86, 49)">검색</span></h1>
                </div>
                  <div class="col-xl-8 col-lg-9 col-md-10 mx-auto px-0">
                  <!-- Search form-->
                  <form class="form-group d-block d-md-flex position-relative rounded-md-pill mb-2 mb-sm-4 mb-lg-5">
                    <div class="input-group input-group-lg border-end-md"><span class="input-group-text text-muted rounded-pill ps-3"><i class="fi-search"></i></span>
                      <input class="form-control" type="text" placeholder="검색어를 입력하세요.">
                    </div>
                    <hr class="d-md-none my-2">
                    <div class="d-sm-flex">
                      <div class="dropdown w-100 mb-sm-0 mb-3" data-bs-toggle="select">
                        <button class="btn btn-link btn-lg dropdown-toggle ps-2 ps-sm-3" type="button" data-bs-toggle="dropdown"><i class="fi-list me-2"></i><span class="dropdown-toggle-label">분류</span></button>
                        <input type="hidden">
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item" href="#"><i class="fi-meds fs-lg opacity-60 me-2"></i><span class="dropdown-item-label">약품명</span></a></li>
                          <li><a class="dropdown-item" href="#"><i class="fi-heart-filled fs-lg opacity-60 me-2"></i><span class="dropdown-item-label">효능</span></a></li>
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
              <h2 class="h3 mb-sm-0">검색 결과</h2>
            </div>
            <!-- 조회된 내용이 없을 시,-->
            <div>

            </div>
            <!-- Accordion-->
            <div id="accordionJobs ">
              <div class="card bg-secondary mb-2" id="test1" data-bs-toggle="collapse" data-bs-target="#jobCollapse2">
                <div class="card-body">
                  <div class="d-flex justify-content-between mb-2">
                    <div class="d-flex align-items-center"><img class="me-2" src="${path}/resources/img/medisearch/p3.PNG" width="300" alt="Xbox Logo"></div><button class="btn btn-icon btn-light btn-xs text-primary shadow-sm rounded-circle" type="button" data-bs-toggle="tooltip" title="Add to saved jobs"><i class="fi-heart"></i></button>
                  </div>
                  <h3 class="h6 card-title pt-1 mb-0" style="color:rgb(255, 125, 0)">제품명 : 게보린정(수출명:돌로린정)</h3>
                </div>
                  <div class="card-body mt-n1 pt-0">
                    <p class="fs-sm">이 약은 두통, 치통, 발치(이를 뽑음)후 동통(통증), 인후(목구멍)통, 귀의 통증, 관절통, 신경통, 요(허리)통, 근육통, 견통(어깨통증), 타박통, 골절통, 염좌통(삔 통증), 월경통(생리통), 외상(상처)통의 진통과 오한(춥고 떨리는 증상), 발열시의 해열에 사용합니다. <a href='#' >더 보기+</a></p>
                    <div class="d-flex align-items-center justify-content-between"> 
                      
                    </div>
                </div>
              </div>

              <div class="card bg-secondary mb-2" data-bs-toggle="collapse" data-bs-target="#jobCollapse2">
                <div class="card-body">
                  <div class="d-flex justify-content-between mb-2">
                    <div class="d-flex align-items-center"><img class="me-2" src="${path}/resources/img/medisearch/p2.PNG" width="300" alt="Xbox Logo"></div><button class="btn btn-icon btn-light btn-xs text-primary shadow-sm rounded-circle" type="button" data-bs-toggle="tooltip" title="Add to saved jobs"><i class="fi-heart"></i></button>
                  </div>
                  <h3 class="h6 card-title pt-1 mb-0" style="color:rgb(255, 125, 0)">제품명 : 게보린소프트연질캡슐</h3>
                </div>
                  <div class="card-body mt-n1 pt-0">
                    <p class="fs-sm">이 약은 두통, 치통, 발치후 동통(통증), 인후통, 귀의 통증, 관절통, 신경통, 요통, 근육통, 견통(어깨결림), 타박통, 골절통, 염좌통(삠통증), 월경통(생리통), 외상통의 진통 오한, 발열시의 해열에 사용합니다. <a href='#'>더 보기+</a></p>
                    <div class="d-flex align-items-center justify-content-between"> 
                      
                    </div>
                  </div>
              </div>
              <div class="card bg-secondary mb-2" data-bs-toggle="collapse" data-bs-target="#jobCollapse2">
                <div class="card-body" >
                  <div class="d-flex justify-content-between mb-2">
                    <div class="d-flex align-items-center"><img class="me-2" src="${path}/resources/img/medisearch/p4.PNG" width="300" alt="Xbox Logo"></div><button class="btn btn-icon btn-light btn-xs text-primary shadow-sm rounded-circle" type="button" data-bs-toggle="tooltip" title="Add to saved jobs"><i class="fi-heart"></i></button>
                  </div>
                  <h3 class="h6 card-title pt-1 mb-0" style="color:rgb(255, 125, 0)">제품명 : 게보린쿨다운정</h3>
                </div>
                  <div class="card-body mt-n1 pt-0">
                    <p class="fs-sm">이 약은 두통, 치통, 발치 후 동통(통증), 인후통, 귀의 통증, 관절통, 신경통, 요통, 근육통, 견통(어깨결림), 타박통, 골절통, 염좌통(삠통증), 월경통(생리통), 외상통의 진통 오한 및 발열시의 해열에 사용합니다. <a href='#'>더 보기+</a></p>
                    <div class="d-flex align-items-center justify-content-between"> 
                      
                    </div>
                  </div>
              </div>
              <div class="card bg-secondary mb-2"  data-bs-toggle="collapse" data-bs-target="#jobCollapse2">
                <div class="card-body" >
                  <div class="d-flex justify-content-between mb-2">
                    <div class="d-flex align-items-center"><img class="me-2" src="${path}/resources/img/medisearch/p1.PNG" width="300" alt="Xbox Logo"></div><button class="btn btn-icon btn-light btn-xs text-primary shadow-sm rounded-circle" type="button" data-bs-toggle="tooltip" title="Add to saved jobs"><i class="fi-heart"></i></button>
                  </div>
                  <h3 class="h6 card-title pt-1 mb-0" style="color:rgb(255, 125, 0)">제품명 : 게보린릴랙스연질캡슐</h3>
                </div>
                  <div class="card-body mt-n1 pt-0">
                    <p class="fs-sm">이 약은 두통, 치통, 발치후 동통(통증), 인후(목구멍)통, 귀의 통증, 관절통, 신경통, 요통, 근육통, 견통(어깨결림), 타박통, 골절통, 염좌통(삠통증), 월경통(생리통), 외상통의 진통 오한(춥고 떨리는 증상), 발열시의 해열에 사용합니다. <a href='#'>더 보기+</a></p>
                    <div class="d-flex align-items-center justify-content-between"> 
                      
                    </div>
                </div>
              </div>
              
            </div>
            <nav class="border-top pb-md-4 pt-4 mt-2 " aria-label="Pagination">
                <ul class="pagination mb-1">
                  <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
                  <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span></li>
                  <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
                  <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
                  <li class="page-item d-none d-sm-block">...</li>
                  <li class="page-item d-none d-sm-block"><a class="page-link" href="#">8</a></li>
                  <li class="page-item"><a class="page-link" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a></li>
                  <!-- <li class="page-item"><a class="page-link" onclick="movePage('${path}/board/list?page=${pageInfo.nextPage}');" href="#" aria-label="Next"><i class="fi-chevron-right"></i></a></li> -->
                </ul>
              </nav>
          </div>
          <div class="col-md-1">
            <hr class="hr-vertical mx-auto">
          </div>
          <div class="col-md-5 text-center text-md-start" >
            <div id="test">
            <h2 class="h3 pt-2 mb-4">게보린정(수출명:돌로린정)</h2>
            <h5 class="pt-md-3">제조사명</h5>
            <p class="pb-md-3">삼진제약(주)</p>
            <h5 class="md-3">효능</h5>
            <p class="pb-md-3">이 약은 두통, 치통, 발치(이를 뽑음)후 동통(통증), 인후(목구멍)통, 귀의 통증, 관절통, 신경통, 요(허리)통, 근육통, 견통(어깨통증), 타박통, 골절통, 염좌통(삔 통증), 월경통(생리통), 외상(상처)통의 진통과 오한(춥고 떨리는 증상), 발열시의 해열에 사용합니다. </p>
            <h5 class="md-3">복용방법</h5>
            <p class="md-3">성인은 1회 1정 1일 3회까지 공복시를 피해 복용합니다.</p><p>복용간격은 4시간 이상으로 합니다.</p><p>이 약은 원칙적으로 단기간 복용합니다.</p>
            <h5 class="pt-md-3">경고사항</h5>
            <p class="pb-md-3">매일 세잔 이상 정기적 음주자가 이 약 또는 다른 해열진통제를 복용할 때는 의사 또는 약사와 상의하십시오. 간손상을 일으킬 수 있습니다. </p>
            <h5 class="pt-md-3">주의사항</h5>
            <p class="pb-md-3">이 약에 과민증 환자, 다른 해열진통제(비스테로이드성 소염제), 감기약 복용시 천식발작 유발 또는 그 경험자, 글루코스-6-인산 탈수소효소결핍증, 급성 간헐성(시간 간격을 두고 되풀이하여) 포르피린증, 과립백혈구감소증, 중증 간장애, 중증 신장애, 출혈 소인, 15세 미만의 소아, 소화성궤양, 심한 혈액 이상, 심한 심장기능저하, 바르비탈계 약물, 삼환계 항우울제, 알코올을 복용한 환자는 이 약을 복용하지 마십시오.</p><p>이 약을 복용하기 전에 수두 또는 인플루엔자에 감염되어 있거나 또는 의심되는 15세 이상의 청소년, 갑상샘질환, 당뇨병, 고혈압, 몸이 약한 사람, 고열, 고령자, 임부 또는 임신하고 있을 가능성이 있는 여성, 수유부, 속쓰림, 위부불쾌감, 위통과 같은 위장문제가 지속 혹은 재발되는 사람, 간장애, 신장(콩팥)장애, 소화성궤양, 혈액이상, 출혈경향이 있는 환자, 심장기능이상, 기관지천식 환자는 의사 또는 약사와 상의하십시오. </p>
            <h5 class="pt-md-3">상호작용</h5>
            <p class="pb-md-3">바르비탈계 약물, 삼환계 항우울제, 다른 소염(항염)진통제, 다른 해열진통제, 아세트아미노펜을 포함하는 다른 제품, 알코올과 함께 이 약을 복용하지 마십시오.</p><p>이 약을 복용하기 전에 와파린, 리튬, 티아지드계 이뇨제를 복용한 환자는 의사 또는 약사와 상의하십시오. </p>
            <h5 class="pt-md-3">부작용</h5>
            <p class="pb-md-3">쇽 증상(호흡곤란, 온몸이 붉어짐, 혈관부기, 두드러기 등), 천식발작, 혈소판 감소, 과립구감소, 용혈성빈혈, 메트헤모글로빈혈증, 혈소판기능 저하(출혈시간 연장), 청색증, 구역, 구토, 식욕부진, 위장출혈, 소화성궤양, 천공(뚫림), 발진, 피부점막안증후군(스티븐스-존슨증후군), 독성표피괴사용해(리엘증후군: 고열을 수반하며 발진, 발적(충혈되어 붉어짐), 화상모양 수포 등의 격렬한 증상이 전신피부, 입 및 눈의 점막에 나타난 경우), 전신의 나른함, 황달, 간질성폐렴(기침, 숨이참, 호흡곤란, 발열), 간기능이상, 고정발진 등이 나타나는 경우 복용을 즉각 중지하고 의사 또는 약사와 상의하십시오.</p>
          </div>
          </div>
        </div>
      </section> 
   

    </main>
    
    <!-- 테스트 중 -->
     <script>
        $(document).ready(function(){
          $('#test1').click(function(){
            $('#test').fadeToggle('fast');
          });
        })
     </script> 
     
<jsp:include page="/WEB-INF/views/common/footer.jsp" />

