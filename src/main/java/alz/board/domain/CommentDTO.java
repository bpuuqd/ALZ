package alz.board.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;


@Getter
@Setter
@Builder
@Accessors(chain=true)
@NoArgsConstructor
@AllArgsConstructor
public class CommentDTO {
	
	private Long id;
	private Long parentId;
	private String content;
	private Date writtenAt;
	private Date updatedAt;
	private Long likeCnt;
	private Long commentCnt;
	private Long boardId;
	private Long writerId;

}
