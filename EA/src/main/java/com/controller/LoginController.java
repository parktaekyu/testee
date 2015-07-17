package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import com.dto.MemberDTO;
import com.dto.StadiumDTO;
import com.service.MemberService;

import com.service.StadiumService;

@Controller
public class LoginController {

   StadiumService Stadiumservice;
   MemberService memberService;
   
   public void setStadiumservice(StadiumService stadiumservice) {
	Stadiumservice = stadiumservice;
	}
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}



   @RequestMapping("/index") // http://~8090/07SpringMVC/xxx
   public String index(){
      return "index";
   }

	
	@RequestMapping("/IDinsert")
	public String insert(@ModelAttribute MemberDTO dto){
		System.out.println(dto.toString()+"in Controller");
		int a =memberService.insert(dto);
		System.out.println(a==1? "성공 " : "실패");
		return "redirect:home";
	}
	
	@RequestMapping("/IDcheck")
	public @ResponseBody int check(HttpServletRequest request){
		String str = request.getParameter("id");
		System.out.println(str+"  in Controller");
		int a =memberService.check(str);
		System.out.println(a+" control");
		System.out.println(Integer.toString(a));
		return a;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@ModelAttribute MemberDTO dto,HttpSession session){
		ModelAndView mvc = new ModelAndView();
		int a = memberService.login(dto);   //0이면 로그인 실패, 성공시 
		if(a ==0){
			mvc.addObject("user", a);
			mvc.setViewName("index");
		}else{
			session.setAttribute("userid",a);
			System.out.println(session.getAttribute("userid")+"==>> 세션");
			mvc.setViewName("home");
		}
		return mvc;
	}

	
	
	
	
	
	
	
	
   
   @RequestMapping("/home") // http://~8090/07SpringMVC/xxx
   public String home(){
      return "home";
   }
   
   @RequestMapping("/stadium") // http://~8090/07SpringMVC/xxx
   public String stadium(HttpSession session){
      List<StadiumDTO> list=Stadiumservice.getList();
      
      session.setAttribute("stadium", list);
      return "Stadium";
   }
   /*
   @RequestMapping("/addApplyTeam")
   public String addApplyTeam(ApplyTeamDTO dto){
      
      Stadiumservice.insertApplyTeam(dto);
      return "redirect:stadium";
   }
*/

}