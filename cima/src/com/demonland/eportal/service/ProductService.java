package com.demonland.eportal.service;

import java.util.List;

import com.demonland.eportal.model.ParamProduct;
import com.demonland.eportal.model.Product;

public interface ProductService {

	List<Product> list(ParamProduct param);
	
	void addProduct(Product product);
	
	void removeProduct(int id);
	
	void modifyProduct(Product product);
	
	Product getProductById(int id);

	void delProduct(Integer delProductId);

	void update(Product product);

	int getTotalCount();
}
