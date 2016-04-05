package com.demonland.eportal.page.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.demonland.eportal.common.Constants;
import com.demonland.eportal.model.Message;
import com.demonland.eportal.model.News;
import com.demonland.eportal.model.ParamNews;
import com.demonland.eportal.model.ParamProduct;
import com.demonland.eportal.model.Product;
import com.demonland.eportal.service.MessageService;
import com.demonland.eportal.service.NewsService;
import com.demonland.eportal.service.ProductService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 前台页面控制器
 * 
 * @author Shawn
 * 
 */
public class PageAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ProductService productServiceImpl;
	@Autowired
	private NewsService newsService;
	@Autowired
	private MessageService messageService;

	private List<Product> products0;

	private List<Product> products1;

	private List<Product> products2;

	private List<News> newsList;

	private int productId;

	private Product product;

	private int newsId;

	private News news;

	private int startNum;

	private int totalPage;

	private int currentPage;

	private int prePage;

	private int nextPage;
	
	private Message message;
	
	private String aboutType;
	
	private String productType;

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String home() {
		ParamNews param = new ParamNews();
		param.setStartNum(0);
		param.setPageCount(Constants.DEFAULT_PAGE_COUNT);
		newsList = newsService.list(param);
		
		ParamProduct param0 = new ParamProduct();
		param0.setStartNum(0);
		param0.setPageCount(Constants.DEFAULT_PAGE_COUNT);
		param0.setProductType(productType);
		products0 = productServiceImpl.list(param0);
		
		return SUCCESS;
	}

	/**
	 * 关于我们
	 * 
	 * @return
	 */
	public String about() {

		return SUCCESS;
	}

	/**
	 * 产品列表
	 * 
	 * @return
	 */
	public String products() {
		ParamProduct param0 = new ParamProduct();
		param0.setStartNum(0);
		param0.setPageCount(4);
		param0.setProductType(productType);
		products0 = productServiceImpl.list(param0);

		return SUCCESS;
	}

	public String showProductDetail() {
		product = productServiceImpl.getProductById(productId);
		if (null != product) {
			return SUCCESS;
		}
		return ERROR;
	}

	/**
	 * 新闻
	 * 
	 * @return
	 */
	public String news() {
		ParamNews param = new ParamNews();
		startNum = currentPage * Constants.DEFAULT_PAGE_COUNT;
		param.setStartNum(startNum);
		param.setPageCount(Constants.DEFAULT_PAGE_COUNT);
		newsList = newsService.list(param);
		int totalCount = newsService.getTotalCount();
		if (totalCount % Constants.DEFAULT_PAGE_COUNT == 0) {
			totalPage = totalCount / Constants.DEFAULT_PAGE_COUNT;
		} else {
			totalPage = totalCount / Constants.DEFAULT_PAGE_COUNT + 1;
		}

		prePage = currentPage - 1;
		nextPage = currentPage + 1;
		return SUCCESS;
	}

	public String showNewsDetail() {
		news = newsService.getNewsById(newsId);

		if (null != news) {
			return SUCCESS;
		}
		return ERROR;
	}

	/**
	 * 产品研发
	 * 
	 * @return
	 */
	public String research() {

		return SUCCESS;
	}

	/**
	 * 联系我们
	 * 
	 * @return
	 */
	public String contact() {

		return SUCCESS;
	}

	/**
	 * 留言
	 * 
	 * @return
	 */
	public String leaveMessage() {
		message.setCreatedDate(new Date());
		message.setIp(ServletActionContext.getRequest().getRemoteAddr());
		messageService.leaveMessage(message);
		return SUCCESS;
	}

	public List<Product> getProducts0() {
		return products0;
	}

	public void setProducts0(List<Product> products0) {
		this.products0 = products0;
	}

	public List<Product> getProducts1() {
		return products1;
	}

	public void setProducts1(List<Product> products1) {
		this.products1 = products1;
	}

	public List<Product> getProducts2() {
		return products2;
	}

	public void setProducts2(List<Product> products2) {
		this.products2 = products2;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
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

	public int getPrePage() {
		return prePage;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getAboutType() {
		return aboutType;
	}

	public void setAboutType(String aboutType) {
		this.aboutType = aboutType;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
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

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

}
