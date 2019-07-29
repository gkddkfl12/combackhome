package com.example.combackhome.controller.board;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.board.dto.BoardDTO;
import com.example.combackhome.service.board.BoardService;
import com.example.combackhome.service.shop.Pager;

@Controller
@RequestMapping("board/*")
public class BoardController {
	@Inject
	BoardService boardService;
	//defaultValue="1" : �Ķ���Ͱ� ������ 1�� ��������
	@RequestMapping("list.do")//�������� url mapping	
	public ModelAndView list(
	    @RequestParam(defaultValue = "name") String search_option,
	    @RequestParam(defaultValue = "") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//���ڵ� ���� ���
		int count=boardService.countArticle(search_option,keyword);
		//������ ���� ����
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<BoardDTO> list=
				boardService.listAll(search_option,keyword,start,end);//�Խù� ���
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map�� �ڷ� ����
		map.put("count", list.size());
		map.put("pager", pager);//������ �׺���̼��� ���� ����
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("board/list");//�������� ���� �̸�
		mav.addObject("map", map); //ModelAndView�� map�� ����
		return mav; 
	}
	
	@RequestMapping("write.do")
	public String write() {
		//�۾��� �� �������� �̵�
		return "board/write";
	}
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute BoardDTO dto, 
			HttpSession session) throws Exception {
		//���ǿ��� ����ھ��̵� ������ �̸� ó��
		String writer=(String)session.getAttribute("userid");
		dto.setWriter(writer);
		//���ڵ� ����
		boardService.create(dto);
		//�Խù� ������� �̵�
		return "redirect:/board/list.do";
	}//insert()
	
	@RequestMapping("view.do")
	public ModelAndView view(int bno, HttpSession session)
		throws Exception {
		//��ȸ�� ���� ó��
		boardService.increaseViewcnt(bno, session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/view"); //�������� ���� �̸�
		mav.addObject("dto", boardService.read(bno));
		return mav; //  views/board/view.jsp�� �Ѿ�� ��µ�
	}
	
	//÷������ ����� ����
	@RequestMapping("getAttach/{bno}")
	@ResponseBody //view�� �ƴ� List<String>������ ��ü�� ����
	public List<String> getAttach(@PathVariable int bno){
		return boardService.getAttach(bno);
	}//getAttach
	
	//�Խù� ���� ����
	@RequestMapping("update.do")
	public String update(BoardDTO dto) throws Exception {
		System.out.println("dto:"+dto);
		if(dto != null) {
			boardService.update(dto);
		}
		//���� �Ϸ� �� ������� �̵�
		/* return "redirect:/board/view.do?bno="+dto.getBno(); */
		return "redirect:/board/list.do";
	}//update()
	
	@RequestMapping("writeedit.do")
	public ModelAndView writeedit(int bno, HttpSession session) throws Exception {
		boardService.increaseViewcnt(bno, session);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/writeedit"); 
		mav.addObject("dto", boardService.read(bno));
		return mav;


	}
	
	
	//�Խù� ����
	@RequestMapping("delete.do")
	public String delete(int bno) throws Exception {
		boardService.delete(bno);
		return "redirect:/board/list.do"; //������� �̵�
	}
	
	
	
	
}
