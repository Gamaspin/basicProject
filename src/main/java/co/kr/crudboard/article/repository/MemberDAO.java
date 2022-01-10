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


    // 01. 회원가입
    public int regMember(MemberDTO mDTO) throws Exception {
        return template.insert(NAME_SPACE + ".memberReg", mDTO);
    }

    // 02. 로그인
    public int loginMember(MemberDTO mDTO) throws Exception {
        return template.selectOne(NAME_SPACE + ".memberLogin", mDTO);
    }





}