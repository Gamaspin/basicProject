
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>비밀번호 변경</title>
    <style>
    </style>
    <link href="../resources/css/setting.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/line-awesome.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/daterangepicker.css" rel="stylesheet" type="text/css">
    <link href="../resources/css/scrollbar.css" rel="stylesheet" type="text/css">
    <script src="../resources/js/jquery-2.1.3.min.js"></script>
    <script src="../resources/assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
    <script src="../resources/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <script src="../resources/assets/app/custom/general/crud/forms/widgets/bootstrap-daterangepicker.js" type="text/javascript"></script>

    <link rel="shortcut icon" href="../resources/images/favicon.ico" />
</head>
<body>
<div class="container">

    <!--  ############## 컨텐츠 시작 ################## -->

    <!--  ############### 플로팅 버튼 및 채팅창 Start ################ -->
    <div class="floating-container">
        <!--  플로팅 버튼 ###start### input label - id,for 일치하게  -->
        <input id="btn_floating-ch" type="checkbox" style="display: none;">
        <label for="btn_floating-ch" class="floating-button">+</label>
        <!--  플로팅 버튼 ###End###  -->
        <!--  채팅 채널(카카오/네이버톡톡 등)별 버튼 ###Start###  -->
        <div class="element-container" id="elements">
            <!-- material-icons의 img style에서 margin-top 스타일 삭제 부탁드려요 -->
            <span class="float-element" onclick="location.href='#chat_kakao'">
        <i class="material-icons">
            <img src="../resources/images/kakaotalk.png" style="height: 25px;">
        </i>
      </span>
            <span class="float-element" onclick="location.href='#chat_naver'">
        <i class="material-icons">
            <img src="../resources/images/navertalk.png" style="height: 25px;">
        </i>
      </span>
            <span class="float-element" onclick="location.href='#chat_chat'">
        <i class="material-icons">
            <img src="../resources/images/chatting.png" style="height: 21px;">
        </i>
      </span>
        </div>
        <!--  채팅 채널(카카오/네이버톡톡 등)별 버튼 ###End###  -->
    </div>

    <!--  ---------------- 채팅창(박스) Start --------------  -->
    <!--  카카오톡 채팅창 Start  -->
    <div id="chat_kakao" class="chat-box chat_kakao">
        <!-- ### 모달팝업 뒷 배경 Start -->
        <div class="dim1" style="height: calc(100% - 180px); margin-top: 60px;"></div>
        <!-- ### 모달팝업 뒷 배경 End ### -->
        <!-- ### 상담 종료 모달팝업 시작 ### -->
        <div class="modal_chat-end" style="top: calc(50% - 30px);">
            <div class="modal_top">상담종료하기</div>
            <p>확인을 누르시면 상담이 종료됩니다.</p>
            <p>종료하시겠습니까?</p>
            <div class="modal_btn-area">
                <button class="btn_modal1" onclick="chatClosePopEnd()">취소</button>
                <button class="btn_modal2" onclick="location.href=''">확인</button>
            </div>
        </div>
        <!-- ### 상담 종료 모달팝업 끝 ### -->
        <div class="chat_top">
            <img src="../resources/images/kakaotalk.png" style="height: 25px;">
            <span class="mgl4">카카오톡 채팅상담</span>
            <div class="chat-close fr" onclick="chatClosePop()"><span></span><span></span></div>
        </div>
        <div class="chat_area">
            <!-- 챗봇 대화 Start -->
            <div class="from-them bot">
                <div class="them">
                    <p class="fontb mgb5">안녕하세요 고객님 CnAI 입니다.</p>
                    <p>최대한 빠른 안내 도와드리겠습니다. 감사합니다.</p>
                    <p>아래 문의 유형을 선택해주세요!</p>
                    <button class="btn_modal1 w100 he30x">상품 문의</button>
                    <button class="btn_modal1 w100 he30x">배송 문의</button>
                    <button class="btn_modal1 w100 he30x">환불/반품 문의</button>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <!-- 챗봇 대화 End -->
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:26</span>
                </div>
                <div class="me">
                    <p>안녕하세요 OOO상담원입니다. 무엇을 도와드릴까요</p>
                </div>
            </div>
            <div class="clear"></div>
            <!-- ######### 대화 종료 알림 Start ########## -->
            <div class="from-bot">
                <div class="bot_notice">
                    <p>앞으로 5분 동안 입력이 없는 경우 상담이 자동종료 됩니다.</p>
                    <p>추가로 궁금한 사항을 남겨 주시면 안내 드리겠습니다.</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:25</span>
                </div>
            </div>
            <div class="from-bot">
                <div class="bot_notice">
                    <p class="bot_last">챗봇 상담이 종료되었습니다.</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:30</span>
                </div>
            </div>
            <!-- ######### 대화 종료 알림 End ########## -->
            <div class="from-them">
                <div class="them">
                    <p>안녕하세요 배송문의 드릴게요</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
                <div class="me">
                    <p>아 네 고객님 몇가지 확인 후 안내 도와드리겠습니다</p>
                </div>
            </div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
                <div class="me">
                    <p>주문번호나 ID 확인 가능하실까요</p>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-them">
                <div class="them">
                    <p>네 어제 주문했구요</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:28</span>
                </div>
                <div class="me">
                    <p>네네</p>
                </div>
            </div>
            <div class="clear"></div>

        </div>
        <div class="chat_bottom">
            <textarea class="type_msg" placeholder="메시지를 입력하세요"></textarea>
            <button type="button" class="fr">
                <span class="fa fa-paper-plane"></span>
            </button>
            <div class="powered">
                <span>Powered by <b>CnAI</b></span>
            </div>
        </div>
    </div>
    <!--  카카오톡 채팅창 End  -->
    <!--  네이버톡톡 채팅창 Start  -->
    <div id="chat_naver" class="chat-box chat_naver">
        <!-- ### 모달팝업 뒷 배경 Start -->
        <div class="dim2" style="height: calc(100% - 180px); margin-top: 60px;"></div>
        <!-- ### 모달팝업 뒷 배경 End ### -->
        <!-- ### 상담 종료 모달팝업 시작 ### -->
        <div class="modal_chat-end2" style="top: calc(50% - 30px);">
            <div class="modal_top">상담종료하기</div>
            <p>확인을 누르시면 상담이 종료됩니다.</p>
            <p>종료하시겠습니까?</p>
            <div class="modal_btn-area">
                <button class="btn_modal1" onclick="chatClosePopEnd2()">취소</button>
                <button class="btn_modal2" onclick="location.href=''">확인</button>
            </div>
        </div>
        <!-- ### 상담 종료 모달팝업 끝 ### -->
        <div class="chat_top">
            <img src="../resources/images/navertalk.png" style="height: 25px;">
            <span class="mgl4">네이버톡톡 채팅상담</span>
            <div class="chat-close fr" onclick="chatClosePop2()"><span></span><span></span></div>
        </div>
        <div class="chat_area">

            <!-- 챗봇 대화 Start -->
            <div class="from-them bot">
                <div class="them">
                    <p class="fontb" style="margin-bottom: 4px;">안녕하세요 고객님 CnAI 입니다.</p>
                    <p>최대한 빠른 안내 도와드리겠습니다. 감사합니다.</p>
                    <p>아래 문의 유형을 선택해주세요!</p>
                    <button class="btn_modal1 w100 he30x">상품 문의</button>
                    <button class="btn_modal1 w100 he30x">배송 문의</button>
                    <button class="btn_modal1 w100 he30x">환불/반품 문의</button>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <!-- 챗봇 대화 End -->
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:26</span>
                </div>
                <div class="me">
                    <p>안녕하세요 OOO상담원입니다. 무엇을 도와드릴까요</p>
                </div>
            </div>
            <div class="clear"></div>
            <!-- ######### 대화 종료 알림 Start ########## -->
            <div class="from-bot">
                <div class="bot_notice">
                    <p>앞으로 5분 동안 입력이 없는 경우 상담이 자동종료 됩니다.</p>
                    <p>추가로 궁금한 사항을 남겨 주시면 안내 드리겠습니다.</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:25</span>
                </div>
            </div>
            <div class="from-bot">
                <div class="bot_notice">
                    <p class="bot_last">챗봇 상담이 종료되었습니다.</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:30</span>
                </div>
            </div>
            <!-- ######### 대화 종료 알림 End ########## -->
            <div class="from-them">
                <div class="them">
                    <p>안녕하세요 배송문의 드릴게요</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
                <div class="me">
                    <p>아 네 고객님 몇가지 확인 후 안내 도와드리겠습니다</p>
                </div>
            </div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
                <div class="me">
                    <p>주문번호나 ID 확인 가능하실까요</p>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-them">
                <div class="them">
                    <p>네 어제 주문했구요</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:28</span>
                </div>
                <div class="me">
                    <p>네네</p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="chat_bottom">
            <textarea class="type_msg" placeholder="메시지를 입력하세요"></textarea>
            <button type="button" class="fr">
                <span class="fa fa-paper-plane"></span>
            </button>
            <div class="powered">
                <span>Powered by <b>CnAI</b></span>
            </div>
        </div>
    </div>
    <!--  네이버톡톡 채팅창 End  -->
    <!--  일반채팅 채팅창 Start  -->
    <div id="chat_chat" class="chat-box chat_chat">
        <!-- ### 모달팝업 뒷 배경 Start -->
        <div class="dim3" style="height: calc(100% - 180px); margin-top: 60px;"></div>
        <!-- ### 모달팝업 뒷 배경 End ### -->
        <!-- ### 상담 종료 모달팝업 시작 ### -->
        <div class="modal_chat-end3" style="top: calc(50% - 30px);">
            <div class="modal_top">상담종료하기</div>
            <p>확인을 누르시면 상담이 종료됩니다.</p>
            <p>종료하시겠습니까?</p>
            <div class="modal_btn-area">
                <button class="btn_modal1" onclick="chatClosePopEnd3()">취소</button>
                <button class="btn_modal2" onclick="location.href=''">확인</button>
            </div>
        </div>
        <!-- ### 상담 종료 모달팝업 끝 ### -->
        <div class="chat_top">
            <img src="../resources/images/chatting.png" style="height: 25px;">
            <span class="mgl4">채팅상담</span>
            <div class="chat-close fr" onclick="chatClosePop3()"><span></span><span></span></div>
        </div>
        <div class="chat_area">
            <!-- 챗봇 대화 Start -->
            <div class="from-them bot">
                <div class="them">
                    <p class="fontb" style="margin-bottom: 4px;">안녕하세요 고객님 CnAI 입니다.</p>
                    <p>최대한 빠른 안내 도와드리겠습니다. 감사합니다.</p>
                    <p>아래 문의 유형을 선택해주세요!</p>
                    <button class="btn_modal1 w100 he30x">상품 문의</button>
                    <button class="btn_modal1 w100 he30x">배송 문의</button>
                    <button class="btn_modal1 w100 he30x">환불/반품 문의</button>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <!-- 챗봇 대화 End -->
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:26</span>
                </div>
                <div class="me">
                    <p>안녕하세요 OOO상담원입니다. 무엇을 도와드릴까요</p>
                </div>
            </div>
            <div class="clear"></div>
            <!-- ######### 대화 종료 알림 Start ########## -->
            <div class="from-bot">
                <div class="bot_notice">
                    <p>앞으로 5분 동안 입력이 없는 경우 상담이 자동종료 됩니다.</p>
                    <p>추가로 궁금한 사항을 남겨 주시면 안내 드리겠습니다.</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:25</span>
                </div>
            </div>
            <div class="from-bot">
                <div class="bot_notice">
                    <p class="bot_last">챗봇 상담이 종료되었습니다.</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:30</span>
                </div>
            </div>
            <!-- ######### 대화 종료 알림 End ########## -->
            <div class="from-them">
                <div class="them">
                    <p>안녕하세요 배송문의 드릴게요</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
                <div class="me">
                    <p>아 네 고객님 몇가지 확인 후 안내 도와드리겠습니다</p>
                </div>
            </div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
                <div class="me">
                    <p>주문번호나 ID 확인 가능하실까요</p>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-them">
                <div class="them">
                    <p>네 어제 주문했구요</p>
                </div>
                <div class="time">
                    <span class="timeview">오전 11:27</span>
                </div>
            </div>
            <div class="clear"></div>
            <div class="from-me">
                <div class="time">
                    <span class="timeview">오전 11:28</span>
                </div>
                <div class="me">
                    <p>네네</p>
                </div>
            </div>
            <div class="clear"></div>

        </div>
        <div class="chat_bottom">
            <textarea class="type_msg" placeholder="메시지를 입력하세요"></textarea>
            <button type="button" class="fr">
                <span class="fa fa-paper-plane"></span>
            </button>
            <div class="powered">
                <span>Powered by <b>CnAI</b></span>
            </div>
        </div>
    </div>
    <!--  일반채팅 채팅창 End  -->
    <!--  ---------------- 채팅창(박스) End --------------  -->

    <!--  ############### 플로팅 버튼 및 채팅창 End ################ -->

    <!-- ----------- 로그인 영역 --------START------- -->
    <section class="login-area">
        <div class="logo-area">
            <img alt="로고" src="../resources/images/logo_cnai_gray.png" style="height: 32px;">
        </div>
        <div class="login-box">
            <div class="login pw">
                <p>상담 관리 시스템</p>
                <p>PASSWORD</p>
                <!-- 로그인 정보 입력 --Start -->
                <ul>
                    <li>
                        <span class="fa fa-user-alt"></span>
                        <input type="text" placeholder="아이디를 입력하세요">
                        <div class="login-title">
                            <span>ID</span>
                        </div>
                    </li>
                    <li>
                        <span class="fa fa-lock"></span>
                        <input type="password" placeholder="새로운 비밀번호를 입력하세요">
                        <div class="login-title">
                            <span>Password</span>
                        </div>
                    </li>
                    <li class="mgt8">
                        <span class="fa fa-lock"></span>
                        <input type="password" placeholder="새로운 비밀번호를 다시 입력하세요">
                    </li>
                    <li>
                        <!-- 오류 메시지 -- Start -->
                        <div class="error-msg" style="display: none; cursor: pointer;" onclick="errorMsgHide()">
                            <span class="tix_point"><b>아이디</b>를 입력해 주세요.</span>
                        </div>
                        <!-- 오류 메시지 -- End -->
                        <button type="button" onclick="errorMsgView()">비밀번호 저장
                        </button>
                    </li>
                    <li>
                        <!-- 비밀번호 변경조건  -->
                        <div class="pw-rule">
                            <ul>
                                <li><span class="fa fa-check"></span>반드시 비밀번호 변경 후 이용</li>
                                <li><span class="fa fa-check"></span>입력가능한 특수문자는 { } [ ] ( ) &#60; &#62; ! @ #$ % ^ &#38;* _ + /  ? </li>
                                <li><span class="fa fa-check"></span>10자~20자의 영문 대소문자, 숫자, 특수기호만 사용가능(공백입력 불가)</li>
                                <li><span class="fa fa-check"></span>3자 이상 연속 또는 중복되는 문자, 숫자는 사용불가</li>
                                <li><span class="fa fa-check"></span>비밀번호는 90일에 한번이상 반드시 변경</li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="copyright">
            © <b>CNAI</b> 2021 All Right Reserved.
        </div>
    </section>
    <!-- ----------- 로그인 영역 ---------END-------- -->
    <!-- ----------- 배경화면 영역 ---------START-------- -->
    <section class="login-back" style="background-image: url(../resources/images/login_back.png); background-position: right; background-color: #fff;">
    </section>
    <!-- ----------- 배경화면 영역 ---------END-------- -->
    <script type="text/javascript">
        /** 상담종료 팝업 */
        const closemodal = document.querySelector('.modal_chat-end');
        const closemodal2 = document.querySelector('.modal_chat-end2');
        const closemodal3 = document.querySelector('.modal_chat-end3'); // 모달
        const dim = document.querySelector('.dim1');
        const dim2 = document.querySelector('.dim2');
        const dim3 = document.querySelector('.dim3');// black 배경
        function chatClosePop() {
            closemodal.style.display = 'block';
            dim.style.display = 'block';
        }
        function chatClosePopEnd() {
            closemodal.style.display = 'none';
            dim.style.display = 'none';
        }
        function chatClosePop2() {
            closemodal2.style.display = 'block';
            dim2.style.display = 'block';
        }
        function chatClosePopEnd2() {
            closemodal2.style.display = 'none';
            dim2.style.display = 'none';
        }
        function chatClosePop3() {
            closemodal3.style.display = 'block';
            dim3.style.display = 'block';
        }
        function chatClosePopEnd3() {
            closemodal3.style.display = 'none';
            dim3.style.display = 'none';
        }
    </script>
    <script type="text/javascript">
        const errormsg = document.querySelector('.error-msg'); // 에러 메시지
        function errorMsgView() {
            errormsg.style.display = 'block';
        }
        function errorMsgHide() {
            errormsg.style.display = 'none';
        }
    </script>
    <!--  ############### 컨텐츠 끝 #################  -->

</div>

</body>
</html>