<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Ver2</title>
    <style>
    </style>
    <!-- CSS -->
    <link href="/web_resources/css/setting.css" rel="stylesheet" type="text/css">
    <link href="/web_resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/web_resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="/web_resources/css/line-awesome.css" rel="stylesheet" type="text/css">
    <link href="/web_resources/css/scrollbar.css" rel="stylesheet" type="text/css">
    <link href="/web_resources/css/daterangepicker.css" rel="stylesheet" type="text/css">
    <!-- jquery -->
    <script src="/web_resources/js/jquery-2.1.3.min.js"></script>
    <!-- javascript(캘린더) -->
    <script src="/web_resources/assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
    <script src="/web_resources/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="/web_resources/assets/app/custom/general/crud/forms/widgets/bootstrap-daterangepicker.js" type="text/javascript"></script>

    <link rel="shortcut icon" href="/web_resources/images/favicon.ico" />
</head>
<body>
<div class="container">
    <!-- ------Side Menu 왼쪽 사이드메뉴 영역 시작------ -->



    <!--    사이드메뉴 접힘 버튼 시작  -->
    <input id="side-toggle" type="checkbox">
    <label for="side-toggle" class="btn_side-toggle">
        <span class="fa fa-angle-double-left"></span>
        <div class="toggle-menu">
            <ul class="menu">
                <li class="checked"><span class="fa fa-book"></span>
                </li>
                <li><span class="fa fa-th-large"></span>
                </li>
                <li><span class="fa fa-envelope-open-text"></span>
                </li>
                <li><span class="fa fa-file-import"></span>
                </li>
                <li><span class="fa fa-sitemap"></span>
                </li>
                <li><span class="fa fa-user-cog"></span>
                </li>
                <li><span class="fa fa-database"></span>
                </li>
                <li><span class="fa fa-headset"></span>
                </li>
                <li><span class="fa fa-edit"></span>
                </li>
                <li><span class="fa fa-chart-bar"></span>
                </li>
                <li><span class="fa fa-ellipsis-h"></span>
                </li>
                <li><span class="fa fa-envelope"></span>
                </li>
                <li><span class="fa fa-desktop"></span>
                </li>
                <li><span class="fa fa-tasks"></span>
                </li>
                <li><span class="fa fa-clipboard-list"></span>
                </li>
            </ul>
        </div>
    </label>
    <!--    사이드메뉴 접힘 버튼 끝  -->
    <!-- 사이드메뉴 시작 -->
    <div class="side_menu">
        <!--  로고 영역 시작  -->
        <div class="side_logo"><a href="#">
            <img alt="로고" src="/web_resources/images/simbol.png" style="height: 30px; margin-top: -2px;"></a>
        </div>
        <!--  로고 영역 끝  -->
        <!--  드롭다운 메뉴 시작  -->
        <ul class="menu">
            <li><a href="https://dev.kms.codehive.co.kr/init?id=test&name=%ED%85%8C%EC%8A%A4%ED%8A%B8(%ED%85%8C)&auth_cd=SUPERVISOR" target="_blank"><span class="fa fa-book"></span>KMS</a>
            </li>
            <li><a href="#"><span class="fa fa-th-large"></span>채널</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=cti_call.jsp">Call</a></li>
                    <li><a href="main.jsp?pageChange=cti_board.jsp">Board</a></li>
                    <li><a href="main.jsp?pageChange=cti_chat.jsp">Chat</a></li>
                    <li><a href="main.jsp?pageChange=cti_email.jsp">Mail</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-envelope-open-text"></span>메일수신함관리</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=email_inbox.jsp">메일수신/배분현황</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-file-import"></span>이관관리</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=transmitAllList.jsp">전체 이관 현황</a></li>
                    <li><a href="main.jsp?pageChange=transmitList.jsp">My 이관</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-sitemap"></span>조직관리</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=companyAdd.jsp">고객사 관리</a></li>
                    <li><a href="main.jsp?pageChange=partAdd.jsp">부서 관리</a></li>
                    <li><a href="main.jsp?pageChange=teamAdd.jsp">팀 관리</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-user-cog"></span>사용자(권한)관리</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=employeeAdd.jsp">사용자 관리</a></li>
                    <li><a href="main.jsp?pageChange=userAuth.jsp">권한 관리</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-database"></span>DB관리</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=distributeDB.jsp">DB 배분/회수</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-headset"></span>통화이력</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=record.jsp">통화청취</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-edit"></span>코드관리</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=cateAdd.jsp">상담유형 관리</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-chart-bar"></span>통계</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=stats.jsp">시간 및 상담원별 통계</a></li>
                    <li><a href="main.jsp?pageChange=consultHistoryList.jsp">상담이력 현황</a></li>
                    <li><a href="https://dev.ibl.co.kr/analytics/analyticsPage" target="_blank">상담 트렌드</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-ellipsis-h"></span>로그정보</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=log.jsp">비정상 로그인/아웃 로그</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-envelope"></span>문자(SMS)</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=sms.jsp">대량 문자발송</a></li>
                    <li><a href="main.jsp?pageChange=smsSendLog.jsp">문자발송 이력 조회</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-desktop"></span>모니터링</a>
                <ul class="sub">
                    <li onclick="window.open('../../../display.html','전광판','height=' + screen.height + ',width=' + screen.width + 'fullscreen=yes')"><a >전광판</a></li>
                    <li><a href="main.jsp?pageChange=onState.jsp">상담 현황</a></li>
                </ul>
            </li>
            <li onclick="window.open('surveyQList_pop.html','설문지 현황','width=1000,height=840,location=no,status=no,scrollbars=yes');"><a href="#"><span class="fa fa-tasks"></span>설문지(Survey) 연동</a>
            </li>
            <li><a href="#"><span class="fa fa-chart-area"></span>고객 프로파일링</a>
                <ul class="sub">
                    <li><a href="main.jsp?pageChange=profiling.jsp">고객 프로파일링</a></li>
                </ul>
            </li>
            <li><a href="main.jsp?pageChange=notice.jsp"><span class="fa fa-clipboard-list"></span>공지사항</a>
            </li>
        </ul>
        <!--  드롭다운 메뉴 끝  -->
        <!--  로그아웃 버튼 시작  -->
        <button type="button" class="btn_logout">
            <span class="fa fa-sign-out-alt"></span>로그아웃
        </button>
        <!--  로그아웃 버튼 끝  -->
    </div>
    <!--  사이드메뉴 끝  -->
    <!-- ------Side Menu 왼쪽 사이드메뉴 영역 끝------ -->

    <!-- ------오른쪽 컨텐츠 영역 시작------ -->
    <section class="contents-area">
        <!--  ------상단 바 영역 시작------  -->


        <!-- 상단바 접힙 버튼 시작 -->
        <input id="top-toggle" type="checkbox">
        <label for="top-toggle" class="btn_top-toggle">
            <div class="btn_top-bar_menu">
                <span class="fa fa-arrow-up"></span>
            </div>
            <div class="info-box">상태바 숨김</div>
        </label>
        <!-- 상단바 접힙 버튼 끝 -->
        <!--  상단 바 영역 시작  -->
        <div class="top-bar">
            <div class="login-num dp_i-b">내선번호
                <span class="fa fa-phone mgr2"></span>
                <span class="num">5003</span>
            </div>
            <div class="login-ment mgl8 dp_i-b">
                <span class="fontb mgr4">전경아님</span><span>환영합니다.</span>
            </div>
            <!-- 메인 검색영역 -->
            <div class="main-search">
                <input type="text" class="fl" placeholder="Search ..." style="width: calc(100% - 78px);">
                <button class="btn_main-search">
                    <span class="fa fa-search"></span>
                </button>
                <button class="btn_manual w70x mgl8">Manual</button>
            </div>
            <!-- 기타 링크 영역 -->
            <div class="etc-link">
                <a><span>회사소개</span></a>
                <a href="page_email.html" target="_blank"><span>고객사홈페이지</span></a>
                <a><span>브랜드샵</span></a>
            </div>
        </div>
        <!--  상단 바 영역 끝  -->
        <!--  ------상단 바 영역 끝------  -->
        <!--  ############### 컨텐츠 시작 ###############  -->




        <div class="contents">

            <!-- ------------------- Contents area Start -------------------- -->
            <div class="con-area he100p">
                <!--  컨텐츠박스 영역 -- 시작  -->
                <div class="con-box-area w100">
                    <div class="con-box_top">
                        <span>조직정보 - [팀] 관리</span>
                        <button class="con-box_top-btn w100x fr" onclick="teamAddPop()">
                            <span class="fa fa-plus mgr4"></span>
                            <span>등록</span>
                        </button>
                    </div>
                    <div class="con-box">
                        <!-- 검색영역 시작 -->
                        <div class="search-area w100">
                      <span class="title_icon fl mgt2 mgr8">
                        <span class="fa fa-user-friends"></span>
                      </span>
                            <span class="txt_result fl fontb">
                          총 <span class="tix_point">5</span>팀
                      </span>
                            <div class="fr">
                                <input class="w200x mgr8 fl" type="text" placeholder="날짜를 선택하세요" id="daterange" readonly>
                                <select name="" class="w120x mgr8 fl">
                                    <option selected value="">팀 상태</option>
                                    <option value="">사용중</option>
                                    <option value="">업무종료</option>
                                </select>
                                <select name="" class="w120x mgr8 fl">
                                    <option selected value="">팀 선택값</option>
                                    <option value="">팀명</option>
                                    <option value="">부서코드</option>
                                </select>
                                <input type="text" class="w200x mgr8 fl" placeholder="검색할 단어를 입력하세요">
                                <button type="button" class="btn-st1 w60x he36x mgr8 fl">
                                    <span>검색</span>
                                    <span class="fa fa-search"></span>
                                </button>
                                <button class="btn-st6 w36x fl">
                                    <span class="fa fa-undo-alt" style="font-size: 16px;"></span>
                                </button>
                            </div>
                        </div>
                        <!-- 검색영역 끝 -->
                        <!-- 테이블 시작 -->
                        <div class="list-area round">
                            <table class="con-list last-noline w100">
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>고객사명</th>
                                    <th>부서명</th>
                                    <th>팀명</th>
                                    <th>정렬</th>
                                    <th>사용유무</th>
                                    <th>등록자</th>
                                    <th>등록일시</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>5</td>
                                    <td>야나두</td>
                                    <td>고객센터1</td>
                                    <td onclick="teamModPop()">1팀</td>
                                    <td>1</td>
                                    <td>Y</td>
                                    <td>kyunga.jun</td>
                                    <td>2021-03-04 11:04</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>야나두</td>
                                    <td>고객센터1</td>
                                    <td onclick="teamModPop()">2팀</td>
                                    <td>1</td>
                                    <td>Y</td>
                                    <td>kyunga.jun</td>
                                    <td>2021-03-04 11:04</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>야나두</td>
                                    <td>고객센터1</td>
                                    <td onclick="teamModPop()">3팀</td>
                                    <td>1</td>
                                    <td>Y</td>
                                    <td>kyunga.jun</td>
                                    <td>2021-03-04 11:04</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>야나두</td>
                                    <td>고객센터2</td>
                                    <td onclick="teamModPop()">1팀</td>
                                    <td>2</td>
                                    <td>Y</td>
                                    <td>kyunga.jun</td>
                                    <td>2021-03-04 11:04</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>야나두</td>
                                    <td>고객센터2</td>
                                    <td onclick="teamModPop()">2팀</td>
                                    <td>2</td>
                                    <td>N</td>
                                    <td>kyunga.jun</td>
                                    <td>2021-03-04 11:04</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- 테이블 끝 -->
                        <!--  페이징 시작   -->
                        <div class="paging">
                            <ul>
                                <li class="page_first">
                                    <span class="fa fa-angle-double-left"></span></li>
                                <li class="page_prev">
                                    <span class="fa fa-angle-left"></span></li>
                                <li class="num_this">
                                    <span>1</span></li>
                                <li class="num">
                                    <span>2</span></li>
                                <li class="num">
                                    <span>3</span></li>
                                <li class="num">
                                    <span>4</span></li>
                                <li class="num">
                                    <span>5</span></li>
                                <li class="page_next">
                                    <span class="fa fa-angle-right"></span></li>
                                <li class="page_last">
                                    <span class="fa fa-angle-double-right"></span></li>
                            </ul>
                        </div>
                        <!--   페이징 끝  -->
                    </div>
                </div>
                <!--  컨텐츠박스 영역 -- 끝  -->
            </div>
            <!--  ------------------- Contents area End  ------------------- -->
        </div>
        <!--  모달팝업용 black dim  -->
        <div class="dim"></div>
        <!--  ====== 모달팝업 1 Start ====== -->
        <section class="modal" style="width: 440px;">
            <!--  컨텐츠 박스 시작 -->
            <div class="con-box-area">
                <!--  상단 제목 시작  -->
                <div class="con-box_top">
                    <span>[팀] 등록</span>
                    <button class="con-box_top-btn w90x fr" onclick="teamAddPopClose()">
                        <span class="fa fa-times mgr4"></span>
                        <span>닫기</span>
                    </button>
                </div>
                <!--  상단 제목 끝  -->
                <!--  내용 시작   -->
                <div class="con-box">
                    <table class="table-ver2 w100">
                        <tr>
                            <th>고객사명</th>
                            <th>부서명</th>
                        </tr>
                        <tr>
                            <td>
                                <select class="w100" name="">
                                    <option value="" selected>선택</option>
                                    <option value="">야나두</option>
                                </select>
                            </td>
                            <td>
                                <select class="w100" name="">
                                    <option value="" selected>선택</option>
                                    <option value="">고객센터1</option>
                                    <option value="">고객센터2</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>팀명<span class="tix_point">*</span></th>
                            <th>팀상태<span class="tix_point">*</span></th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" class="w100" placeholder="팀명을 입력해주세요">
                            </td>
                            <td>
                                <select class="w100" name="">
                                    <option value="" selected>사용중</option>
                                    <option value="">업무중지</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">정렬순서<span class="tix_point">*</span></th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="text" class="w100" placeholder="(숫자)만 입력해주세요">
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">비고</th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <textarea class="w100" style="height: 72px"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--  내용 끝   -->
                <!--  하단 영역 시작  -->
                <div class="con-box_bottom">
                 <span class="fl">
                     <span class="tix_point">*</span>
                     <span>항목은 필수항목입니다.</span>
                 </span>
                    <button class="btn-st1 w60x fr mgl8">등록</button>
                    <button class="btn-st5 w60x fr" onclick="teamAddPopClose()">닫기</button>
                </div>
                <!--  하단 영역 끝  -->
            </div>
            <!--  컨텐츠 박스 끝  -->
        </section>
        <!--  ====== 모달팝업 1 End ====== -->
        <!--  ====== 모달팝업 2 Start ====== -->
        <section class="modal2" style="width: 440px;">
            <!--  컨텐츠 박스 시작 -->
            <div class="con-box-area">
                <!--  상단 제목 시작  -->
                <div class="con-box_top">
                    <span>[팀] 수정</span>
                    <button class="con-box_top-btn w90x fr" onclick="teamModPopClose()">
                        <span class="fa fa-times mgr4"></span>
                        <span>닫기</span>
                    </button>
                </div>
                <!--  상단 제목 끝  -->
                <!--  내용 시작   -->
                <div class="con-box">
                    <table class="table-ver2 infor w100">
                        <tr>
                            <th>고객사명</th>
                            <th>부서명</th>
                        </tr>
                        <tr>
                            <td>
                                <select class="w100" name="">
                                    <option value="" selected>선택</option>
                                    <option value="">야나두</option>
                                </select>
                            </td>
                            <td>
                                <select class="w100" name="">
                                    <option value="" selected>선택</option>
                                    <option value="">고객센터1</option>
                                    <option value="">고객센터2</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>팀명<span class="tix_point">*</span></th>
                            <th>팀상태<span class="tix_point">*</span></th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" class="w100" placeholder="팀명을 입력해주세요">
                            </td>
                            <td>
                                <select class="w100" name="">
                                    <option value="" selected>사용중</option>
                                    <option value="">업무중지</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">정렬순서<span class="tix_point">*</span></th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="text" class="w100" placeholder="(숫자)만 입력해주세요">
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">비고</th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <textarea class="w100" style="height: 72px"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
                <!--  내용 끝   -->
                <!--  하단 영역 시작  -->
                <div class="con-box_bottom">
                 <span class="fl">
                     <span class="tix_point">*</span>
                     <span>항목은 필수항목입니다.</span>
                 </span>
                    <button class="btn-st1 w60x fr mgl8">수정</button>
                    <button class="btn-st5 w60x fr" onclick="teamModPopClose()">닫기</button>
                </div>
                <!--  하단 영역 끝  -->
            </div>
            <!--  컨텐츠 박스 끝  -->
        </section>
        <!--  ====== 모달팝업 2 End ====== -->
        <script type="text/javascript">
            /** 모달 팝업*/
            const modal = document.querySelector('.modal');   // 모달
            const modal2 = document.querySelector('.modal2');   // 모달2
            const dim = document.querySelector('.dim');   // black 배경
            function teamAddPop() {
                modal.style.display = 'block';
                dim.style.display = 'block';
            }
            function teamAddPopClose() {
                modal.style.display = 'none';
                dim.style.display = 'none';
            }
            function teamModPop() {
                modal2.style.display = 'block';
                dim.style.display = 'block';
            }
            function teamModPopClose() {
                modal2.style.display = 'none';
                dim.style.display = 'none';
            }
        </script>
        <!--  ############### 컨텐츠 끝 ###############  -->
        <script>
            $(document).ready(function() {
                initRangeCalender("daterange", "deadline");
            });
        </script>

    </section>
    <!-- ------오른쪽 컨텐츠 영역 끝------ -->
</div>
<!-- 탭메뉴 설정 js -->
<script>
    const tabList = document.querySelectorAll('.tab_area .list li');
    const contents = document.querySelectorAll('.tab_area .cont_area .cont')
    let activeCont = ''; // 현재 활성화 된 컨텐츠 (기본:#tab1 활성화)

    for(var i = 0; i < tabList.length; i++){
        tabList[i].querySelector('.btn').addEventListener('click', function(e){
            e.preventDefault();
            for(var j = 0; j < tabList.length; j++){
                // 나머지 버튼 클래스 제거
                tabList[j].classList.remove('is_on');
                // 나머지 컨텐츠 display:none 처리
                contents[j].style.display = 'none';
            }
            // 버튼 관련 이벤트
            this.parentNode.classList.add('is_on');
            // 버튼 클릭시 컨텐츠 전환
            activeCont = this.getAttribute('href');
            document.querySelector(activeCont).style.display = 'block';
        });
    }
</script>

<!-- 캘린더 rangeCalender.js-->
<script src="/web_resources/js/rangeCalender.js" type="text/javascript"></script>
<!-- 사이드메뉴 leftMenu.js-->
<script src="/web_resources/js/leftMenu.js" type="text/javascript"></script>
</body>
</html>