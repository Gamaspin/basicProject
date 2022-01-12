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

    // 01. 로그인
    public int loginMember(MemberDTO mDTO) throws Exception {

        int mno = 0;
        try {
            mno = mDAO.loginMember(mDTO);
            System.out.println(mno);
        } catch (Exception e) {
        }
        return mno;
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

}