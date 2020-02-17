/*================================
 		NoticeDAO.java
 =================================*/

package com.crescendo.spring.admin.model.dao.notice;

import java.util.List;

import com.crescendo.spring.admin.model.vo.notice.NoticeVO;

public interface INoticeDAO
{
	// 공지사항 목록 출력
	public List<NoticeVO> noticeList();
	
	// 공지사항 Delete 
	public int deleteNotice(int noNum);
	
	// 공지사항 Insert
	public int insertNotice(NoticeVO m);
	
	// 공지사항 확인 폼에 데이터 보내기
	public NoticeVO noticeConfirm(int noNum);
	
	// 공지사항 update 폼에 데이터 보내기
	public NoticeVO updateNoticeConfirm(int noNum);
	
	public int updateNotice(NoticeVO m);
	
	public int extraCount();
	
	// 공지사항 내용 출력 → 강초롱
	public NoticeVO contentList(int noNum);


	

	

}
