package com.crescendo.spring.user.model.dao.support;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.crescendo.spring.user.model.vo.support.SupportVO;

public interface ISupportDAO
{
		//후원한 프로젝트 출력
		public List<SupportVO> supportList(String userName) throws Exception;
		
		//후원한 프로젝트 갯수 출력
		public int supportCount(String userName) throws Exception;
		
		//결제취소시 리워드 증가
		public int increaseCount(@Param("fCount")int fCount,@Param("reNum")int reNum) throws Exception;
		
}
