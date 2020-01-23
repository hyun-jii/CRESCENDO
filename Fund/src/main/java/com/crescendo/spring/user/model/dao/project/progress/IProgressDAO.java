package com.crescendo.spring.user.model.dao.project.progress;

public interface IProgressDAO
{
	// 진행중인 프로젝트 수 조회
	public int ingPrjCount() throws Exception;
	
	// 마감된 프로젝트 수 조회
	public int endPrjCount() throws Exception;
}
