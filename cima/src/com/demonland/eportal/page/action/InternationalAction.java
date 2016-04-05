package com.demonland.eportal.page.action;

import java.util.Locale;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class InternationalAction extends ActionSupport {
	private static final long serialVersionUID = 1687644942729286802L;
	
	private String languageName;

	public String changeLanguage() {
		return SUCCESS;
	}

	public String changeLanguage2() {

		Locale l = Locale.getDefault();
		if ("cn".equals(this.languageName)) {
			l = new Locale("zh", "CN");
		} else if ("ft".equals(this.languageName)) {
			l = new Locale("zh", "TW");
		} else if ("en".equals(this.languageName)) {
			l = new Locale("en", "US");
		}
		ActionContext.getContext().getSession().put("WW_TRANS_I18N_LOCALE", l);
		return SUCCESS;
	}

	public String getLanguageName() {
		return languageName;
	}

	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}

}
