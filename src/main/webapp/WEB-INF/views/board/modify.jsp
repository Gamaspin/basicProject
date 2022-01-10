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
    <title>게시글 수정화면</title>
    <style>
        table {
            width: 500px;
            height: 200px;
            text-align: center;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>

<body>
    <h1>게시물 수정</h1>
    <hr>
    <a href="<%= request.getContextPath() %>/"><button>홈으로 돌아가기</button></a>
    <hr>
    <%--<form id="writingForm" action="writingResult.jsp" method="post">--%>
    <div>
        <form id="modifyingForm" name="modifyingForm" >
            <table border="1">
                <input type="hidden" id="bno" name="bno" value="${view.bno}"/>
                <tr>
                    <td>제목</td>
                    <td>
                        <input type="text" name="title" id='title' value="${view.title}" required/>
    <%--                    <input type="text" name="title" placeholder="제목" value="${board.title }"/>--%>

                    </td>
                </tr>
                <tr>
                    <td>이름</td>
                    <td>
                        <input type="text" name="writer" id="writer" value="${view.writer}" required/>
                    </td>
                </tr>
                <tr>
                    <td>작성일</td>
                    <td>
                        <span><fmt:formatDate value="${view.regdate}" pattern="yyyy-MM-dd a HH:mm"/> </span>
                    </td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea cols="50" rows="10" name="content">${view.content}</textarea>
                    </td>
                </tr>
                <tr></tr>
                <tr>
                   <%-- <div>
                        <input type="reset" value="초기화">

                        <input type="button" onclick="modifying(${view.bno})" role="button" value="수정">
                    </div>
--%>
                </tr>

            </table>
        </form>
    </div>
    <hr>
    <div>
        <input type="reset" value="초기화">

        <input type="button" onclick="modifying(${view.bno})" role="button" value="수정">
    </div>
    <hr>
    <script type="text/javascript">

        $(document).ready(function(){

        });

        //게시글 수정
        function modifying() {
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



            let form = $("#modifyingForm").serialize();
            console.log(form);

            $.ajax({
                url : "/board/modify.do",
                type : "POST",
                data : form,
                dataType : "json",
                success : function (data) {
                    console.log(data);
                    if(data == 1) {
                        alert("글 수정이 완료되었습니다.");
                        window.location = '/';
                    } else {
                        alert("글 수정이 실패하였습니다.");
                    }

                },
                error : function (request, status, error) {
                    // console.clear();
                    console.log(request.responseText);
                    alert("code: " + request.status + "\n\n" + "error : " + error);

                }
            });
        }

    </script>
</body>
</html>
