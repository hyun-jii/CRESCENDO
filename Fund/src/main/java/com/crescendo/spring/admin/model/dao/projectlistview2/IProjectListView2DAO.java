/*=================================
 * ProjectListView1.java
 * 승인대기 목록 인터페이스
 =================================*/

package com.crescendo.spring.admin.model.dao.projectlistview2;

import java.util.List;

import com.crescendo.spring.admin.model.vo.projectlistview2.ProjectListView2VO;

public interface IProjectListView2DAO
{
	public List<ProjectListView2VO> projectListDeny() throws Exception;

		// 거절 -> 복구시 deny삭제(de_num)
		public int deleteProject1(ProjectListView2VO m) throws Exception;
		
		// deny삭제후 final,app에 deny때 삭제했던 final_num삭제
		public int deleteProject2(ProjectListView2VO m) throws Exception;
		
		// TBL_APP -> EVA_NUM업데이트
		public int updateProject3(ProjectListView2VO m) throws Exception;

	
}
