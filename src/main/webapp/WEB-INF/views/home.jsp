<%--
  Created by IntelliJ IDEA.
  User: cnai
  Date: 2021-11-22
  Time: 오후 5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>홈 화면</title>
</head>
<body>
<h1>홈 화면 입니다</h1>
CONTENT
<div>
    <br>

    <jsp:forward page="/member/login"></jsp:forward>


    <button border='5' type="button" class="navBtn" onClick="location.href='board/write'">게시물 작성하기</button>
    <br>
    <button border='5' type="button" class="navBtn" onClick="location.href='board/list'">게시물 목록보기</button>
    <br>
    <button border='5' type="button" class="navBtn" onClick="location.href='board/read?bno=36'">36번째 게시물 보기</button>
    <br>
    <br>
    <button border='5' type="button" class="navBtn" onClick="location.href='team/add'">새 게시판 화면으로</button>
    <br>
    <button border='5' type="button" class="navBtn" onClick="location.href='team/main'">나</button>
    <br>
    <button border='5' type="button" class="navBtn" onClick="location.href='#'">다</button>

</div>

</body>
</html>
