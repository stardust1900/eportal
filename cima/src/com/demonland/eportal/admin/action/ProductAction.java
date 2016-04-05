package com.demonland.eportal.admin.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.demonland.eportal.common.Constants;
import com.demonland.eportal.model.ParamProduct;
import com.demonland.eportal.model.Product;
import com.demonland.eportal.service.ProductService;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction  extends ActionSupport{
	private static final long serialVersionUID = 1269768444166277961L;
	private List<Product> products;
	private Product product;
	private File picture;
	private String pictureFileName;
	private String pictureContentType;
	
	private Integer delProductId;
	
	private int productId;
	@Autowired
	private ProductService productServiceImpl;
	
	private int startNum;
	
	private int totalPage;

	private int currentPage;
	
	private int prePage;

	private int nextPage;
	
	public String list() {
		ParamProduct param = new ParamProduct();
		startNum = currentPage * Constants.ADMIN_PAGE_COUNT;
		param.setStartNum(startNum);
		param.setPageCount(Constants.ADMIN_PAGE_COUNT);
		products = productServiceImpl.list(param);
		int totalCount = productServiceImpl.getTotalCount();
		if (totalCount % Constants.DEFAULT_PAGE_COUNT == 0) {
			totalPage = totalCount / Constants.DEFAULT_PAGE_COUNT;
		} else {
			totalPage = totalCount / Constants.DEFAULT_PAGE_COUNT + 1;
		}
		prePage = currentPage - 1;
		nextPage = currentPage + 1;
		return SUCCESS;
	}
	
	public String toAdd() {
		
		return SUCCESS;
	}
	
	public String addProduct() throws IOException {
		
		String picturesPath = ServletActionContext.getServletContext().getRealPath("/pictures");
		File picturesdir=new File(picturesPath);
		if(!picturesdir.exists()) {
			picturesdir.mkdirs();
		}
		String imgPath = "p"+System.currentTimeMillis()+pictureFileName.substring(pictureFileName.lastIndexOf("."));
		File saveFile = new File(picturesdir,imgPath);
		FileUtils.copyFile(picture, saveFile);
		
		product.setImgPath(imgPath);
		
		Date now = new Date();
		product.setCreatedDate(now);
		product.setUpdatedDate(now);
		productServiceImpl.addProduct(product);
		
		return SUCCESS;
		
	}
	
	public String delProduct() {
		if(delProductId != null) {
			productServiceImpl.delProduct(delProductId);
		}
		products = productServiceImpl.list(null);
		return SUCCESS;
	}
	
	public String showProductDetail() {
		product = productServiceImpl.getProductById(productId);
		return SUCCESS;
		
	}
	
	public String toEdit() {
		product = productServiceImpl.getProductById(productId);
		String introduction = product.getIntroduction();
		product.setIntroduction(introduction.replaceAll("'", "\""));
		return SUCCESS;
		
	}
	
	public String modifyProduct() {
		if(product != null) {
			productServiceImpl.update(product);
		}
		products = productServiceImpl.list(null);
		return SUCCESS;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public Integer getDelProductId() {
		return delProductId;
	}

	public void setDelProductId(Integer delProductId) {
		this.delProductId = delProductId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPrePage() {
		return prePage;
	}

	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

}
