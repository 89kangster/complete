package spr.controller;

import java.io.File;
import java.sql.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import spr.mybatis.dao.BoardDAO;
import spr.mybatis.vo.BoardVO;

@Controller
public class EditControl {
	
	
	@Autowired
	spr.mybatis.dao.BoardDAO bdao;

	@Autowired
	ServletContext servletContext;
	
	@Autowired
	HttpServletRequest request;
	
	private String uploadPath;
	
	public void setUploadPath(String n) {
		uploadPath = n;
	}
	File ff;
	
	public File getFf() {
		return ff;
	}

	public void setFf(File ff) {
		this.ff = ff;
	}
	
	@RequestMapping(value="bbs/edit.inc", method=RequestMethod.POST)
	public ModelAndView write(BoardVO vo)throws Exception{
		
		MultipartFile uploadFile = vo.getUploadFilename();//첨부파일
		
		System.out.println("파일올리면 사이즈!"+uploadFile.getSize());
		
		Date date=new Date(System.currentTimeMillis());
		
		String reg=date.toString();
		
		System.out.println("if조건 들어가기전에 "+vo.getUploadFilename());
		
		
		//파일첨부가 되었을 때만 파일 처리하는 부분
		if(vo != null && uploadFile.getSize() != 0){
			 
		
			
			
			//파일첨부가 된 경우이므로 파일처리
			String path = servletContext.getRealPath(uploadPath);
			
			
			
			String filename = uploadFile.getOriginalFilename();
			
			
			
			vo.setPath(path+"/"+filename);
			
			ff=new File(path+"/"+filename);
			// 파일 저장
			uploadFile.transferTo(ff);
			
			vo.setUploadFilenameFileName(filename);// 파일명 지정
			
		}else if(uploadFile.getSize()==0){
			vo.setUploadFilenameFileName(vo.getModfile());
		}
		
			
		vo.setHit("0");
		vo.setGroups("1");
		vo.setStep("0");
		vo.setLev("0");
		vo.setBname("bbs");
		vo.setRegdate(reg);
		vo.setStatus("1");
		
		
		
		// DB에 저장
		bdao.edit(vo);
		
		// 뷰설정
		ModelAndView mv = new ModelAndView();
		// Redirect방식으로 이동시키기
		
		
		mv.setViewName("redirect:/bbs/list.inc");
		
		
		return mv;
	}

}
