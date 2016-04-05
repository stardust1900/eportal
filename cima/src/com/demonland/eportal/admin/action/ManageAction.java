package com.demonland.eportal.admin.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ManageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String loginName;

	private String passwd;

	private String errorMsg;

	public String home() {

		return SUCCESS;
	}

	public String doLogin() {
		if ("admin".equals(loginName) && "admin1".equals(passwd)) {
			ActionContext.getContext().getSession().put("isLogin", "true");
			return SUCCESS;
		} else {
			errorMsg="\u767b\u5f55\u540d\u6216\u5bc6\u7801\u9519\u8bef";
			return LOGIN;
		}
	}
	
	public String logout() {
		ActionContext.getContext().getSession().remove("isLogin");
		return SUCCESS;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
}
