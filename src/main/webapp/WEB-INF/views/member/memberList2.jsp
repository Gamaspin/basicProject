<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">

<!-- begin::Head -->
<head>
    <meta charset="utf-8" />
    <title>회원 목록</title>


    <meta name="description" content="Static table examples">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="/web_resources/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/bootstrap-datepicker_new.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/daterangepicker.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/line-awesome.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/flaticon.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/flaticon2.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/style.bundle_new.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/light.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/dark.css" rel="stylesheet" type="text/css" />
    <link href="/web_resources/css/common.css?v=20191104" rel="stylesheet" type="text/css" />

    <!-- 2019-0806 jquery.js > 하단 에서 상단으로 위치 변경: 모달팝업 인풋박스 아래 텍스트 유동적 나오는 소스 포함+기존 셀렉트 박스 등 -->
    <script src="/web_resources/bower_components/jquery/dist/jquery.js" type="text/javascript"></script>
    <!-- 2019-0806  bootstrapvalidator.min.js > 모달팝업 인풋박스 아래 유동적 테스트 나오게 하는 소스 추가 -->
    <script src="/web_resources/bower_components/jquery/dist/bootstrapvalidator.min.js"></script>
    <link rel="shortcut icon" href="/web_resources/images/favicon.ico" />

    <style>
        .kt-header--fixed.kt-aside--minimize .kt-header {
            /* left: 70px;*/
            left: 0px !important;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }
        .kt-aside--enabled .kt-header.kt-header--fixed {
            /* left: 255px; */
            left: 0px !important;
        }
        .kt-aside__brand {
            background-color: #FFFFFF !important;
            -webkit-box-shadow: none;
            box-shadow: none;
            width: 255px;
        }

        .kt-aside__brand .kt-aside__brand-tools .kt-aside__brand-aside-toggler svg {
            height: 25px;
            width: 25px;
            margin-right: -4px;
        }
    </style>
