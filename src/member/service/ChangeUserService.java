package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;

public class ChangeUserService {
	private MemberDao memberDao = new MemberDao();
	
	public void changeUser(String userId, String curPwd, String newPwd, String newPhone, String newAddr, String newEmail) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			Member member = memberDao.selectById(conn, userId);
			if (member == null) {
				throw new MemberNotFoundException();
			}
			if (!member.matchPassword(curPwd)) {
				throw new InvalidPasswordException();
			}
			member.changeUser(newPwd, newPhone, newAddr, newEmail);
			memberDao.update(conn, member);
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
 
