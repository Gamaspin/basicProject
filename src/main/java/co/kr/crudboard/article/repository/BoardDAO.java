package co.kr.crudboard.article.repository;

import co.kr.crudboard.article.domain.BoardDTO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    private static final String NAME_SPACE = "boardMapper";

    private final SqlSessionTemplate template;

    /*@Inject*/
    public BoardDAO(SqlSessionTemplate template) {
        this.template = template;
    }

    @Autowired
    SqlSession sqlSession;


    // 1. 게시글 작성
    public int writingBoard(BoardDTO bDTO) throws Exception {
        return template.insert(NAME_SPACE + ".write", bDTO);
    }

    // 1-2. 게시글 bno 가져오기
    public int getBno(BoardDTO bDTO) throws Exception {
        return template.selectOne(NAME_SPACE + ".getBno", bDTO);
    }



    // 2. 게시글 보기
    public BoardDTO reading(int bno) throws Exception {
        return template.selectOne(NAME_SPACE + ".read", bno);
    }


    // 3. 게시글 삭제
    public void deleting(int bno) throws Exception {
        template.delete(NAME_SPACE + ".delete",bno);

    }

    // 4. 게시글 수정
    public int modifying(BoardDTO bDTO) throws Exception {
        return template.update(NAME_SPACE + ".update", bDTO);
    }


    // 5. 게시글 목록 불러오기
    public List<BoardDTO> listAll() throws Exception {
        return template.selectList(NAME_SPACE + ".listAll");

    }

    // 6. 현재 게시물 갯수 구하기
    public int countingArticle() throws Exception {
        return template.selectOne(NAME_SPACE + ".countingArticle");
    }

}
