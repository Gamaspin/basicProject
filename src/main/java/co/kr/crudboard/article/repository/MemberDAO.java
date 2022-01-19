package co.kr.crudboard.article.repository;

import co.kr.crudboard.article.domain.BoardDTO;
import co.kr.crudboard.article.domain.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;
import java.util.List;

@Repository
public class MemberDAO {

    private static final String NAME_SPACE = "memberMapper";

    private final SqlSessionTemplate template;

    /*@Inject*/
    public MemberDAO(SqlSessionTemplate template) {
        this.template = template;
    }

    @Autowired
    SqlSession sqlSession;


    // 01. 로그인
 /*   public int loginMember(MemberDTO mDTO) throws Exception {
        System.out.println("멤버DAO 로그인 실행하기");
        return template.selectOne(NAME_SPACE + ".memberLogin", mDTO);
    }*/

    // 01_01. 회원 로그인체크
    public boolean loginCheck(MemberDTO mDTO) {
        String name = sqlSession.selectOne(NAME_SPACE +".loginCheck", mDTO);
        return (name == null) ? false : true;
    }
    // 01_02. 회원 로그인 정보
    public MemberDTO viewMember(MemberDTO mDTO) {

        return sqlSession.selectOne(NAME_SPACE +".viewMember", mDTO);
    }
    // 02. 회원 로그아웃
    public void logout(HttpSession sessin) {
    }


    // 02. 회원가입
    public int regMember(MemberDTO mDTO) throws Exception {
        return template.insert(NAME_SPACE + ".memberReg", mDTO);
    }

    // 03. 목록보기
    public List<MemberDTO> listAll() throws Exception {
        return template.selectList(NAME_SPACE + ".listAllMember");

    }

}