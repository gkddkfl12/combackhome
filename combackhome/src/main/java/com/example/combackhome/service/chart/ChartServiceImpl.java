package com.example.combackhome.service.chart;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.example.combackhome.model.cart.dto.CartsDTO;
import com.example.combackhome.model.order.dto.UserDTO;
import com.example.combackhome.service.cart.CartsService;

@Service
public class ChartServiceImpl implements ChartService {

	@Inject
	CartsService cartService;
	
	@Override
	public JSONObject getProductData() {
		List<CartsDTO> items=cartService.cartMoney();
		JSONObject data=new JSONObject();
		//컬럼을 정의할 json객체
		JSONObject col1=new JSONObject();
		JSONObject col2=new JSONObject();
		JSONArray title=new JSONArray();
		//json의 cols 객체구성(헤더,제목구성)
		col1.put("label", "상품명");
		col1.put("type", "string");
		col2.put("label", "금액");
		col2.put("type", "number");
		//json배열에 json 객체 추가
		title.add(col1);
		title.add(col2);
		data.put("cols", title);
		JSONArray body=new JSONArray();
		for(CartsDTO dto : items) {
			JSONObject name=new JSONObject();//JSONObject는 HashMap과 같음
			name.put("v", dto.getPname());
			JSONObject money=new JSONObject();
			money.put("v", dto.getMoney());
			JSONArray row=new JSONArray();
			row.add(name);
			row.add(money);
			JSONObject cell=new JSONObject();
			cell.put("c", row);
			body.add(cell);
		}
		data.put("rows", body);
		return data;
	}

	@Override
	public JSONObject getProductMenData() {
	
		return null;
	}

	@Override
	public JSONObject genderData() {
		List<UserDTO> items=cartService.userGender();
		JSONObject data=new JSONObject();
		//컬럼을 정의할 json객체
		JSONObject col1=new JSONObject();
		JSONObject col2=new JSONObject();
		JSONArray title=new JSONArray();
		//json의 cols 객체구성(헤더,제목구성)
		col1.put("label", "gender");
		col1.put("type", "string");
		col2.put("label", "비율");
		col2.put("type", "number");
		//json배열에 json 객체 추가
		title.add(col1);
		title.add(col2);
		data.put("cols", title);
		JSONArray body=new JSONArray();
		for(UserDTO dto : items) {
			JSONObject name=new JSONObject();//JSONObject는 HashMap과 같음
			name.put("v", dto.getGender());
			JSONObject money=new JSONObject();
			money.put("v", dto.getCountGender());
			JSONArray row=new JSONArray();
			row.add(name);
			row.add(money);
			JSONObject cell=new JSONObject();
			cell.put("c", row);
			body.add(cell);
		}
		data.put("rows", body);
		return data;
	}

}
