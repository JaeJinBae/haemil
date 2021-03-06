package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.SearchCriteria;

public interface AdviceDao {
	public List<AdviceVO> selectAll();
	public AdviceVO selectOne(int bno);
	public void insert(AdviceVO vo);
	public void update(AdviceVO vo);
	public void updateState(int bno);
	public void updateCnt(int bno);
	public void updateStateWait(int bno);
	public void delete(int bno);
	public List<AdviceVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
	public void updateReplyCnt(int bno, int amount) throws Exception;
}
