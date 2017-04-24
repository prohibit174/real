package kosta.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("*.jsp") // 모든 jsp 파일에 대하여 필터 하겠다.
public class EncFilter implements Filter {
	//필터를 통해서 매 페이지 마다 인코딩 할 것을 편하게 한다.
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		if(request.getCharacterEncoding() == null){
			request.setCharacterEncoding("utf-8");
		}

		chain.doFilter(request, response); // 이렇게 해야 웹 컴포넌트에 연결이 된다.
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}

}
