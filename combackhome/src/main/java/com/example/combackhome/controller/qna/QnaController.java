package com.example.combackhome.controller.qna;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.qna.dto.QnaDTO;
import com.example.combackhome.service.qna.Pager;
import com.example.combackhome.service.qna.QnaService;

@Controller 
@RequestMapping("qna/*") 
public class QnaController {
	@Inject
	QnaService qnaService;
	
	@RequestMapping("list.do")
	public ModelAndView list(
	    @RequestParam(defaultValue = "name") String search_option,
	    @RequestParam(defaultValue = "") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		
		int count=qnaService.countArticle(search_option,keyword);
		
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<QnaDTO> list=
				qnaService.listAll(search_option,keyword,start,end);
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);
		map.put("count", list.size());
		map.put("pager", pager);
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("qna/list");
		mav.addObject("map", map);
		return mav; 
	}
	
	@RequestMapping("write.do")
	public String write() {
		
		return "qna/write";
	}
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute QnaDTO dto, 
			HttpSession session) throws Exception {
		
		String writer=(String)session.getAttribute("userid");
		dto.setWriter(writer);
		
		qnaService.create(dto);
		
		return "redirect:/qna/list.do";
	}
	
	@RequestMapping("view.do")
	public ModelAndView view(int bno, HttpSession session)
		throws Exception {
		
		qnaService.increaseViewcnt(bno, session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("qna/view"); 
		mav.addObject("dto", qnaService.read(bno));
		return mav; 
	}
	
	
	
	@RequestMapping("update.do")
	public String update(QnaDTO dto) throws Exception {
		System.out.println("dto:"+dto);
		dto.getBno();
		if(dto != null) {
			qnaService.update(dto);
		}
	
		return "redirect:/qna/view.do?bno="+dto.getBno();
	}
	
	@RequestMapping("writeedit.do")
	public ModelAndView writeedit(int bno, HttpSession session) throws Exception {
		qnaService.increaseViewcnt(bno, session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("qna/writeedit"); 
		mav.addObject("dto", qnaService.read(bno));
		return mav;


	}
	

	@RequestMapping("delete.do")
	public String delete(int bno) throws Exception {
		qnaService.delete(bno);
		return "redirect:/qna/list.do"; 
	}
	
	
	
	
}
