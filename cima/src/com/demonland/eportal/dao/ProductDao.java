package com.demonland.eportal.dao;

import java.util.List;


import com.demonland.eportal.model.ParamProduct;
import com.demonland.eportal.model.Product;
import com.demonland.eportal.mybatis.annotation.DaoMapper;

@DaoMapper
public interface ProductDao {
	List<Product> query(ParamProduct param);
	
	void insert(Product product);
	
	Product getProductById(int id);

	void delProduct(Integer delProductId);

	void updateProduct(Product product);
	
	int getTotalCount();
}
