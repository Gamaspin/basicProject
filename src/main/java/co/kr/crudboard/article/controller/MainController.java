package co.kr.crudboard.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

/*    @Autowired
    BoardService boardService;*/
// 회사 홈페이지 메인 화면
@RequestMapping({"/home","/"})
public String homeMain(){
    return "/member/memberLogin";
}

//    @RequestMapping(value = "/add", method = RequestMethod.GET)
//    public String goToWrite() throws Exception {
//        System.out.println("팀 추가 화면 이동합니다.");
////      model.addAttribute("bno", request.getParameter("bno"));
//        return "team/teamManagement";
//    }


/*

    // 05. 목록 화면 이동
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String doListAll(Model model) throws Exception {
        System.out.println("목록화면 이동합니다.");


        try {
            List<BoardDTO> listAll = boardService.listAll();
            int cnt =  boardService.countingArticle();
            System.out.println("cnt = " + cnt);
            model.addAttribute("listAllArticle", listAll);
            model.addAttribute("countingArticle", cnt);
//           model.addAttribute("listAllArticle", boardService.listAll());

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "team/teamManagement";
    }
*/


}
