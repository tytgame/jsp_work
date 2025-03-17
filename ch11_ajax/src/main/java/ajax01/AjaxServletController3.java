package ajax01;

import java.io.IOException;

import org.json.simple.JSONObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AjaxServletController3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		// v1. 응답 데이터가 하나의 문자열일 때
		
		/*
		 * String responseData = "이름 : " + name + ", 나이 : " + age;
		 * response.setContentType("text/html");
		 * response.getWriter().print(responseData);
		 */
		
		/*
		 * // v2. 응답 데이터가 여러개의 문자열일 때
		 * response.setContentType("text/html");
		 * response.getWriter().print(name);
		 * response.getWriter().print(age);
		 * 
		 */
		
		// v3. 응답 데이터가 여러개의 값을 가진 배열일 떄
		/*
		 * JSON(JavaScript Object Notation : 자바 객체 표기법)
		 * - ajax 통신시 데이터 전송에 주로 사용되는 포맷형식중 하나
		 *   > [value, value, value, ...] => 자바스크립트의 배열 객체 => JSONArray
		 *   > {key:value, key:value, ...} => 자바스크립트의 일반 객체 => JSONObject
		 * - 사용하려면 라이브러리가 필요함
		 *   구글에서 json-simple 검색 -> 다운로드 후 -> webapp/WEB-INF/lib 에 넣기
		 */
		
		// 배열로 JSONArray
		/*
		JSONArray jArr = new JSONArray();
		jArr.add(name);
		jArr.add(age);
		
//		response.setContentType("text/html");
		response.setContentType("application/json");
		response.getWriter().print(jArr);
		*/
		
		// v4. 응답 데이터가 여러개일 때 객체로 반환
		// JSONObject
		
		JSONObject jObj = new JSONObject();
		jObj.put("name", name);
		jObj.put("age", age);
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jObj);
	}

}
