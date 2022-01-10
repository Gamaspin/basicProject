<%--
  Created by IntelliJ IDEA.
  User: cnai
  Date: 2021-11-22
  Time: 오후 6:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>게시글 작성화면</title>


    <!-- CSS -->
    <link href="/web_resources/css/setting.css?v=20211207a" rel="stylesheet" type="text/css">
    <link href="/web_resources/css/common.css?v=20211207a" rel="stylesheet" type="text/css">
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

    <style>
        table {
            width: 500px;
            height: 200px;
            text-align: center;
        }

        .btn_refresh {
            size: 20px;
            font-size: 15px;
            width: 65px;
            height: 35px;
            border:1px solid #0ABB87;
            margin: 30px 0 0 5px;
        }

        #btn_submit {
            float:right !important;
            margin: 30px 0 0 0 !important;
            width: 80px !important;
            background: #fff !important;
            color: #2e7d32 !important;
            border: 1px solid #92c294 !important;
            padding: 0 0.8em !important;
            border-radius: 6px !important;
        }


        .input_writing {
            width: calc(100% - 90px);
            min-width: 40%;
            max-width: calc(100% - 90px);
        }


    </style>

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
                <%--<li><span class="fa fa-th-large"></span>
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
                </li>--%>
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
            <%--<li><a href="#"><span class="fa fa-th-large"></span>채널</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=cti_call.jsp">Call</a></li>
                    <li><a href="../board/main.jsp?pageChange=cti_board.jsp">Board</a></li>
                    <li><a href="../board/main.jsp?pageChange=cti_chat.jsp">Chat</a></li>
                    <li><a href="../board/main.jsp?pageChange=cti_email.jsp">Mail</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-envelope-open-text"></span>메일수신함관리</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=email_inbox.jsp">메일수신/배분현황</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-file-import"></span>이관관리</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=transmitAllList.jsp">전체 이관 현황</a></li>
                    <li><a href="../board/main.jsp?pageChange=transmitList.jsp">My 이관</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-sitemap"></span>조직관리</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=companyAdd.jsp">고객사 관리</a></li>
                    <li><a href="../board/main.jsp?pageChange=partAdd.jsp">부서 관리</a></li>
                    <li><a href="../board/main.jsp?pageChange=teamAdd.jsp">팀 관리</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-user-cog"></span>사용자(권한)관리</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=employeeAdd.jsp">사용자 관리</a></li>
                    <li><a href="../board/main.jsp?pageChange=userAuth.jsp">권한 관리</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-database"></span>DB관리</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=distributeDB.jsp">DB 배분/회수</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-headset"></span>통화이력</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=record.jsp">통화청취</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-edit"></span>코드관리</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=cateAdd.jsp">상담유형 관리</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-chart-bar"></span>통계</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=stats.jsp">시간 및 상담원별 통계</a></li>
                    <li><a href="../board/main.jsp?pageChange=consultHistoryList.jsp">상담이력 현황</a></li>
                    <li><a href="https://dev.ibl.co.kr/analytics/analyticsPage" target="_blank">상담 트렌드</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-ellipsis-h"></span>로그정보</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=log.jsp">비정상 로그인/아웃 로그</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-envelope"></span>문자(SMS)</a>
                <ul class="sub">
                    <li><a href="../board/main.jsp?pageChange=sms.jsp">대량 문자발송</a></li>
                    <li><a href="../board/main.jsp?pageChange=smsSendLog.jsp">문자발송 이력 조회</a></li>
                </ul>
            </li>
            <li><a href="#"><span class="fa fa-desktop"></span>모니터링</a>
                <ul class="sub">
                    <li onclick="window.open('../../../display.html','전광판','height=' + screen.height + ',width=' + screen.width + 'fullscreen=yes')"><a >전광판</a></li>
                    <li><a href="../board/main.jsp?pageChange=onState.jsp">상담 현황</a></li>
                </ul>
            </li>
            <li onclick="window.open('surveyQList_pop.html','설문지 현황','width=1000,height=840,location=no,status=no,scrollbars=yes');"><a href="#"><span class="fa fa-tasks"></span>설문지(Survey) 연동</a>
            </li>
            <li><a href="../board/main.jsp?pageChange=notice.jsp"><span class="fa fa-clipboard-list"></span>공지사항</a>
            </li>
        </ul>--%>
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






        <hr>

        <div class="con-box-area">
            <div class="con-box_top">
                <span class="title_icon fl mgr8">
                        <span class="fa fa-keyboard"></span>
                </span>
                <span>글쓰기</span>

            </div>
            <%--<div class="con-box w-bottom full">--%>
            <div class="con-box">
            <%--<div class="con-box full">--%>
                <!--  테이블 제목 table-title -->
               <%-- <div class="table-title">
                    <span class="title_icon fl mgr8">
                        <span class="fa fa-envelope"></span>
                    </span>
                    <span>문의내용</span>
                    <!-- 테이블 접힘 펼침 버튼  -->
                    &lt;%&ndash;<div class="fr">
                        <span class="title_icon fl mgr8" onclick="mailFull1()" style="cursor: pointer;">
                            <span class="fa fa-plus"></span>
                        </span>
                        <span class="title_icon fl" onclick="mailMin1()" style="cursor: pointer;">
                            <span class="fa fa-minus"></span>
                        </span>
                    </div>&ndash;%&gt;
                </div>--%>

                <!-- 상담상세 테이블 시작 -->
                <div>
                    <form id="writingForm" name="writingForm" >
                        <table class="table-ver2 w100">
                            <tr>
                                <th colspan="3">제목</th>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <input type="text" name="title" id="title" class="input_writing" placeholder="제목을 입력하세요." required>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="3">이름</th>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <input type="text" name="writer" id="writer" class="input_writing" placeholder="이름을 입력하세요." required>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="3">내용</th>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <form>
                                        <p><textarea cols="100" rows="15" name="content" class="input_writing" placeholder="내용을 입력해주세요"></textarea></p>
                                    </form>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="3">파일첨부</th>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div class="file-upload">
                                        <input type="text" class="upload_filename fl" placeholder="PC에서 찾아보기" style="width: calc(100% - 90px);" readonly>
                                        <label for="file_upload" class="btn_find-file fl">
                                            <span class="fa fa-file-upload mgr2"></span>
                                            찾아보기
                                        </label>
                                        <input type="file" id="file_upload">
                                    </div>
                                </td>
                            </tr>
                        </table>


                <hr>
                <div>

                    <input type="button" class="btn_sms-refresh he40x" style="float:left; margin: 30px 0 0 0; width: 80px; height: 40px;" onclick="location.href='<%= request.getContextPath() %>/'" role="button" value="목록">
                    <input type="button" class="btn_manual he40x" style="float:right; margin: 30px 0 0 0; width: 80px;" onclick="javascript:writing();" role="button" value="등록">
                    <input type="reset" class="btn_excel he40x" style="float:right; margin: 30px 15px 0 0; width: 80px; height: 40px;" value="초기화">






                </div>
                </form>
                </div>
                <hr>
                <!-- 상담상세 테이블 끝 -->
                <!-- con-box 안의 컨텐츠 끝  -->
            </div>
        </div>

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

