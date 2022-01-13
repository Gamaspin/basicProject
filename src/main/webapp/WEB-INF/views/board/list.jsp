<%--
  Created by IntelliJ IDEA.
  User: cnai
  Date: 2021-11-22
  Time: 오후 5:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>게시글 목록</title>


    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


</head>
<body>
    <h2>게시글 목록</h2>

    <a href="<%= request.getContextPath() %>/"><button>홈으로 돌아가기</button></a>
    <br>
    <button border='5' type="button" class="navBtn" onClick="location.href='/board/write'">게시물 작성하기</button>

    CONTENT LIST


    <div class="box-body">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th style="width:30px">No.</th>
                <th>제목</th>
                <th style="width: 100px">작성자</th>
                <th style="width: 200px">작성시간</th>
                <th style="width: 60px">조회수</th>
            </tr>
            </thead>
            <tbody>
        <div>
            <c:forEach items="${listAllArticle}" var="listAll">
                <tr>
                    <td style="width:30px">${listAll.bno}</td>
                    <td><a href="javascript:selectArticle(${listAll.bno});">${listAll.title}</a></td>
                        <%-- <td><a href="/board/read?boardNo=${board.bno}">${board.title}</a></td>--%>
                    <td style="width:100px">${listAll.writer}</td>
                    <td style="width: 200px"><fmt:formatDate value="${listAll.regdate}" pattern="yyyy-MM-dd a HH:mm"/></td>
                    <td style="width: 60px"><span>${listAll.viewcnt}</span></td>
                </tr>
            </c:forEach>
        </div>
       <%-- <div>
            <c:forEach items="${listAllArticle}" var="listAll2">
                <tr>
                <td>${listAll2.bno}</td>
                </tr>
            </c:forEach>
        </div>--%>
            <tr></tr>

        <%--<div>
            <c:if test="${listAllArticle ne null and not empty listAllArticle }">
                <c:forEach items="${listAllArticle}" var="board">
                    <tr>
                        <td>${board.bno}</td>
                        <td>${board.title}</td>
                        <td>${board.content}</td>
                        <td>${board.writer}</td>
                        <td style="width: 200px"><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd a HH:mm"/></td>
                        <td>${board.viewcnt}</td>
                        <td>
                            <a href="#">수정</a>
                            <a href="#">삭제</a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </div>--%>

            </tbody>
        </table>
    </div>

    <script type="text/javascript">

        function selectArticle(bno) {

            console.log("상세 view로 갑니다");
            console.log(bno);
            window.location = "/board/read?bno=" + bno;

        }



    </script>
</body>
</html>
