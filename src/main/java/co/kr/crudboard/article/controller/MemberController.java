package co.kr.crudboard.article.controller;

import co.kr.crudboard.article.domain.BoardDTO;
import co.kr.crudboard.article.domain.MemberDTO;
import co.kr.crudboard.article.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService memberService;


    // 멤버 로그인
    @RequestMapping(value = "/login")
    public String goToLogin() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버로그인화면 이동합니다.");




        return "member/memberLogin";
    }


    // 02-1. 회원가입 화면 가기
    @RequestMapping(value = "/register")
    public String goToRegister() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버가입화면 이동합니다.");




        return "member/memberRegister";
    }

    // 02-2. 회원가입 실행 컨트롤러
    @ResponseBody
    @RequestMapping(value = "/insert.do", method = RequestMethod.POST)
    public int ajaxinsert_Member(HttpServletRequest request, Model model) throws Exception {

        System.out.println("회원가입실행 컨트롤러 시작");
        System.out.println(request.getParameter("member_name"));

        int check  = 0;
        MemberDTO mDTO = new MemberDTO();

        mDTO.setMember_id(request.getParameter("member_id"));
        mDTO.setMember_pw(request.getParameter("member_pw"));
        mDTO.setMember_name(request.getParameter("member_name"));
        mDTO.setMember_email(request.getParameter("member_email"));
        try {
            check =memberService.regMember(mDTO);
            /*mDTO.setMember_no(memberService.getBno(mDTO));*/
            mDTO.toString();
            model.addAttribute("memberReg", mDTO);
        } catch (Exception e) {

        }
        return check;

    }




    // 멤버 목록 불러오기
    @RequestMapping(value = "/list")
    public String goToList() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버목록화면 이동합니다.");





        return "member/memberList";
    }




}
