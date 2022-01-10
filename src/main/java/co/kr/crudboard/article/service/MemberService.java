package co.kr.crudboard.article.service;



import co.kr.crudboard.article.domain.MemberDTO;
import co.kr.crudboard.article.repository.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    MemberDAO mDAO;

//        private MemberDAO mDAO;



    public MemberService(MemberDAO mDAO) {
        this. mDAO = mDAO;
    }

    // 01.
    public int regMember(MemberDTO mDTO) throws Exception {

        int check = 0;
        try {
            check = mDAO.regMember(mDTO);
        } catch (Exception e) {
        }
        return check;
    }

    // 02.
    public int loginMember(MemberDTO mDTO) throws Exception {

        int mno = 0;
        try {
            mno = mDAO.loginMember(mDTO);
            System.out.println(mno);
        } catch (Exception e) {
        }
        return mno;
    }



/*
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
    }*/


}