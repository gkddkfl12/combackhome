package com.example.combackhome.controller.chart;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.combackhome.service.chart.ChartService;

@RestController
@RequestMapping("comChart/*")
public class ChartController {
	
	@Inject
	ChartService chartSevice;
	
	@RequestMapping("chart.do")
	public ModelAndView chart() {
		return new ModelAndView("chart/productSellChart");
	}
	
	
	//view(jsp)로 넘어가지 않고 호출한 곳에 JSONObject를 리턴함
		@RequestMapping("cart_money_list.do")
		public JSONObject cart_money_list() {
			return chartSevice.getProductData();
		}
		@RequestMapping("cart_gender_list.do")
		public JSONObject cart_gender_list() {
			return chartSevice.genderData();
		}
}
