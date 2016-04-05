package com.demonland.eportal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demonland.eportal.dao.NewsDao;
import com.demonland.eportal.model.News;
import com.demonland.eportal.model.ParamNews;
import com.demonland.eportal.service.NewsService;

@Service("newsService")
public class NewsServiceImpl implements NewsService {
	
	@Autowired
	private NewsDao newsDao;

	@Override
	public List<News> list(ParamNews param) {
		return newsDao.query(param);
	}

	@Override
	public void addNews(News news) {
		newsDao.insert(news);
	}

	@Override
	public void removeNews(int id) {
		newsDao.delNews(id);
	}

	@Override
	public void modifyNews(News news) {
		newsDao.updateNews(news);
	}

	@Override
	public News getNewsById(int id) {
		return newsDao.getNewsById(id);
	}

	@Override
	public int getTotalCount() {
		return newsDao.getTotalCount();
	}

}
