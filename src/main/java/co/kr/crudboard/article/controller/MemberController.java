package co.kr.crudboard.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {


    // 멤버 로그인
    @RequestMapping(value = "/login")
    public String goToLogin() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버로그인화면 이동합니다.");




        return "member/memberLogin";
    }


    // 멤버 가입
    @RequestMapping(value = "/register")
    public String goToRegister() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버가입화면 이동합니다.");




        return "member/memberRegister";
    }


    // 멤버 목록 불러오기
    @RequestMapping(value = "/list")
    public String goToList() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버목록화면 이동합니다.");





        return "member/memberList";
    }




}
