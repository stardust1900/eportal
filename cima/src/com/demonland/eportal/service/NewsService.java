package com.demonland.eportal.service;

import java.util.List;

import com.demonland.eportal.model.News;
import com.demonland.eportal.model.ParamNews;

public interface NewsService {
	List<News> list(ParamNews param);
	
	void addNews(News news);
	
	void removeNews(int id);
	
	void modifyNews(News news);
	
	News getNewsById(int id);

	int getTotalCount();

}
