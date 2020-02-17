package com.crescendo.spring.admin.model.dao.faq;

import java.util.List;

import com.crescendo.spring.admin.model.vo.faq.FaqVO;

public interface IFaqDAO {


	// FAQ 목록 출력
	public List<FaqVO> faqList();

	// FAQ Delete 
	public int deleteFaq(int hNum);

	// FAQ  Insert
	public int insertFaq(FaqVO m);

	// FAQ 확인 폼에 데이터 보내기
	public FaqVO faqConfirm(int hNum);

	// FAQ update 폼에 데이터 보내기
	public FaqVO updateFaqConfirm(int hNum);

 	public int updateFaq(FaqVO m);
 	
 	
 	
}

