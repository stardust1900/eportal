package com.demonland.eportal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demonland.eportal.dao.ProductDao;
import com.demonland.eportal.model.ParamProduct;
import com.demonland.eportal.model.Product;
import com.demonland.eportal.service.ProductService;

@Service("productServiceImpl")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> list(ParamProduct param) {
		return productDao.query(param);
	}

	@Override
	public void addProduct(Product product) {
		productDao.insert(product);
	}

	@Override
	public void removeProduct(int id) {
		productDao.delProduct(id);
		
	}

	@Override
	public void modifyProduct(Product product) {
		productDao.updateProduct(product);
	}

	@Override
	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	@Override
	public void delProduct(Integer delProductId) {
		productDao.delProduct(delProductId);
		
	}

	@Override
	public void update(Product product) {
		productDao.updateProduct(product);
		
	}

	@Override
	public int getTotalCount() {
		return productDao.getTotalCount();
	}

}
