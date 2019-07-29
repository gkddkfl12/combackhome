package com.example.combackhome.service.chart;

import org.json.simple.JSONObject;

public interface ChartService {
	public JSONObject getProductData();

	public JSONObject getProductMenData();

	public JSONObject genderData();
}
