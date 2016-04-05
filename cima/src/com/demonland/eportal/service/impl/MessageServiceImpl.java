package com.demonland.eportal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demonland.eportal.dao.MessageDao;
import com.demonland.eportal.model.Message;
import com.demonland.eportal.model.ParamMessage;
import com.demonland.eportal.service.MessageService;

@Service("messageService")
public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageDao messageDao;

	@Override
	public List<Message> list(ParamMessage param) {
		return messageDao.query(param);
	}

	@Override
	public void leaveMessage(Message message) {
		messageDao.insert(message);

	}

	@Override
	public void removeMessage(int id) {
		messageDao.delMessage(id);
	}

	@Override
	public int getTotalCount() {
		return messageDao.getTotalCount();
	}

}
