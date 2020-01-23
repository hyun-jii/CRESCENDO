package com.crescendo.spring.fileupload.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.crescendo.spring.user.model.dao.project.step2.IStep2DAO;
import com.crescendo.spring.user.model.vo.project.step2.Step2VO;
import com.crescendo.spring.utils.UploadFileUtils;

@Controller
public class FileUploadController
{
	private SqlSession sqlsession;
	
	//setter 주입
	@Autowired
	public void setSqlsession(SqlSession sqlsession)
	{
		this.sqlsession=sqlsession;
	}
	
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="upload.action",method = {RequestMethod.POST,RequestMethod.GET})
	public String upload(Step2VO stp2vo,MultipartFile file,HttpSession session, HttpServletRequest request,HttpServletResponse response)throws Exception
	{
		System.out.println("upload.action 메소드 들어옴 ");
		System.out.println(stp2vo.getCaNum());
		System.out.println(stp2vo.getPrjContent());
		System.out.println(stp2vo.getPrjGoal());
		System.out.println(stp2vo.getPrjImg());
		System.out.println(stp2vo.getPrjNum());
		System.out.println(stp2vo.getPrjTitle());
		System.out.println(stp2vo.getUserNum());
		
		System.out.println("1.uploadPath경로 : "+uploadPath);
		//separator는 구분자 역할 
		//String imgUploadPath = uploadPath + File.separator+"images"+File.separator;
		//이미지 업로드할때 파일을 나누기 위해 calcPath메서드로 년월일 쪼갬
		//String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		System.out.println("uploadPath 는 "+ uploadPath);
		//System.out.println("imgUploadPath 는 " + imgUploadPath);
		
		if(file  != null)
		{
			System.out.println("파일이 null이 아닙니다 존재 ! O ");
			fileName =  UploadFileUtils.fileUpload(uploadPath, file.getOriginalFilename(), file.getBytes()); 
			System.out.println("fileName은 = " + fileName);
		}
		else
		{
			System.out.println("파일이 null입니다. 미존재 X  ");
			fileName = uploadPath+File.separator+"images"+File.separator+"none.png";
			System.out.println("fileName은="+fileName);
		}
		
		
		//System.out.println("ymdPath 는:"  + ymdPath);
		
		//file로 받은 값을 setPrjImg 컬럼에 경로와 확장자를 설정해준다.
		//원본
		//stp2vo.setPrjImg(ymdPath + File.separator + fileName);
		
		//01.09 오후 3시 52분 수정내용
		stp2vo.setPrjImg(fileName);
		
		System.out.println("저장한 파일 이름 : "+stp2vo.getPrjImg());
		
		
		try {
			
		
		IStep2DAO dao = sqlsession.getMapper(IStep2DAO.class);
		
		 int result = dao.extraProject(stp2vo);
		
		 if(result > 0)
		 {
			 System.out.println("데이터 삽입 성공 !!  ");
			 	// 다음 페이지에 prjNum넘겨주기
				/* System.out.println(vo.getPrjNum()); */
				session.setAttribute("prjNum", stp2vo.getPrjNum());
				/* session.setAttribute("list", dao3.rewardList(vo.getPrjNum())); */
				
		 }
		 else
		 {
			 System.out.println("데이터 삽입 실패 C X ");
		 }
		
		}catch(Exception e)
		{
			System.out.println(e.toString());
		} 
		return "step3";
	}
	
	@RequestMapping(value="updateupload.action", method = RequestMethod.GET)
	public String updateUpload(int prjNum,MultipartFile file,Step2VO vo)
	{
		IStep2DAO dao = sqlsession.getMapper(IStep2DAO.class);
		try
		{
			//separator는 구분자 역할 
			String imgUploadPath = uploadPath + File.separator+"images"+File.separator;
			//이미지 업로드할때 파일을 나누기 위해 calcPath메서드로 년월일 쪼갬
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = null;
			System.out.println("uploadPath :"+ uploadPath);
			System.out.println("imgUploadPath :" + imgUploadPath);
			
			if(file  != null)
			{
				System.out.println("파일이 null이 아닙니다 존재 ! O ");
				fileName =  UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes()); 
			}
			else
			{
				System.out.println("파일이 null입니다. 미존재 X  ");
				fileName = uploadPath+File.separator+"images"+File.separator+"none.png";
			}
			
			vo.setPrjImg(ymdPath + File.separator + fileName);
			
			dao.updateUpload(prjNum);
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return "redirect:step3list.action";
	}
}