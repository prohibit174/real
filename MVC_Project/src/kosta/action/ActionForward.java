package kosta.action;

public class ActionForward {
	private boolean isRedirect;
	// 디스패처인지 리다이렉트인지 구분하기 위해서
	private String path;
	
	public boolean isRedirect(){
		return isRedirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
