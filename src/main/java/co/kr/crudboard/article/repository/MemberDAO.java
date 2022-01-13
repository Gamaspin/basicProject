package co.kr.crudboard.article.repository;

import co.kr.crudboard.article.domain.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
    public int loginMember(MemberDTO mDTO) throws Exception {
        System.out.println("멤버DAO 로그인 실행하기");
        return template.selectOne(NAME_SPACE + ".memberLogin", mDTO);
    }

    // 02. 회원가입
    public int regMember(MemberDTO mDTO) throws Exception {
        return template.insert(NAME_SPACE + ".memberReg", mDTO);
    }


}