package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.OperationData;

public class RegistServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rpsw = request.getParameter("rpsw");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");// �õ������������
		if (username == null || username.trim().isEmpty()) {
			request.setAttribute("msg", "�ʺŲ���Ϊ��");
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
			return;
		}
		if (password == null || password.trim().isEmpty()) {
			request.setAttribute("msg", "���벻��Ϊ��");
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
			return;
		}
		if (!password.equals(rpsw)) {
			request.setAttribute("msg", "������������벻ͬ");
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
			return;
		}
		if (question == null || question.trim().isEmpty()) {
			request.setAttribute("msg", "���ⲻ��Ϊ��");
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
			return;
		}
		if (answer == null || answer.trim().isEmpty()) {
			request.setAttribute("msg", "�𰸲���Ϊ��");
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
			return;
		}

		String psw = new OperationData().findUsername(username);
		if (psw == null) {

			OperationData u = new OperationData();
			u.addUser(username, password,question,answer);// ����addUser��������
			// request.setAttribute("msg", "��ϲ��"+username+"��ע��ɹ�");
			request.getRequestDispatcher("/zuizhong.jsp").forward(request, response);
		} else {
			request.setAttribute("msg", "�˺��Ѵ���");
			request.getRequestDispatcher("/regist.jsp").forward(request, response);
			return;
		}
	}

	// public static void main(String[] args){
	//// System.out.println(username);
	//// System.out.println(password);
	// }

}