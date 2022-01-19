package co.kr.crudboard.article.service;



import co.kr.crudboard.article.domain.BoardDTO;
import co.kr.crudboard.article.domain.MemberDTO;
import co.kr.crudboard.article.repository.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MemberService {

    @Autowired
    MemberDAO mDAO;

//        private MemberDAO mDAO;



    public MemberService(MemberDAO mDAO) {
        this. mDAO = mDAO;
    }

    // 01. 로그인
/*    public int loginMember(MemberDTO mDTO) throws Exception {

        int mno = 0;
        try {
            mno = mDAO.loginMember(mDTO);
            System.out.println("멤버서비스 mno 불러오기");
            System.out.println(mno);
        } catch (Exception e) {
            System.out.println("");
        }
        return mno;
    }*/

    // 01_01. 회원 로그인체크
    public boolean loginCheck(MemberDTO mDTO, HttpSession session) {
        boolean result = mDAO.loginCheck(mDTO);
        if (result) { // true일 경우 세션에 등록
            MemberDTO mDTO2 = viewMember(mDTO);
            // 세션 변수 등록
            session.setAttribute("memberId", mDTO2.getMember_id());
            session.setAttribute("memberName", mDTO2.getMember_name());
        }
        return result;
    }
    // 01_02. 회원 로그인 정보
    public MemberDTO viewMember(MemberDTO mDTO) {
        return mDAO.viewMember(mDTO);
    }
    // 02. 회원 로그아웃
    public void logout(HttpSession session) {
        // 세션 변수 개별 삭제
        // session.removeAttribute("memberId");
        // 세션 정보를 초기화 시킴
        session.invalidate();
    }


    // 02. 회원가입
    public int regMember(MemberDTO mDTO) throws Exception {

        int check = 0;
        try {
            check = mDAO.regMember(mDTO);
        } catch (Exception e) {
        }
        return check;
    }

    // 03. 회원 목록 보기
    public List<MemberDTO> listAll() throws Exception {
        return mDAO.listAll();
    }


}