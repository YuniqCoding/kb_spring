package org.scoula.board.mapper;

import org.apache.ibatis.annotations.Select;
import org.scoula.board.domain.BoardVO;

import java.util.List;

public interface BoardMapper {
    // tbl_board 테이블에서 모든 컬럼을 no 컬럼 기준으로 내림차순 정렬
    @Select("select * from tbl_board order by no desc")
    // BoardVO 객체의 리스트를 반환
    public List<BoardVO> getList();
}
