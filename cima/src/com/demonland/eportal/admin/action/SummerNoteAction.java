package com.demonland.eportal.admin.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class SummerNoteAction extends ActionSupport {

	private static final long serialVersionUID = -2673835764513878947L;

	private File image;

	private String imageFileName;
	private String imageContentType;

	public void uploadImg() {

		String picturesPath = ServletActionContext.getServletContext().getRealPath("/snImages");
		File picturesdir = new File(picturesPath);
		if (!picturesdir.exists()) {
			picturesdir.mkdirs();
		}
		String imgPath = "sn" + System.currentTimeMillis() + imageFileName.substring(imageFileName.lastIndexOf("."));
		File saveFile = new File(picturesdir, imgPath);
		try {
			FileUtils.copyFile(image, saveFile);
		} catch (IOException e) {
			e.printStackTrace();
		}

		HttpServletResponse response = ServletActionContext.getResponse();
		/*
		 * 在调用getWriter之前未设置编码(既调用setContentType或者setCharacterEncoding方法设置编码),
		 * HttpServletResponse则会返回一个用默认的编码(既ISO-8859-1)编码的PrintWriter实例。这样就会
		 * 造成中文乱码。而且设置编码时必须在调用getWriter之前设置,不然是无效的。
		 */
		response.setContentType("text/html;charset=utf-8");
		// response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			// JSON在传递过程中是普通字符串形式传递的，这里简单拼接一个做测试
			String jsonString = "{\"imageUrl\":\""+imgPath+"\"}";
			out.println(jsonString);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				out.close();
			}
		}
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

}
