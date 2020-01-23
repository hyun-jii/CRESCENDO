package com.crescendo.spring.user.controller.payrequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.crescendo.spring.admin.model.dao.payok.IPayOkDAO;
import com.crescendo.spring.admin.model.vo.payok.PayOkVO;
import com.crescendo.spring.user.model.dao.payrequest.IPayRequestDAO;
import com.crescendo.spring.user.model.vo.payrequest.PayRequestVO;

@Controller
public class PayRequestController 
{
   @Autowired
   private SqlSession sqlSession;
   
   // session 주입
   public void setSqlSession(SqlSession sqlSession)
   {
      this.sqlSession = sqlSession;
   }

   // 결제정보 입력 값 insert > 결제정보 확인 출력
   @RequestMapping(value = "/creditinsert.action", method = RequestMethod.POST)
   @ResponseBody
   public String creditInfoInsert(String prCard, String prExpire, int prPw, int prBirth
                        , HttpServletRequest request, HttpSession session,RedirectAttributes rd) 
   {
      System.out.println("들어온 값들 : 카드:"+prCard + "유효기간:"+ prExpire+"결제비번:" +prPw+"생년월일:"+prBirth );
      
      String result="";
         
      IPayRequestDAO dao = sqlSession.getMapper(IPayRequestDAO.class);
         
      PayRequestVO vo = new PayRequestVO();
         
      int fNum = (int) session.getAttribute("fNum");
      System.out.println("넘어온 fNum 값 : " + fNum );
      
      try 
      {
         vo.setfNum(fNum);
         vo.setPrCard(prCard);
         vo.setPrExpire(prExpire);
         vo.setPrPw(prPw);
         vo.setPrBirth(prBirth);
            
         System.out.println("저장된 값들 : fNum : "+vo.getfNum()+"prCard : "+vo.getPrCard()+"prExpire:"
         +vo.getPrExpire()+"prPw:"+vo.getPrPw()+"prbirth:"+vo.getPrBirth());
            
            
         int creditresult = dao.creditInfoInsert(vo);

         //rd.addFlashAttribute("prNum", vo.getPrNum());
            
         //session.setAttribute("prNum", vo.getPrNum());
         //System.out.println("현지테스트");
         //System.out.println(vo.getPrNum());
            
         //System.out.println("생성된 prNum값 : "+vo.getPrNum());
         
         session.setAttribute("prNum", vo.getPrNum());
         
         if(creditresult>0)
         {
            System.out.println("카드정보 입력 성공");
            result="1";
            //return result;
         }
         else
         {
            System.out.println("카드정보 저장 실패");
            result="0";
            //return result;
         }
      } 
      catch (Exception e) 
      {
         e.printStackTrace();
      }

      return result;
         
   }
      
      // 이니시스 창 통해 결제 성공시
   @RequestMapping(value="insertpay.action", method = RequestMethod.POST)
   @ResponseBody
   public String test(String impUid,int poMoney,int poAgree,HttpSession session) throws Exception
   {
         
      String result = null;
         
      try 
      {
      System.out.println("insertpay메소드 진입 성공");
      IPayOkDAO dao=sqlSession.getMapper(IPayOkDAO.class);
      
      int prNum = (int) session.getAttribute("prNum");
      System.out.println("넘겨받은 prNum : " + prNum);
         
      //PayRequestVO payvo =(PayRequestVO) session.getAttribute("creditvo");
      //System.out.println("넘겨받은 객체의 prNum 넘어오려나..:" +payvo.getPrNum() );
         
      //System.out.println("위아래 같으면 성공 ! ");
      //System.out.println("이니시스창에서의 prNum값 :" + prNum);
      System.out.println("들어오는 값 idㅣ: "+impUid);
      System.out.println("들어오는 값 moneyㅣ: "+poMoney);
      System.out.println("들어오는 값 poagreeㅣ: "+poAgree);
         
      PayOkVO vo = new PayOkVO();
           
      vo.setPrNum(prNum);
      vo.setPoMoney(poMoney);
      vo.setPoAgree(poAgree);
      vo.setImpUid(impUid); 
           
           
      int count = dao.insertPayOk(vo);
          
      if(count > 0)
      {
         result = "1";
      }
      else
      {
         result = "0";
      }
          
      System.out.println("이니시스창 결제 성공 여부 : "+result);
          
         
      }
      catch (Exception e) 
      {
         e.printStackTrace();
      }
         return result;
   }
      
   // 결제 완료 후 결제 확인 내역 
   @RequestMapping(value = "/finalpage.action", method = RequestMethod.GET )
   public String finalpage(Model model, HttpSession session)
   {
      
      IPayOkDAO dao = sqlSession.getMapper(IPayOkDAO.class);
      
      int prNum = (int) session.getAttribute("prNum");
      
      try
      {
         // 결제 내역 정보
         model.addAttribute("confirmPay", dao.confirmPay(prNum));
         
      } catch (Exception e)
      {
         e.printStackTrace();
      }
      
      return "CreditCheck";
   }
   
   // 최종 주문 결제 정보 확인 출력 > 메인으로 이동
   /*
   @RequestMapping(value = "/cereditcheck.action", method = RequestMethod.GET)
   public String creditCheck()
   {
      return "redirect:main.action";
   }*/
}