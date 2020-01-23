/*==============================
 	IProjectListView3DAO.java
 ==============================*/
package com.crescendo.spring.admin.model.dao.projectlistview3;

import java.util.List;

import com.crescendo.spring.admin.model.vo.projectlistview3.ProjectListView3VO;

public interface IProjectListView3DAO
{
	public List<ProjectListView3VO> ingProjectList() throws Exception;
}
