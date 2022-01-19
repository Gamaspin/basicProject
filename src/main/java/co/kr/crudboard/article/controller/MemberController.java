package co.kr.crudboard.article.controller;

import co.kr.crudboard.article.domain.BoardDTO;
import co.kr.crudboard.article.domain.MemberDTO;
import co.kr.crudboard.article.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    MemberService memberService;


    // 01-1. 멤버 로그인 화면
    @RequestMapping(value = "/login")
    public String goToLogin() throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버로그인화면 이동합니다.");

        return "member/memberLogin";
    }

    // 01-2. 로그인 실행 컨트롤러
/*    @ResponseBody
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String ajaxlogin_Member(HttpServletRequest request, Model model) throws Exception {

        System.out.println("로그인실행 컨트롤러 시작");
        System.out.println(request.getParameter("member_no"));
        System.out.println(request.getParameter("member_id"));

*//*        HttpSession session = request.getSession();*//*
        int check = 0;
        MemberDTO mDTO = new MemberDTO();
        System.out.println(mDTO.toString());
        mDTO.setMember_id(request.getParameter("member_id"));
        mDTO.setMember_pw(request.getParameter("member_pw"));
        try {

            check =memberService.loginMember(mDTO);
          *//*  MemberDTO check = memberService.loginMember(mDTO);*//*

            mDTO.toString();
            System.out.println("멤버컨트롤러 check 값 확인");
            System.out.println(check);

            model.addAttribute("login", mDTO);


        } catch (Exception e) {
            e.printStackTrace();
        }
        return "member/memberList";
    }*/

    /*
    @ResponseBody
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String ajaxlogin_Member(HttpServletRequest request, HttpSession httpSession) throws Exception {

        System.out.println("로그인실행 컨트롤러 시작");
        System.out.println(request.getParameter("member_id"));
        System.out.println(request.getParameter("member_pw"));

        int check = 0;
*//*        String mid = "";
        String mpw = "";*//*

        MemberDTO mDTO = new MemberDTO();

        mDTO.setMember_id(request.getParameter("member_id"));
        mDTO.setMember_pw(request.getParameter("member_pw"));

*//*        //Check if username parameter exists
        if (request.getParameterMap().containsKey("member_id")) {
            String mid = request.getParameter("member_id");
        }
        // Check if password parameter exists
        if (request.getParameterMap().containsKey("member_pw")) {
            String member_pw = request.getParameter("member_pw");
        }*//*


        if(mDTO.getMember_id().equals(request.getParameter("member_id"))
                && mDTO.getMember_pw().equals(request.getParameter("member_pw"))) {

            try {
                memberService.loginMember(mDTO);

            } catch (Exception e) {
                e.printStackTrace();

            }
        } else {
            return "redirect:/";
        }
        return "member/memberList";
    }
*/

    @RequestMapping(value = "/login.do")
    public ModelAndView loginCheck(@ModelAttribute MemberDTO mDTO, HttpSession session){
        boolean result = memberService.loginCheck(mDTO, session);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
            // memberList.jsp로 이동
            mav.addObject("msg", "success");
            mav.setViewName("redirect:/member/list");

        } else {    // 로그인 실패
            // login.jsp로 이동
            mav.setViewName("member/memberLogin");
            mav.addObject("msg", "failure");
        }
        return mav;
    }

    // 03. 로그아웃 처리
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        memberService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("member/memberLogin");
        mav.addObject("msg", "logout");
        return mav;
    }




/*

    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String logout(HttpSession session) throws Exception{

        session.invalidate();

        return "redirect:/";
    }
*/

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
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String goMemberList(Model model) throws Exception {
        System.out.println("------------------------");
        System.out.println("멤버목록화면 이동합니다.");

        try {

            List<MemberDTO> listAll = memberService.listAll();
            model.addAttribute("listAllMember", listAll);


        } catch (Exception e) {
            e.printStackTrace();
        }




        return "member/memberList";
    }




}
