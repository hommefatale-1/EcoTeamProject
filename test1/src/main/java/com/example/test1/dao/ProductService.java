package com.example.test1.dao;

import java.util.HashMap;

public interface ProductService {
	HashMap<String, Object> searchProductList(HashMap<String, Object> map); // 제품 리스트
	HashMap<String, Object> removeProduct(HashMap<String, Object> map); //제품 삭제

}
