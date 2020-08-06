package article.service;

import java.util.Map;

public class DeleteRequest {
	private String userId;
	private int articleNumber;
	private String password;
	
	public DeleteRequest(String userId, int articleNumber, String password) {
		this.userId = userId;
		this.articleNumber = articleNumber;
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public int getArticleNumber() {
		return articleNumber;
	}

	public String getPassword() {
		return password;
	}
	
	public void validate(Map<String, Boolean> errors) {
		if(password == null || password.isEmpty()) {
			errors.put("password", true);
		}
	}
}
