<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cnai
  Date: 2021-11-22
  Time: 오후 6:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시글 보기</title>
    <style>
        table {
            width: 500px;
            height: 200px;
            text-align: center;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
    <h2>게시물 보기</h2>
    <hr>
    <a href="<%= request.getContextPath() %>/"><button>홈으로 돌아가기</button></a>
    <hr>
    <%--<form id="writingForm" action="writingResult.jsp" method="post">--%>
    <form id="readingForm" name="readingForm" >
        <table border="1">
            <tr>
                <td>제목</td>
                <td>
                    <p>${read.title}</p>
                </td>
            </tr>
            <tr>
                <td>이름</td>
                <td>
                    <a>${read.writer}</a>
                </td>
            </tr>
            <tr>
                <td>작성일</td>
                <td>
                    <span><fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd a HH:mm"/> </span>
                </td>
            </tr>
            <tr>
                <td>내용</td>
                <td>
                    <form>
                        <%--<div style="white-space:pre;">
                            <c:out value="${read.content}"/>
                        </div>--%>
                        <pre><c:out value="${read.content}" /></pre>

                    </form>
            </tr>
            <tr></tr>
            <tr>


            </tr>
        </table>
    </form>
    <hr>
    <div>
        <input type="button" onclick="location.href='/board/list'" role="button" value="목록가기">

        <input type="button" onclick="modifying(${read.bno})" role="button" value="수정">

        <input type="button" onclick="deleting(${read.bno})" role="button" value="삭제">
        <%--${read}--%>

    </div>
    <hr>

</body>
</html>
