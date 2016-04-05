package com.demonland.eportal.admin.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.demonland.eportal.common.Constants;
import com.demonland.eportal.model.Message;
import com.demonland.eportal.model.ParamMessage;
import com.demonland.eportal.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {

	private static final long serialVersionUID = 6748258134640046003L;
	private List<Message> messages;

	@Autowired
	private MessageService messageService;

	private Integer delMessageId;

	private int startNum;

	private int totalPage;

	private int currentPage;

	private int prePage;

	private int nextPage;

	public String list() {
		ParamMessage param = new ParamMessage();
		startNum = currentPage * Constants.ADMIN_PAGE_COUNT;
		param.setStartNum(startNum);
		param.setPageCount(Constants.ADMIN_PAGE_COUNT);
		
		messages = messageService.list(param);
		
		return SUCCESS;
	}

	public String delMessage() {
		if (delMessageId != null) {
			messageService.removeMessage(delMessageId);
		}
		return SUCCESS;
	}

	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}

	public Integer getDelMessageId() {
		return delMessageId;
	}

	public void setDelMessageId(Integer delMessageId) {
		this.delMessageId = delMessageId;
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
