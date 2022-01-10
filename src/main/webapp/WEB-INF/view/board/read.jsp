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
    <title>게시글 보기</title>
    <style>
        table {
            width: 500px;
            height: 200px;
            text-align: center;
        }
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

    <script type="text/javascript">

        // 게시글 수정
        function modifying(bno) {
            console.log("_----------수정-___---___--log");
            console.dir("_---------수정---___---___--dir");

            window.location ="modify?bno="+bno;
        }

        // 게시글 삭제
        function deleting(bno) {

            console.log("_----------삭제-___---___--log");
            console.dir("_---------삭-제--___---___--dir");

            $.ajax({
                url: "/board/delete.do",
                type: "POST",
                data: {"bno":bno},
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    if (data == 1) {
                        alert("글 삭제가 완료되었습니다.");
                        window.location = '/';
                    } else {
                        alert("글 삭제가 실패하였습니다.");
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

        <div class="con-box-area">
            <div class="con-box_top">
                <span></span>
            </div>
            <div class="con-box w-bottom full">
                <!--  테이블 제목 table-title -->
                <div class="table-title">
                            <span class="title_icon fl mgr8">
                                <span class="fa fa-leaf"></span>
                            </span>
                    <span>${read.bno}번 게시물</span>
                </div>
                <!-- 문의메일 내용 테이블 시작 -->

                <div class="list-area mgt8">
                    <!-- ##### 숨김영역 시작 ##### -->
                    <form id="readingForm" name="readingForm" >
                        <table class="con-list2 w100 mail-full">
                            <colgroup>
                                <col style="width: 80px">
                                <col style="width: calc(50% - 80px)">
                                <col style="width: 80px">
                                <col style="width: calc(50% - 80px)">
                            </colgroup>
                            <tr>
                                <th>제목</th>
                                <td colspan="3" class="td_txtover"><p>${read.title}</p></td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td>
                                    <a>${read.writer}</a>
                                </td>
                                <th>작성일</th>
                                <td>
                                    <span><fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd a HH:mm"/> </span>
                                </td>
                            </tr>
                            <tr style="border-bottom: 1px solid #E8E8ED;">
                                <th>첨부파일</th>
                                <td colspan="3" class="td_txtover attach-file">
                                    <span class="filename">첨부파일.PNG</span>
                                    <span class="filename">첨부파일.PNG</span>
                                    <span class="filename">첨부파일.PNG</span>
                                    <span class="filename">첨부파일.PNG</span>
                                </td>
                            </tr>
                        </table>

                        <!-- ##### 숨김영역 끝 ##### -->
                        <table class="con-list2 w100">
                            <colgroup>
                                <col style="width: 80px">
                                <col style="width: calc(100% - 80px)">
                            </colgroup>
                            <tr>
                                <th>내용</th>
                                <td class="td_txtover">
                                    <form>
                                        <pre><c:out value="${read.content}" /></pre>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div>
                    <input type="button" class="btn_sms-refresh" style="float:left; margin: 30px 0 0 0; width: 80px; height: 40px;" onclick="location.href='<%= request.getContextPath() %>/'" role="button" value="목록">

                    <input type="button" class="btn_delete" style="float:right; margin: 30px 0 0 0; width: 80px; height: 40px;" onclick="modifying(${read.bno})" role="button" value="수정">

                    <input type="button" class="btn_delete" style="float:right; margin: 30px 15px 0 0; width: 80px; height: 40px;" onclick="deleting(${read.bno})" role="button" value="삭제">



                    <%--${read}--%>

                </div>
                <!-- 문의메일 내용 테이블 끝 -->
                <!-- con-box 안의 컨텐츠 끝  -->
            </div>

        </div>
    </section>
    <!-- ------오른쪽 컨텐츠 영역 끝------ -->
</div>

</body>
</html>