</head>
<body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">
<!-- begin:: Page -->
<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">



    <!-- hader 시작  -->
    <div id="kt_header" class="kt-header kt-grid__item  kt-header--fixed">





        <!--  로고 접기 기능 시작 -->
        <div class="kt-aside__brand kt-grid__item" id="kt_aside_brand">
            <div class="kt-aside__brand-logo">
                <a href="/member/list">
                    <img alt="Logo" src="/web_resources/images/logo-light.png" />
                </a>
            </div>
            <div class="kt-aside__brand-tools">
                <button class="kt-aside__brand-aside-toggler" id="kt_aside_toggler">
								<span><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
										<g stroke="none" stroke-width="1" fill="#3f2676" fill-rule="evenodd">
										
										
											<polygon id="Shape" points="0 0 24 0 24 24 0 24" />
											<path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" id="Path-94" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999) " />
											<path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" id="Path-95" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999) " />
										</g>
									</svg></span>
                    <span><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
										<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
											<polygon id="Shape1" points="0 0 24 0 24 24 0 24" />
											<path d="M12.2928955,6.70710318 C11.9023712,6.31657888 11.9023712,5.68341391 12.2928955,5.29288961 C12.6834198,4.90236532 13.3165848,4.90236532 13.7071091,5.29288961 L19.7071091,11.2928896 C20.085688,11.6714686 20.0989336,12.281055 19.7371564,12.675721 L14.2371564,18.675721 C13.863964,19.08284 13.2313966,19.1103429 12.8242777,18.7371505 C12.4171587,18.3639581 12.3896557,17.7313908 12.7628481,17.3242718 L17.6158645,12.0300721 L12.2928955,6.70710318 Z" id="Path-96" fill="#000000" fill-rule="nonzero" />
											<path d="M3.70710678,15.7071068 C3.31658249,16.0976311 2.68341751,16.0976311 2.29289322,15.7071068 C1.90236893,15.3165825 1.90236893,14.6834175 2.29289322,14.2928932 L8.29289322,8.29289322 C8.67147216,7.91431428 9.28105859,7.90106866 9.67572463,8.26284586 L15.6757246,13.7628459 C16.0828436,14.1360383 16.1103465,14.7686056 15.7371541,15.1757246 C15.3639617,15.5828436 14.7313944,15.6103465 14.3242754,15.2371541 L9.03007575,10.3841378 L3.70710678,15.7071068 Z" id="Path-97" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(9.000003, 11.999999) rotate(-270.000000) translate(-9.000003, -11.999999) " />
										</g>
									</svg></span>
                </button>


            </div>
        </div>    <!--로고 접기 기능 끝 -->

        <div class="kt-header__topbar" style="float: right;">
            <div style="margin:10px 0px 0px 10px;">  메세지: <span class="kt-badge kt-badge--brand">3</span>  </div>
            <div style="margin:10px 10px 0px 10px;"> 이메일:   <span class="kt-badge kt-badge--warning"> 38</span>   </div>
            <div style="margin:10px;"><span style="font-weight:bold;">배귀정 주무관님</span>환영합니다.</div>
            <span class="kt-badge kt-badge--username kt-badge--unified-success kt-badge--lg kt-badge--rounded kt-badge--bold" style="margin-top:9px; width: 100px; height: 25px; font-size: 13px;"> 로그아웃
					<span class="la la-sign-out"   style="color:#666; font-size: 1.5rem !important; margin-left: 4px;"></span>
					</span>
        </div>

    </div>
    <!-- hader 끝  -->



    <!-- menu 시작 -->
    <div class="kt-aside  kt-aside--fixed  kt-grid__item kt-grid kt-grid--desktop kt-grid--hor-desktop" id="kt_aside"  style="margin-top: 59px;">




        <!-- begin:: Aside Menu -->
        <div class="kt-aside-menu-wrapper kt-grid__item kt-grid__item--fluid" id="kt_aside_menu_wrapper">
            <div id="kt_aside_menu" class="kt-aside-menu " data-ktmenu-vertical="1" data-ktmenu-scroll="1" data-ktmenu-dropdown-timeout="500">
                <ul class="kt-menu__nav">
                    <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-icon">
									<span class="fa fa-sitemap"></span>
								</span><span class="kt-menu__link-text">기초정보</span>
                        <i class="kt-menu__ver-arrow la la-angle-right"></i>
                    </a>
                        <div class="kt-menu__submenu "><span class="kt-menu__arrow"></span>
                            <ul class="kt-menu__subnav">
                                <li class="kt-menu__item  kt-menu__item--parent" aria-haspopup="true">
                                    <span class="kt-menu__link"><span class="kt-menu__link-text">기초정보</span></span></li>

                                <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">조직관리</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
                                    <div class="kt-menu__submenu "><span class="kt-menu__arrow"></span>
                                        <ul class="kt-menu__subnav">
                                            <li class="kt-menu__item " aria-haspopup="true"><a href="?pageChange=page06.jsp" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">사원관리</span></a></li>
                                            <li class="kt-menu__item " aria-haspopup="true"><a href="components_base_tabs_line.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">고객사관리</span></a></li>
                                            <li class="kt-menu__item " aria-haspopup="true"><a href="components_base_tabs_line.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">부서관리</span></a></li>
                                            <li class="kt-menu__item " aria-haspopup="true"><a href="components_base_tabs_line.html" class="kt-menu__link "><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">팀관리</span></a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </li>   <!-- 기초 정보 끝 -->


                    <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-icon">
											<span class="flaticon-whatsapp"> </span>
											</span><span class="kt-menu__link-text">통화이력</span>
                        <i class="kt-menu__ver-arrow la la-angle-right"></i></a>
                        <div class="kt-menu__submenu "><span class="kt-menu__arrow"></span>
                            <ul class="kt-menu__subnav">
                                <li class="kt-menu__item  kt-menu__item--parent" aria-haspopup="true">
                                    <span class="kt-menu__link"><span class="kt-menu__link-text"></span></span></li>

                                <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">통화청취</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>

                                </li>
                            </ul>
                        </div>

                    </li>

                    <!-- 통화청취 메뉴 끝 -->
                    <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-icon">
											<span class="fa fa-chart-bar"> </span>
											</span><span class="kt-menu__link-text">통계</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
                        <div class="kt-menu__submenu "><span class="kt-menu__arrow"></span>
                            <ul class="kt-menu__subnav">
                                <li class="kt-menu__item  kt-menu__item--parent" aria-haspopup="true">
                                    <span class="kt-menu__link"><span class="kt-menu__link-text"></span></span></li>

                                <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">시간 및 상담원별 통계</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>

                                </li>
                            </ul>
                        </div>

                    </li>
                    <!-- 모니터링 메뉴 시작 -->


                    <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><span class="kt-menu__link-icon">
										<span class="fa fa-laptop"> </span>
										</span><span class="kt-menu__link-text">모니터링</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>
                        <div class="kt-menu__submenu "><span class="kt-menu__arrow"></span>
                            <ul class="kt-menu__subnav">
                                <li class="kt-menu__item  kt-menu__item--parent" aria-haspopup="true">
                                    <span class="kt-menu__link"><span class="kt-menu__link-text"></span></span></li>

                                <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">전광판</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>

                                </li>
                                <li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true" data-ktmenu-submenu-toggle="hover"><a href="javascript:;" class="kt-menu__link kt-menu__toggle"><i class="kt-menu__link-bullet kt-menu__link-bullet--dot"><span></span></i><span class="kt-menu__link-text">상담 현황</span><i class="kt-menu__ver-arrow la la-angle-right"></i></a>

                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--Menu 끝 -->



    <!--  Content   시작 -->
    <div class="kt-content  kt-grid__item kt-grid__item--fluid">



        <div class="row">
            <div class="col-xl-12">
                <div class="kt-portlet">
                    <!-- 사원정보 관리 타이틀 시작  title start -->
                    <div class="kt-portlet__head">
                        <div class="tixtop_s001">
                            <span class="fa fa-check-circle co77"></span>
                            사원정보 관리</div>
                        <div style="width: 100px; float: right;">
                            <span class="btn_addnew  he30 " data-toggle="modal" data-target="#kt_modal_6" >+ 등록</span>
                        </div>
                    </div>
                    <!-- 사원정보 타이틀 끝    title end -->

                    <!-- 검색박스 시작  search start -->
                    <div class="boxs">
                        <div class="w10 fl">
                            <span style="font-weight: 600;"> *총 <span class="point_co">14</span>건</span>
                        </div>
                        <div class="fr he20 w90">
			<span class="btn_findnew fr">
			 검색
			</span>
                            <input type="text" class="form-control_22 w12 fr"  placeholder="">

                            <div class="fr w115 mgr4">
                                <select class="form-control kt-selectpicker">
                                    <option>전체</option>
                                    <option>사원명</option>
                                    <option>사원아이디</option>
                                    <option>내선번호</option>
                                    <option>부서</option>
                                    <option>권한</option>
                                </select>
                            </div>
                            <div class="fr w115 mgr4" >
                                <select class="form-control kt-selectpicker">
                                    <option>재직상태</option>
                                    <option>재직</option>
                                    <option>퇴직</option>
                                    <option>휴직</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!-- 검색박스 끝  search end -->
                    <div class="kt-portlet__body">
                        <div class="kt-section">
                            <div class="kt-section__content">
                                <!--  테이블 시작 -->
                                <table class="table table-new1 table-hover">
                                    <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>사원아이디</th>
                                        <th>사원명</th>
                                        <th>내선번호</th>
                                        <th>팀명</th>
                                        <th>권한</th>
                                        <th>재직상태</th>
                                        <th>입사일자</th>
                                        <th>퇴사일자</th>
                                        <th>비밀번호 오류</th>
                                        <th>비밀번호 초기화</th>
                                        <th>등록자</th>
                                        <th>등록일시</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>14</td>
                                        <td>gwijung.bae0</td>
                                        <td>배귀정0</td>
                                        <td>7000</td>
                                        <td>건설1팀</td>
                                        <td>ASSIST   </td>
                                        <td>재직</td>
                                        <td>2019-04-27</td>
                                        <td>2019-03-07</td>
                                        <td>0</td>
                                        <td><img src="/web_resources/images/icon_r.png"  alt="" ></td>
                                        <td>배귀정</td>
                                        <td>2019-07-10 14:18:46</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>gwijung.bae9</td>
                                        <td>배귀정9</td>
                                        <td>7009</td>
                                        <td>농수산1팀</td>
                                        <td>AM   </td>
                                        <td>재직</td>
                                        <td></td>
                                        <td></td>
                                        <td>0</td>
                                        <td><img src="/web_resources/images/icon_r.png" alt="" ></td>
                                        <td>배귀정</td>
                                        <td>2019-07-10 15:15:59</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>gwijung.bae8</td>
                                        <td>배귀정8</td>
                                        <td>7008</td>
                                        <td>농수산1팀</td>
                                        <td>AGENT   </td>
                                        <td>재직</td>
                                        <td>--</td>
                                        <td>--</td>
                                        <td>0</td>
                                        <td><img src="/web_resources/images/icon_r.png" alt=""  ></td>
                                        <td>배귀정</td>
                                        <td>2019-07-29 14:06:17</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <!-- 테이블 끝 -->
                                <!-- 페이징 시작-->
                                <div id="pwary">
                                    <div class="pwar">
                                        <div id="pagingNew">
                                            <a href="#" class="numPrev_a">
                                                <span class="flaticon2-fast-back" style="font-size: 0.6rem;"></span>
                                            </a>
                                            <a href="#" class="numPrev">
                                                <span class="flaticon2-back" style="font-size: 0.6rem;"></span>
                                            </a>
                                            <span class="sel">1</span>
                                            <a href="#" class="numBox">2</a>
                                            <a href="#" class="numBox">3</a>
                                            <a href="#" class="numBox">4</a>
                                            <a href="#" class="numBox">5</a>
                                            <a href="#" class="numBox">6</a>
                                            <a href="#" class="numBox">7</a>
                                            <a href="#" class="numBox">8</a>
                                            <a href="#" class="numBox">9</a>
                                            <a href="#" class="numBox">10</a>
                                            <a href="#" class="numNext">
                                                <span class="flaticon2-next" style="font-size: 0.6rem;"></span></a>
                                            <a href="#" class="numNext_2">
                                                <span class="flaticon2-fast-next" style="font-size: 0.6rem;"></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- 페이징 끝 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 사원정보 모달 팝업 시작 -->

            <script type="text/javascript">

                $(document).ready(function() {
                    $('#reg_form').bootstrapValidator({

                        fields: {
                            first_name: {
                                validators: {
                                    stringLength: {
                                        min: 2,
                                    },
                                    notEmpty: {
                                        message: '아이디를 입력해주세요'
                                    }
                                }
                            },

                            phone: {
                                validators: {
                                    notEmpty: {
                                        message: '내선번호를 입력하세요'
                                    },
                                    phone: {

                                        message: '다시입력해주세요'
                                    }
                                }
                            },


                        }
                    })


                        .on('success.form.bv', function(e) {
                            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                            $('#reg_form').data('bootstrapValidator').resetForm();

                            // Prevent form submission
                            e.preventDefault();

                            // Get the form instance
                            var $form = $(e.target);

                            // Get the BootstrapValidator instance
                            var bv = $form.data('bootstrapValidator');

                            // Use Ajax to submit form data
                            $.post($form.attr('action'), $form.serialize(), function(result) {
                                console.log(result);
                            }, 'json');
                        });
                });


            </script>
            <div class="col-xl-12">
                <div class="kt-portlet">
                    <div class="modal fade" id="kt_modal_6" tabindex="-1" role="dialog"  aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle"><span class="fa fa-pencil-alt mgr8 co77"></span>사원정보 등록</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div style="width: 100%;">
                                        <form class="form-horizontal martop8" method="post"  id="reg_form">
                                            <fieldset>
                                                <!-- 사원아이디 중복검색 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">사원아이디<span class="po">* </span> </label>
                                                    <div class="col-md-6  inputGroupContainer"   style="width: 100%;">
                                                        <div class="input-group">
                                                            <input  name="first_name" type="text" class="form-control_1" placeholder="아이디를 입력해주세요">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-primary_777" type="button">중복검색</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 사원아이디 중복검색 끝 -->
                                                <!-- 사원명 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7 ">사원명<span class="po">* </span> </label>
                                                    <div class="col-md-6  inputGroupContainer">
                                                        <div class="input-group">
                                                            <input  type="text" class="form-control_22" placeholder=" ">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 사원명  끝 -->
                                                <!-- 부서코드 셀렉트 박스 시작  -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">부서코드</label>
                                                    <div class="col-md-6  inputGroupContainer">
                                                        <div class="input-group_1">
                                                            <div class="fl w115 mgr4" >
                                                                <select class="form-control kt-selectpicker">
                                                                    <option>본부명선택</option>
                                                                    <option>LG</option>
                                                                    <option>루키스</option>
                                                                    <option>삼성</option>
                                                                    <option>유비콤</option>
                                                                    <option>한국고용정보</option>
                                                                    <option>현대자동차</option>
                                                                </select>
                                                            </div>
                                                            <div class="fl w115" >
                                                                <select class="form-control kt-selectpicker">
                                                                    <option>팀명선택</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 부서코드 셀렉트 박스 끝 -->
                                                <!-- 내선번호 중복검색 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7 ">내선번호<span class="po">* </span> </label>
                                                    <div class="col-md-6  inputGroupContainer"   style="width: 100%;">
                                                        <div class="input-group">
                                                            <input type="text" class="form-control_1"  name="phone" placeholder="숫자 4자리만 입력해주세요">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-primary_777" type="button">중복검색</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 내선번호 중복검색 끝 -->
                                                <!-- 재직여부 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">재직여부<span class="po">* </span></label>
                                                    <div class="col-md-6 inputGroupContainer">
                                                        <div class="input-group">
                                                            <select class="form-control kt-selectpicker">
                                                                <option>선택</option>
                                                                <option>재직</option>
                                                                <option>퇴사</option>
                                                                <option>휴직</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 재직여부 끝 -->
                                                <!-- 업무 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">업무<span class="po">* </span></label>
                                                    <div class="col-md-6 inputGroupContainer">
                                                        <div class="input-group">
                                                            <select class="form-control kt-selectpicker">
                                                                <option>선택</option>
                                                                <option>상담</option>
                                                                <option>관리</option>
                                                                <option>기사</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 업무 끝 -->
                                                <!-- 권한 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">권한<span class="po">* </span></label>
                                                    <div class="col-md-6 inputGroupContainer">
                                                        <div class="input-group">
                                                            <select class="form-control kt-selectpicker">
                                                                <option>선택</option>
                                                                <option>AM</option>
                                                                <option>MANAGER</option>
                                                                <option>INSTRUCTOR</option>
                                                                <option>ASSIST</option>
                                                                <option>SUPERVISOR</option>
                                                                <option>AGENT</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 권한 끝 -->
                                                <!-- 입사일자 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">입사일자<span class="po">* </span></label>
                                                    <div class="col-md-6 inputGroupContainer">
                                                        <div class='input-group ' id='kt_daterangepicker_2'  style="height: 30px;">
                                                            <input type='text' class="form-control he30new" readonly placeholder=""  style="height: 30px !important;">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text"><i class="la la-calendar-check-o"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 입사일자 끝 -->
                                                <!-- 퇴사일자 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">퇴사일자<span class="po">* </span></label>
                                                    <div class="col-md-6 inputGroupContainer">
                                                        <div class='input-group ' id='kt_daterangepicker_1'  style="height: 30px;">
                                                            <input type='text' class="form-control he30new" readonly placeholder=""  style="height: 30px !important;">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text"><i class="la la-calendar-check-o"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 퇴사일자 끝 -->
                                                <!-- 비고 시작 -->
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label margin-top7">비고 </label>
                                                    <div class="col-md-6  inputGroupContainer">
                                                        <div class="input-group">
                                                            <textarea class="form-control " id="exampleTextarea" rows="12"  style="height: 45px ! important "></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <span class=" fs11"  style="float: left; width:72%;">*항목은 <span class="po">필수항목</span>입니다. </span><br><br>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal"   style="height: 30px;">닫기</button>
                                    <button type="button" class="btn btn-primary"  style="height: 30px;">저장</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 사원정보 등록 모달 팝업 끝 -->
        </div>
    </div>
    <!--  Content  끝 -->


