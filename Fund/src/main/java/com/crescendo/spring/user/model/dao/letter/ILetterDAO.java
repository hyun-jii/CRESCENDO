package com.crescendo.spring.user.model.dao.letter;

import java.util.List;

import com.crescendo.spring.admin.model.vo.Rletter.RletterVO;
import com.crescendo.spring.user.model.vo.letter.LetterVO;

public interface ILetterDAO
{
		// 사용자 받은쪽지 출력 
	    public List<LetterVO> letterList(int userNum) throws Exception;
	     
	    // 사용자 보낸쪽지 출력
	    public List<LetterVO> sletterList(int userNum) throws Exception;
     
	   // 사용자 받은쪽지 삭제
	 	public int deleteLetter(int leNum) throws Exception;
	 	
	 	/// 사용자 보낸쪽지 삭제
	 	public int deleteSLetter(int leNum) throws Exception;
	 	
	 	//사용자 페이지(읽은날짜 업데이트)(받은쪽지에서만 사용)
	 	public int ReadDateUpdate(LetterVO r) throws Exception;
	 	
	 	//사용자페이지(받은쪽지 확인폼에 데이터보내기)
	 	public LetterVO letterConfirm(int leNum) throws Exception;
	 	
	 	//사용자페이지(보낸쪽지 확인폼에 데이터보내기)
	 	public LetterVO letterSConfirm(int leNum) throws Exception;
	 	
	 	//사용자페이지(답장폼에  데이터보내기)
	 	public LetterVO letterReplyConfirm(int leNum) throws Exception;
	 	
	 	//받는이 쪽지 삭제일 update
		public int DeleteDateUpdate(LetterVO r) throws Exception;
		
		//보낸이 쪽지 삭제일 update
		public int DeleteSDateUpdate(LetterVO r) throws Exception;
		
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		//사용자 쪽지 insert(사용자와 사용자가 주고받은 경우)
		public int insertLetter(LetterVO p) throws Exception; 
		
		//사용자 보낸 쪽지 insert(사용자가 관리자에게 보낸 경우)
		public int  userSendAdmin(LetterVO p) throws Exception;
		
		// 사용자 받은 쪽지 insert(관리자가 사용자에게 보낸 경우)
		public int adminSendUser(LetterVO p) throws Exception;
		
		//사용자가 관리자에게 받은쪽지 삭제시, 관리자의 보낸쪽지에서 받은사람의 삭제날짜 update
		public int userDeleteadmindate(LetterVO r) throws Exception;
				
		//사용자가 관리자에게 보낸쪽지 삭제시, 관리자의 받은쪽지에서 보낸사람의 삭제날짜  update
		public int userDeleteadminsdate(LetterVO r) throws Exception;
				
			

		
		
	     
}