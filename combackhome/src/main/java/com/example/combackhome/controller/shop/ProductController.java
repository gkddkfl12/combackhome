package com.example.combackhome.controller.shop;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.model.memo.dto.MemoDTO;
import com.example.combackhome.model.shop.dto.ProductDTO;
import com.example.combackhome.service.shop.Pager;
import com.example.combackhome.service.shop.ProductService;


@Controller
@RequestMapping("shop/product/*") // 공통적인 url pattern
public class ProductController {

	@Inject
	ProductService productService;
	
	
	
	@RequestMapping("list.do")//세부적인 url mapping	
	public ModelAndView list(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		mav.addObject("list", productService.listProduct());
		return mav; //board/list.jsp로 이동
	}
	 
	@RequestMapping("chair.do")//세부적인 url mapping	
	public ModelAndView list_chair(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "의자") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		return mav; //board/list.jsp로 이동
	}
	
	@RequestMapping("bed.do")//세부적인 url mapping	
	public ModelAndView list_bed(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "침대") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		return mav; //board/list.jsp로 이동
	}
	
	@RequestMapping("Furniture.do")//세부적인 url mapping	
	public ModelAndView list_Furniture(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "가구") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		return mav; //board/list.jsp로 이동
	}
	
	@RequestMapping("Table.do")//세부적인 url mapping	
	public ModelAndView list_Table(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "테이블") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		return mav; //board/list.jsp로 이동
	}
	
	@RequestMapping("Homedeco.do")//세부적인 url mapping	
	public ModelAndView list_Homedeco(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "홈데코") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		return mav; //board/list.jsp로 이동
	}
	
	@RequestMapping("Carpet.do")//세부적인 url mapping	
	public ModelAndView list_Carpet(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "카펫") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/shop");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		return mav; //board/list.jsp로 이동
	}
	
	


	@RequestMapping("detail/{pnum}")
	public ModelAndView detail(@PathVariable int pnum, ModelAndView mav) {
		MemoDTO dto = new MemoDTO();
		Map<String, Object> map = new HashMap<>();
		List<MemoDTO> list= productService.memo(pnum);
		map.put("dto", productService.detailProduct(pnum));
		map.put("memo", list);
		// 포워딩할 뷰의 이름
		mav.setViewName("shop/product_detail");
		// 뷰에 전달할 데이터
		mav.addObject("dto", productService.detailProduct(pnum));
		mav.addObject("map",map);
		return mav;
	}// detail()

	@RequestMapping("write.do")
	public String write() {
		return "shop/product_write";
	}
	@RequestMapping("memoinsert.do")
	public String insert2(HttpSession session, MemoDTO dto) {
		String userid = (String)session.getAttribute("userid");
		dto.setUserid(userid);
		productService.memo2(dto);
		 return "redirect:/shop/product/detail/"+dto.getPnum(); 
	}
	
	@RequestMapping("list_admin.do")//세부적인 url mapping	
	public ModelAndView list_admin(
	    @RequestParam(defaultValue = "all") String search_option,
	    @RequestParam(defaultValue = "") String keyword,
		@RequestParam(defaultValue="1") int curPage)
			throws Exception{
		//레코드 갯수 계산
		int count=productService.countArticle(search_option,keyword);
		//페이지 관련 설정
		Pager pager=new Pager(count, curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		
		List<ProductDTO> list=
				productService.listAll(search_option,keyword,start,end);//게시물 목록
		ModelAndView mav=new ModelAndView();
		HashMap<String, Object> map=new HashMap<>();
		map.put("list", list);//map에 자료 저장
		map.put("count", list.size());
		map.put("pager", pager);//페이지 네비게이션을 위한 변수
		map.put("search_option", search_option);
		map.put("keyword",keyword);
		mav.setViewName("shop/product_list");//포워딩할 뷰의 이름
		mav.addObject("map", map); //ModelAndView에 map을 저장
		mav.addObject("list", productService.listProduct());
		return mav; //board/list.jsp로 이동
	}
	
	@RequestMapping("product_write.do")
	public String pwrite() {
		return "shop/product_write";
	}
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute ProductDTO dto) {
		String filename="-";
		//첨부 파일이 있으면
		if(!dto.getFile1().isEmpty()) {
			//첨부 파일의 이름
			filename=dto.getFile1().getOriginalFilename();
			try {
				String path="D:\\work\\.metadata\\.plugins\\"
						+ "org.eclipse.wst.server.core\\tmp0\\"
						+ "wtpwebapps\\combackhome\\WEB-INF\\views\\img\\product-img\\";
				//디렉토리가 존재하지 않으면 생성
				new File(path).mkdir();
				//임시 디렉토리에 저장된 첨부파일을 이동
				dto.getFile1().transferTo(new File(path+filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		dto.setPimg(filename);
		productService.insertProduct(dto);
		return "redirect:/shop/product/list_admin.do";
	}//insert()
	
	//edit/6
		@RequestMapping("edit/{pnum}")
		public ModelAndView edit(@PathVariable("pnum") int pnum,
				ModelAndView mav) {
			//이동할 뷰
			mav.setViewName("shop/product_edit");//product_edit.jsp
			//뷰에 전달할 데이터
			mav.addObject("dto", productService.detailProduct(pnum));
			return mav;
		}
		
		//상품정보 수정
		@RequestMapping("update.do")
		public String update(ProductDTO dto) {
			//상품정보 수정
			productService.updateProduct(dto);
			return "redirect:/shop/product/list_admin.do";
		}//update()
		
		@RequestMapping("delete.do")
		public String delete(@RequestParam int pnum) {
			//첨부파일 삭제
			String filename=productService.fileInfo(pnum);
			System.out.println("첨부파일 이름:"+filename);
			if(filename != null && filename.equals("-")) {//파일이 있으면
				String path="D:\\work\\.metadata\\.plugins\\"
						+ "org.eclipse.wst.server.core\\tmp0\\"
						+ "wtpwebapps\\combackhome\\WEB-INF\\views\\img\\";
				File f=new File(path+filename);
				System.out.println("파일존재여부:"+f.exists());
				if(f.exists()) {//파일이 존재하면
					f.delete();//파일 삭제
					System.out.println("삭제되었습니다.");
				}
			}//if
			//레코드 삭제
			productService.deleteProduct(pnum);
			return "redirect:/shop/product/list_admin.do";
		}
}
