package com.demonland.eportal.admin.interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginedCheckInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		Object isLogin = ai.getInvocationContext().getSession().get("isLogin");
		
		if (isLogin != null && String.valueOf(isLogin).equalsIgnoreCase("true")) {
			return ai.invoke();
		} else {
			return Action.LOGIN;
		}

	}

}
