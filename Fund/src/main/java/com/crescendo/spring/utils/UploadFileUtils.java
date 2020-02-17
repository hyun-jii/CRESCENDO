package com.crescendo.spring.utils;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;

import net.coobird.thumbnailator.Thumbnails;

//이 코드는 폴더 생성과 파일 저장 , 썸내일 생성의 작업을 한다.
public class UploadFileUtils {
  
 static final int THUMB_WIDTH = 300;
 static final int THUMB_HEIGHT = 300;
 
 public static String fileUpload(String uploadPath,String fileName,byte[] fileData) throws Exception 
 {
  
  //파일이 겹치지 않도록 유니크안 ID 생성
  UUID uid = UUID.randomUUID();
  
  
 
  //String newFileName = fileName;
  
  
  //파일이름이 중복되지 않도록
  String newFileName = uid + "_" + fileName;
  
  String imgPath = uploadPath;

  File target = new File(imgPath, newFileName);
  FileCopyUtils.copy(fileData, target);
  
  
  //썸네일 파일 구분하기 위해 선언 (우리는 썸네일이라는 컬럼이 따로 없기 때문에 사용은 안함 )
  String thumbFileName = "s_" + newFileName;
  File image = new File(imgPath + File.separator + newFileName);

  //마찬가지로 썸네일을 위한 경로 설정
  File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

  if (image.exists()) 
  {
   thumbnail.getParentFile().mkdirs();
   Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
  }
  
  return newFileName;
 }

 //파일을 년,월,일,형식으로 겹치지 않게 따로 파일을 관리하여 생성
 public static String calcPath(String uploadPath) {
  Calendar cal = Calendar.getInstance();
  String yearPath = File.separator + cal.get(Calendar.YEAR);
  String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
  String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

  makeDir(uploadPath, yearPath, monthPath, datePath);
  makeDir(uploadPath, yearPath, monthPath, datePath + "\\s");

  return datePath;
 }

 private static void makeDir(String uploadPath, String... paths) {

  if (new File(paths[paths.length - 1]).exists()) { return; }

  for (String path : paths) {
   File dirPath = new File(uploadPath + path);
//폴더가 존재하지 않으면 폴더 생성
   if (!dirPath.exists()) {
    dirPath.mkdir();
   }
  }
 }
}