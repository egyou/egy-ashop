package induksoft.oop2a.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import induksoft.oop2a.model.Member;

/**
 * Servlet implementation class MemberController
 */
@WebServlet({"/member-login.do", "/member-register.do", "/member-list.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// SQL 문을 이용하여 DB로 부터 가져옮
    ArrayList<Member> arrayListMember = new ArrayList<Member>();   // ArrayList 객체 생성
    Member member;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		// name 매개변수의 값을 get이라는 이름의 속성으로 request에 저장
		//request.setAttribute("get", request.getParameter("name"));
		
		// request 객체안에 있는 속성의 값들을 활용해서 처리한 후 전달
		//request.getRequestDispatcher("view.jsp").forward(request, response);
		/*
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		out.print("<h1>출력 " + request.getParameter("n") + "</h1>");
		out.print("</boyd></html>");
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// name 매개변수의 값을 get이라는 이름의 속성으로 request에 저장
		request.setCharacterEncoding("UTF-8"); // POST 방식에서 한글 인코딩 설정
		// html의 <form> 태그아래 지정된 요소의 name 옵션의 값이 매개변수로 됨
		String uri = request.getRequestURI();
		int i = uri.lastIndexOf("/");
		String action = uri.substring(i + 1);

		HttpSession session = request.getSession();
		
		if(action.equals("member-list.do")) {
			// JCF , Java Collection Framework, 
			// 집합 개체들을 다루는데 필요한 유용한 자료구조, 알고리즘의 집합체
			request.setAttribute("memberlist", arrayListMember);
			request.getRequestDispatcher("member-list.jsp").forward(request, response);			
		} else	if(action.equals("member-register.do")) {
			// JCF , Java Collection Framework, 
			// 집합 개체들을 다루는데 필요한 유용한 자료구조, 알고리즘의 집합체
			member = new Member();
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setName(request.getParameter("name"));
			member.setPhone(request.getParameter("phone"));
			member.setEmail(request.getParameter("email"));
			member.setCountry(request.getParameter("country"));
			arrayListMember.add(member);		
			
			//session.setAttribute("memberlist", arrayListMember);
			
			request.setAttribute("member", member.getId());
			
			request.getRequestDispatcher("member-register-view.jsp").forward(request, response);
		} else if(action.equals("member-login.do")) {
			String inputName = request.getParameter("id");
			String inputPw = request.getParameter("pw");
			for(Member m : arrayListMember) {				
				if(inputName.equals(m.getId()) && inputPw.equals(m.getPw())) {
					// login 이라는 이름을 가진 속성과 값을 request 객체에 저장
					//request.setAttribute("login", "올바를 로그인 정보입니다. 로그인 성공");
					session.setAttribute("login", "success");
				}
				else
					session.setAttribute("login",  null);
			}
			/*
			else
				//request.setAttribute("login", "잘못된 로그인 정보입니다. 로그인 실퍠");
				session.setAttribute("login", "fail");
			*/
			//System.out.println("doPost" + request.getParameter("name"));
			//request.setAttribute("get", request.getParameter("name"));			
			//request.getRequestDispatcher("view.jsp").forward(request, response);
			request.getRequestDispatcher("confirmation.jsp").forward(request, response);
		}

	}

}
