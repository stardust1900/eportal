package com.demonland.eportal.dao;

import java.util.List;

import com.demonland.eportal.model.Message;
import com.demonland.eportal.model.ParamMessage;
import com.demonland.eportal.mybatis.annotation.DaoMapper;

@DaoMapper
public interface MessageDao {
	List<Message> query(ParamMessage param);
	
	void insert(Message message);
	
	void delMessage(int delMessageId);
	
	int getTotalCount();

}
