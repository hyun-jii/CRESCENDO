package com.crescendo.spring.admin.model.dao.projectlistview1;

import java.util.List;

import com.crescendo.spring.admin.model.vo.projectlistview1.ProjectListView1VO;

public interface IProjectListView1DAO
{

	public List<ProjectListView1VO> projectListView1() throws Exception;
	
	// 승인대기 -> 승인완료
	public int passProject(ProjectListView1VO appNum) throws Exception;
	
	// 승인대기 -> 승인완료 -> 프로젝트 등록 Insert
	public int insertProject(ProjectListView1VO appNum) throws Exception;
		 
	// 승인대기 -> 승인거절
	public int rejectProject(ProjectListView1VO appNum) throws Exception;

}