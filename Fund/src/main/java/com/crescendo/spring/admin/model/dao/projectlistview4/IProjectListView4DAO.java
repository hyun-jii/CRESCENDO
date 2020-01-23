package com.crescendo.spring.admin.model.dao.projectlistview4;

import java.util.List;

import com.crescendo.spring.admin.model.vo.projectlistview4.ProjectListView4VO;

public interface IProjectListView4DAO
{
	public List<ProjectListView4VO> failProjectList4() throws Exception;
	public List<ProjectListView4VO> successProjectList4() throws Exception;
	/* public List<ProjectListView4VO> successProjectList() throws Exception; */
}
