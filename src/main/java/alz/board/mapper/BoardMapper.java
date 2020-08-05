package alz.board.mapper;

import java.util.List;

import alz.board.domain.BoardCriteria;
import alz.board.domain.BoardDTO;
import alz.board.domain.ReviewDTO;
import alz.board.domain.ReviewOptDTO;

public interface BoardMapper {
	
	// 글작성
	int insert(BoardDTO board);
	
	// 게시글 식별자로 게시글 가져오기
	BoardDTO selectById(Long id);
	
	// 전체 게시글 불러오기
	List<BoardDTO> selectAll();

	// 페이징한 게시글 불러오기
	List<BoardDTO> selectWithPaging(BoardCriteria cri);
	
	// 게시글 수정
	int updateById(BoardDTO board);
	
	// 게시글 삭제
	int deleteById(Long id);

	// 페이징을 위한 count(검섹/페이징/게시판타입)
	int getTotalCount(BoardCriteria cri);

	// 답글 작성
	int replyInsert(BoardDTO board);

	// 다답글 작성
	int rereplyInsert(BoardDTO board);
	
	// 답글 작성
	int insertReply(BoardDTO board);

	// 게시글에 대한 댓글 수
	Long getCommentsCnt(Long boardId);

	// 게시글에 대한 좋아요 수
	Long getLikeCnt(Long boardId);

	// 좋아요 추가
	void addLike();

	List<ReviewOptDTO> reviewOption(Long id);

	void createReview(BoardDTO board);

	void createReviewRate(BoardDTO board);
	
	Long lessonChk (BoardDTO board);

	int reviewChk(Long merchandiseId);

	ReviewDTO readReview(BoardDTO board);

}
