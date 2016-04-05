package com.demonland.eportal.service;

import java.util.List;

import com.demonland.eportal.model.Message;
import com.demonland.eportal.model.ParamMessage;

public interface MessageService {
	List<Message> list(ParamMessage param);

	void leaveMessage(Message message);

	void removeMessage(int id);
	
	int getTotalCount();
}
