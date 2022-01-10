package co.kr.crudboard.article.service;


import co.kr.crudboard.article.domain.BoardDTO;
import co.kr.crudboard.article.repository.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    @Autowired
    BoardDAO bDAO;

//        private BoardDAO bDAO;



    public BoardService(BoardDAO bDAO) {
        this. bDAO = bDAO;
    }

    // 01. 게시글 쓰기
    public int writingBoard(BoardDTO bDTO) throws Exception {

        int check = 0;
        try {
            check = bDAO.writingBoard(bDTO);
        } catch (Exception e) {
        }
        return check;
    }

    // 01-02. 가장 최근 게시글번호 가져오기
    public int getBno(BoardDTO bDTO) throws Exception {

        int bno = 0;
        try {
            bno = bDAO.getBno(bDTO);
            System.out.println(bno);
        } catch (Exception e) {
        }
        return bno;
    }




    // 02. 게시글 보기
    public BoardDTO reading(int bno) throws Exception {
        return bDAO.reading(bno);
    }


    // 03. 게시글 삭제
    public void deleting(int bno) throws Exception {
        bDAO.deleting(bno);
    }


    // 04. 게시글 수정
    public int modifying(BoardDTO bDTO) throws Exception {
        int check = 0;
        try {
            check = bDAO.modifying(bDTO);
        } catch (Exception e) {
        }
        return check;
    }


    // 05. 목록 보기
    public List<BoardDTO> listAll() throws Exception {
        return bDAO.listAll();
    }

    // 06. 현재 게시물 갯수 구하기
    public int countingArticle() throws Exception {
        return bDAO.countingArticle();
    }
}
