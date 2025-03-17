package ajax01;

import java.io.IOException;

import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
public class AjaxServletController4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxServletController4() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Member bean = new MemberDao().getMember(id);
		
		// 1. 객체의 주소 반환, toString() 오버라이딩 했다면 toString()의 값(문자열)이
		System.out.println(bean);
		response.getWriter().print(bean);
		
		// 2. JSONObject 객체로
		JSONObject jObj = new JSONObject();
		jObj.put("userId", bean.getId());
		jObj.put("userName", bean.getName());
	}
}
