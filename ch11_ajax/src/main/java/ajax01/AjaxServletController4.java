package ajax01;

import java.io.IOException;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

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
	
		// 3. 2번을 간단하게 하는 방법 : GSON 사용
		// MVNREPOSITORY에서 다운로드하여 lib에 넣기
	
		/*
		 * Gson gson = new Gson();
		 * gson.toJson(bean)
		 */
}