</div>
<!-- page 끝 -->

<script>
    var KTAppOptions = {
        "colors": {
            "state": {
                "brand": "#5d78ff",
                "dark": "#282a3c",
                "light": "#ffffff",
                "primary": "#5867dd",
                "success": "#34bfa3",
                "info": "#36a3f7",
                "warning": "#ffb822",
                "danger": "#fd3995"
            },
            "base": {
                "label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
                "shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
            }
        }
    };
</script>

<!-- end::Global Config -->

<!--begin:: Global Mandatory Vendors -->
<script src="/web_resources/bower_components/popper.js/dist/umd/popper.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/js-cookie/src/js.cookie.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/moment/min/moment.min.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/jquery-ui/ui/minified/tooltip.min.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/wnumb/wNumb.js" type="text/javascript"></script>

<!--begin:: Global Optional Vendors -->
<script src="/web_resources/assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/bootstrap-datepicker/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/bootstrap-timepicker/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/bootstrap-switch/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
<script src="/web_resources/bower_components/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/bootstrap-markdown/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/bootstrap-notify/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/jquery-validation/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/custom/components/vendors/sweetalert2/init.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
<script src="/web_resources/assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>

<script src="/web_resources/assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>
<script src="/web_resources/assets/app/custom/login/login-general.js" type="text/javascript"></script>
<script src="/web_resources/assets/app/custom/general/crud/forms/widgets/bootstrap-select.js" type="text/javascript"></script>
<script src="/web_resources/assets/app/custom/general/crud/forms/widgets/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="/web_resources/assets/app/custom/general/crud/metronic-datatable/base/data-local.js" type="text/javascript"></script>
<script src="/web_resources/assets/app/custom/general/crud/forms/widgets/bootstrap-daterangepicker.js" type="text/javascript"></script>

<script src="/web_resources/assets/app/bundle/app.bundle.js" type="text/javascript"></script>
</body>

<!-- end::Body -->
</html>