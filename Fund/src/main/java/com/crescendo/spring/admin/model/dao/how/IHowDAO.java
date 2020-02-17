package com.crescendo.spring.admin.model.dao.how;

import java.util.List;

import com.crescendo.spring.admin.model.vo.how.AdminHowVO;

public interface IHowDAO
{
	// 이용방법 리스트 인터페이스 구성
	public List<AdminHowVO> howList();
	
	public AdminHowVO howUpdateForm(int howNum);

	public int howUpdate(AdminHowVO m);
}