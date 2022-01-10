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
<html>
<head>
    <title>게시글 작성화면</title>
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
    <h1>게시물 등록</h1>
    <hr>
    <a href="<%= request.getContextPath() %>/"><button>홈으로 돌아가기</button></a>

    <hr>
    <%--<form id="writingForm" action="writingResult.jsp" method="post">--%>
    <form id="writingForm" name="writingForm" >
        <table border="1">
            <tr>
                <td>제목</td>
                <td>
                    <input type="text" name="title" id="title" placeholder="제목을 입력하세요." required>
                </td>
            </tr>
            <tr>
                <td>이름</td>
                <td>
                    <input type="text" name="writer" id="writer" placeholder="이름을 입력하세요." required>
                </td>
            </tr>
            <tr>
                <td>내용</td>
                <td>
                    <form>
                        <p><textarea cols="50" rows="10" name="content"></textarea></p>
                    </form>
            </tr>
            <tr></tr>
            <tr>


            </tr>
        </table>
    </form>
    <hr>
    <div>
        <input type="reset" value="초기화">

        <input type="button" onclick="javascript:writing();" role="button" value="등록">
    </div>
    <hr>

    <div class="con-box-area" style="width: 33.3%;">
        <div class="con-box_top">
            <span>상담저장</span>
            <!-- 토글 -- Start -->
            <span class="fr mgl8">수동배분</span>
            <label class="fr mgt4">
                <input type="checkbox" class="toggle"><span></span>
            </label>
            <!-- 토글 -- End -->
        </div>
        <div class="con-box w-bottom full">
            <!--  테이블 제목 table-title -->
            <div class="table-title">
                    <span class="title_icon fl mgr8">
                        <span class="fa fa-envelope"></span>
                    </span>
                <span>문의내용</span>
                <!-- 테이블 접힘 펼침 버튼  -->
                <div class="fr">
                        <span class="title_icon fl mgr8" onclick="mailFull1()" style="cursor: pointer;">
                            <span class="fa fa-plus"></span>
                        </span>
                    <span class="title_icon fl" onclick="mailMin1()" style="cursor: pointer;">
                            <span class="fa fa-minus"></span>
                        </span>
                </div>
            </div>
            <!-- 문의메일 내용 테이블 시작 -->
            <div class="list-area mgt8">
                <!-- ##### 숨김영역 시작 ##### -->
                <table class="con-list2 w100 mail-full">
                    <colgroup>
                        <col style="width: 80px">
                        <col style="width: calc(50% - 80px)">
                        <col style="width: 80px">
                        <col style="width: calc(50% - 80px)">
                    </colgroup>
                    <tr>
                        <th>From</th>
                        <td colspan="3">kyunga.jun@kbsjob.co.kr</td>
                    </tr>
                    <tr>
                        <th>Subject</th>
                        <td colspan="3" class="td_txtover">배송 관련 문의 드립니다.</td>
                    </tr>
                    <tr>
                        <th>문의유형</th>
                        <td>배송 문의</td>
                        <th>전화번호</th>
                        <td>01012345678</td>
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
                        <th>문의내용</th>
                        <td class="td_txtover">배송 관련 문의 드립니다. 3일 전에 주문했는데 아직도 발송 전이라서요. 언제쯤 받을 수 있을 지 답변 부탁 드립니다.</td>
                    </tr>
                </table>
            </div>
            <!-- 문의메일 내용 테이블 끝 -->
            <!--  테이블 제목 table-title -->
            <div class="table-title mgt16">
                    <span class="title_icon fl mgr8">
                        <span class="fa fa-keyboard"></span>
                    </span>
                <span>상담내용</span>
            </div>
            <!-- 상담상세 테이블 시작 -->
            <div>
                <table class="table-ver2 w100">
                    <tr>
                        <th colspan="3">상담유형</th>
                    </tr>
                    <tr>
                        <td>
                            <select name="select_call-1" class="w100">
                                <option selected value="call1">선택</option>
                                <option value="call1-1">배송문의</option>
                                <option value="call1-2">교환문의</option>
                                <option value="call1-3">반품문의</option>
                            </select>
                        </td>
                        <td>
                            <select name="select_call-2" class="w100">
                                <option selected value="call1">선택</option>
                                <option value="call2-1">배송문의</option>
                                <option value="call2-2">교환문의</option>
                                <option value="call2-3">반품문의</option>
                            </select>
                        </td>
                        <td>
                            <select name="select_call-3" class="w100">
                                <option selected value="call1">선택</option>
                                <option value="call3-1">배송문의</option>
                                <option value="call3-2">교환문의</option>
                                <option value="call3-3">반품문의</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">상담제목</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <select name="" class="w100">
                                <option selected value="">[C&AI 자사몰] 이메일 문의 답변</option>
                                <option value="">[C&AI 외부몰] 이메일 문의 답변</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">상담내용</th>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <textarea placeholder="내용을 입력해주세요 (Email 전송됨)" class="w100" style="height: 120px;"></textarea>
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
            </div>
            <!-- 상담상세 테이블 끝 -->
            <!-- con-box 안의 컨텐츠 끝  -->
        </div>
        <!-- con-box_bottom 시작 -->
        <div class="con-box_bottom">
            <div class="fl">
                <select name="select_mall" class="w120x he36x">
                    <option selected value="">처리완료</option>
                    <option value="">미처리</option>
                </select>
            </div>
            <button type="button" class="btn-st2 fr">
                <span class="fa fa-paper-plane"></span>
                <span>답장 보내기</span>
            </button>
        </div>
        <!-- con-box_bottom 끝   -->
    </div>






















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
</body>
</html>
