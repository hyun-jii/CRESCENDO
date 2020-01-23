package com.crescendo.spring.admin.model.dao.Rletter;

import java.util.List;

import com.crescendo.spring.admin.model.vo.Rletter.RletterVO;
import com.crescendo.spring.admin.model.vo.Sletter.SletterVO;
import com.crescendo.spring.user.model.vo.letter.LetterVO;


public interface IRletterDAO
{
	//관리자페이지 (받은쪽지 리스트 출력)
	public List<RletterVO> RletterList() throws Exception;
	
	//관리자보낸쪽지 삭제
	public int AdmindeleteRletter(int lrNum) throws Exception;
		
	//관리자페이지(받은쪽지 삭제)
	public int deleteRletter(int lrNum) throws Exception;
	
	//관리자페이지(읽은날짜 업데이트)
	public int ReadDateUpdate(RletterVO r) throws Exception;
	
	//관리자페이지(받은쪽지 확인폼에 데이터보내기)
	public RletterVO RletterConfirm(int lrNum) throws Exception;
	
	//관리자페이지(답장폼에  데이터보내기)
	public RletterVO RletterReplyConfirm(int lrNum) throws Exception;
	
	//받는이 쪽지 삭제일 update
	public int RDeleteDateUpdate(RletterVO r) throws Exception;
	
	// 관리자 받은 쪽지 insert
	public int insertAdminRletter(RletterVO r) throws Exception;
	

}