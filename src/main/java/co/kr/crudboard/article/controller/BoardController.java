package co.kr.crudboard.article.controller;

import co.kr.crudboard.article.domain.BoardDTO;
import co.kr.crudboard.article.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    BoardService boardService;



    // 01 - 01. 게시글 write 화면 이동
    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String goToWrite(HttpServletRequest request, Model model) throws Exception {
        System.out.println("쓰기화면 이동합니다.");
//      model.addAttribute("bno", request.getParameter("bno"));
        return "board/writing";
    }

    // 01 - 02. 게시글 write 실행 컨트롤러
    @ResponseBody
    @RequestMapping(value = "/write.do", method = RequestMethod.POST)
    public int ajaxinsert_Board(HttpServletRequest request, Model model) throws Exception {

        System.out.println("쓰기실행 컨트롤러 시작");
        System.out.println(request.getParameter("title"));

        int check  = 0;
        BoardDTO bDTO = new BoardDTO();

        bDTO.setTitle(request.getParameter("title"));
        bDTO.setWriter(request.getParameter("writer"));
        bDTO.setContent(request.getParameter("content"));
//        bDTO.setViewcnt(Integer.parseInt(request.getParameter("viewcnt")));
        try {
            check = boardService.writingBoard(bDTO);
            bDTO.setBno(boardService.getBno(bDTO));
            bDTO.toString();
            model.addAttribute("write", bDTO);
        } catch (Exception e) {

        }
        return check;

    }


    // 02. 각 게시물 read 컨트롤러
    @RequestMapping(value = "/read", method = RequestMethod.GET)
    public String goToView(HttpServletRequest request, Model model) throws Exception {

        System.out.println(request.getParameter("bno"));
        int bno = 0;
        //BoardDTO bDTO = new BoardDTO();
        BoardDTO bDTO;

        if( request.getParameter("bno") != null) {
            bno = Integer.parseInt(request.getParameter("bno"));
        }
        try {
            bDTO = boardService.reading(bno);
//            String content = bDTO.getContent();
            model.addAttribute("read", bDTO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "board/read";
    }


    // 03. 게시글 delete 컨트롤러
    @ResponseBody
    @RequestMapping("delete.do")
    public int delete(HttpServletRequest request, Model model) throws Exception {
        System.out.println("bno: " + request.getParameter("bno"));
        int bno = 0;
        int check = 0;

        if( request.getParameter("bno") != null) {
            bno = Integer.parseInt(request.getParameter("bno"));
        }
        try {
            boardService.deleting(bno);
            check = 1;
        } catch (Exception e) {
            e.printStackTrace();
            // TODO: handle exception
        }
        return check;
    }


    // 04 - 01. 게시글 modify 화면 이동
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String goToModify(HttpServletRequest request, Model model) throws Exception {

        int bno;
        BoardDTO bDTO;

        if(!"".equals(request.getParameter("bno")) && request.getParameterMap().containsKey("bno")) {
            bno = Integer.parseInt(request.getParameter("bno"));

            try {
                bDTO = boardService.reading(bno);
                System.out.println("내용 : " + bDTO.toString());
                model.addAttribute("view", bDTO);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "board/modify";
    }


    // 04 - 02. 게시글 modify 실행 컨트롤러
    @ResponseBody
    @RequestMapping(value = "modify.do", method = RequestMethod.POST)
    public int ajaxmodify_Board(HttpServletRequest request, Model model) throws Exception{

        int check = 0;
        BoardDTO bDTO = new BoardDTO();

        bDTO.setBno(Integer.parseInt(request.getParameter("bno")));
        bDTO.setTitle(request.getParameter("title"));
        bDTO.setWriter(request.getParameter("writer"));
        bDTO.setContent(request.getParameter("content"));

        try {
            check = boardService.modifying(bDTO);
            model.addAttribute("view", bDTO);
        } catch (Exception e) {
        }
        return check;
    }






    // 05. 목록 화면 이동
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String goToList(Model model) throws Exception {
        System.out.println("목록화면 이동합니다.");


        try {

            List<BoardDTO> listAll = boardService.listAll();
            model.addAttribute("listAllArticle", listAll);
//           model.addAttribute("listAllArticle", boardService.listAll());

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "board/list";
    }


}