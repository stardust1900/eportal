package com.demonland.eportal.admin.action;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.demonland.eportal.common.Constants;
import com.demonland.eportal.model.News;
import com.demonland.eportal.model.ParamNews;
import com.demonland.eportal.service.NewsService;
import com.opensymphony.xwork2.ActionSupport;

public class NewsAction extends ActionSupport {
	private static final long serialVersionUID = 3586598075574731220L;

	private News news;

	private List<News> newsList;

	@Autowired
	private NewsService newsService;

	private Integer delNewsId;

	private Integer newsId;
	
	private int startNum;
	
	private int totalPage;

	private int currentPage;
	
	private int prePage;

	private int nextPage;

	public String list() {
		ParamNews param = new ParamNews();
		startNum = currentPage * Constants.ADMIN_PAGE_COUNT;
		param.setStartNum(startNum);
		param.setPageCount(Constants.ADMIN_PAGE_COUNT);
		
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

	public String toAdd() {
		return SUCCESS;
	}

	public String addNews() {
		Date now = new Date();
		news.setCreatedDate(now);
		news.setUpdatedDate(now);
		newsService.addNews(news);
		return SUCCESS;
	}

	public String delNews() {
		if (delNewsId != null) {
			newsService.removeNews(delNewsId);
		}
		return SUCCESS;
	}

	public String toEditNews() {
		news = newsService.getNewsById(newsId);
		String content = news.getContent();
		news.setContent(content.replaceAll("'", "\""));
		return SUCCESS;
	}

	public String modifyNews() {
		if (news != null) {
			newsService.modifyNews(news);
		}
		return SUCCESS;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public Integer getDelNewsId() {
		return delNewsId;
	}

	public void setDelNewsId(Integer delNewsId) {
		this.delNewsId = delNewsId;
	}

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
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
