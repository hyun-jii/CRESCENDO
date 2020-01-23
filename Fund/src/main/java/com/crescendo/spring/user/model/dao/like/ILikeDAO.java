package com.crescendo.spring.user.model.dao.like;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.crescendo.spring.user.model.vo.like.LikeVO;

public interface ILikeDAO
{
   //찜한 프로젝트 출력
   public List<LikeVO> likeList(int userNum) throws Exception;
   
   // 찜하기 INSERT
   public int insertLike(LikeVO vo) throws Exception;
   
   //찜 취소 시 출력에서 삭제
   public int deleteLike(@Param("userNum") int userNum, @Param("proNum") int proNum) throws Exception;
   
   //찜한 프로젝트 개수 출력
   public int likeCount(int userNum) throws Exception;
   
}