<script type="text/javascript">
    /*

            $(document).ready(function(){

            });
    */

    // 게시글 작성
    function writing() {



        let title = $("#title").val();
        let pattern = /^\s/;
        let writer = $("#writer").val();

        if(title == '') {
            alert("제목을 입력해 주세요.");
            $("#title").focus();
            return false;
        } else if(title.match(pattern)) {
            alert("제목은 공백으로 시작할 수 없습니다.");
            $("#title").focus();
            return false;
        }

        if(writer == '') {
            alert("이름을 입력해 주세요.");
            $("#writer").focus();
            return false;
        } else if(writer.match(pattern)) {
            alert("이름은 공백으로 시작할 수 없습니다.");
            $("#writer").focus();
            return false;
        }

        console.log("_-----------------___---___--log");
        console.dir("_-----------------___---___--dir");
        console.log("----------------------");

        let form = $("#writingForm").serialize();


        $.ajax({
            url: "/board/write.do",
            type: "POST",
            data: form,
            dataType: "json",
            success: function (data) {
                console.log("=======data1로그");
                console.log(data);
                console.log("=======data로그");
                if (data == '1') {

                    console.log("=======write로그");
                    console.log('${write}');
                    alert("글 작성이 완료되었습니다.");
                    /*                        window.location = "/board/read?bno="+'${write.bno}';*/

                    window.location = '/';

                } else {
                    alert("글 등록이 실패하였습니다.");
                }
            },
            error: function (request, status, error) {
                console.clear();
                console.log(request.responseText);
                alert("code:" + request.status + "\n\n" + "error:" + error);
            }
        });
    }
</script>

<!-- 캘린더 rangeCalender.js-->
<script src="/web_resources/js/rangeCalender.js" type="text/javascript"></script>
<!-- 사이드메뉴 leftMenu.js-->
<script src="/web_resources/js/leftMenu.js" type="text/javascript"></script>
</body>
</html>