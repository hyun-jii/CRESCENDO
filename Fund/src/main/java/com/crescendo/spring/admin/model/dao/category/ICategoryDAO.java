/*============================
	ICategoryDAO.java
=============================*/
package com.crescendo.spring.admin.model.dao.category;

import java.util.List;

import com.crescendo.spring.admin.model.vo.category.CategoryVO;

public interface ICategoryDAO
{
	// 카테고리 리스트 출력
	public List<CategoryVO> cateList() throws Exception;
	
	// 카테고리 업데이트
	public int cateUpdate(CategoryVO m) throws Exception;
	
	// 카테고리 수정폼에 데이터 보네기
	public CategoryVO updateCateForm(int caNum) throws Exception;
	

	
}
