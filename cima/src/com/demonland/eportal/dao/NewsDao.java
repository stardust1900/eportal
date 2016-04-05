package com.demonland.eportal.dao;

import java.util.List;

import com.demonland.eportal.model.News;
import com.demonland.eportal.model.ParamNews;
import com.demonland.eportal.mybatis.annotation.DaoMapper;

@DaoMapper
public interface NewsDao {
	List<News> query(ParamNews param);
	
	void insert(News news);
	
	void delNews(int delNewsId);
	
	void updateNews(News news);
	
	News getNewsById(int id);
	
	int getTotalCount();

}
