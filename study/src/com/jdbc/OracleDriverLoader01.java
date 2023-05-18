package com.jdbc;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class OracleDriverLoader01 extends HttpServlet {

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("success to load oracle driver");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();

			System.out.println("fail to load oracle driver");

		}
	}

}
