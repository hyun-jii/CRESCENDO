package com.crescendo.spring.admin.model.dao.Sletter;

import java.util.List;


import com.crescendo.spring.admin.model.vo.Sletter.SletterVO;


public interface ISletterDAO
{
	//관리자페이지 (보낸쪽지 리스트 출력)
	public List<SletterVO> SletterList() throws Exception;
	
	//관리자보낸쪽지 삭제
	public int AdmindeleteSletter(int lsNum) throws Exception;
		
	//관리자페이지(보낸쪽지 확인폼에 데이터보내기)
	public SletterVO SletterConfirm(int lsNum) throws Exception;
	
	//보낸이 쪽지 삭제일 update
	//관리자에서
	public int SDeleteDateUpdate(SletterVO r) throws Exception;
	
	
	// 관리자 보낸 쪽지함 insert
	public int insertAdminSletter(SletterVO r) throws Exception;
	

}