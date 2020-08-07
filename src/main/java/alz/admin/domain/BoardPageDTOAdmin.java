package alz.admin.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class BoardPageDTOAdmin {

	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private BoardCriteriaAdmin cri;
	
	// 페이지 생성
	
	public BoardPageDTOAdmin(BoardCriteriaAdmin cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) * 10;
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1 ;
		this.next = this.endPage < realEnd;
	}
}