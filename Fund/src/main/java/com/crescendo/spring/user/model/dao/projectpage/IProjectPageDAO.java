package com.crescendo.spring.user.model.dao.projectpage;

import java.util.List;

public interface IProjectPageDAO
{
	// 카테고리당 프로젝트 수(전체 프로젝트)
	public int totalPrjCount(int caNum) throws Exception;
	// 카테고리당 프로젝트 수(진행중인 프로젝트)
	public int ingPrjCount(int caNum) throws Exception;
	// 카테고리당 프로젝트 수(마감한 프로젝트)
	public int endPrjCount(int caNum) throws Exception;
	
	// 카테고리당 프로젝트 리스트(전체프로젝트 - 인기순)
	public List<IProjectPageDAO> totalList_popular(int caNum) throws Exception;
	// 카테고리당 프로젝트 리스트(전체프로젝트 - 최신순)
	public List<IProjectPageDAO> totalList_new(int caNum) throws Exception;
	// 카테고리당 프로젝트 리스트(전체프로젝트 - 마감임박순)
	public List<IProjectPageDAO> totalList_deadline(int caNum) throws Exception;
	
	// 카테고리당 프로젝트 리스트(진행중인프로젝트 - 인기순)
	public List<IProjectPageDAO> ingList_popular(int caNum) throws Exception;
	// 카테고리당 프로젝트 리스트(진행중인프로젝트 - 최신순)
	public List<IProjectPageDAO> ingList_new(int caNum) throws Exception;
	// 카테고리당 프로젝트 리스트(진행중인프로젝트 - 마감임박순)
	public List<IProjectPageDAO> ingList_deadline(int caNum) throws Exception;
	
	// 카테고리당 프로젝트 리스트(마감한프로젝트)
	public List<IProjectPageDAO> endList(int caNum) throws Exception;
	
	// 메인 인기순 프로젝트(상위 6개)
	public List<IProjectPageDAO> mainList_popular() throws Exception;
	// 메인 마감임박순 프로젝트(상위 6개)
	public List<IProjectPageDAO> mainList_deadline() throws Exception;
	// 메인 최신순 프로젝트(상위 6개)
	public List<IProjectPageDAO> mainList_new() throws Exception;
	
	// 전체 프로젝트(진행, 성공, 실패)
	public List<IProjectPageDAO> totalList() throws Exception;
	// 전체 프로젝트 수(진행 성공, 실패)
	public int totalCount() throws Exception;
	
	// 프로젝트별 남은일자, 마감, 상태 리스트
	public List<IProjectPageDAO> projectList() throws Exception;
	// 마감된 프로젝트 업데이트(성공했을 경우)
	/* public int prjUpdate_success() throws Exception; */
	// 마감된 프로젝트 업데이트(실패했을 경우)

	
}