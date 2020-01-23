package com.crescendo.spring.common.model.dao.search;

import java.util.List;

import com.crescendo.spring.user.model.vo.projectpage.ProjectPageVO;

public interface ISearchDAO
{
	
	// 추천 검색어 (제목)
	public List<ProjectPageVO> searchBoxTitle(String title) throws Exception;
	
	// 추천 검색어 (태그)
	public List<ProjectPageVO> searchBoxTag(String tag) throws Exception;
	
	// 추천 검색어 (창작자)
	public List<ProjectPageVO> searchBoxMaker(String maker) throws Exception;
	
	// 검색 후 키워드 프로젝트 페이지 (제목만 한정)
	public List<ProjectPageVO> searchList(String keyword) throws Exception;
	
	// 검색 후 키워드 프로젝트 수 (제목만 한정)
	public int searchCount(String keyword) throws Exception;
	
}
