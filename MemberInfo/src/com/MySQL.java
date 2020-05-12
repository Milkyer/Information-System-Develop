package com;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

public class MySQL {
	private static final String usename = "root";
	private static final String password = "1234";
	private static final String driver = "com.mysql.jdbc.Driver";
	private static final String url = "jdbc:mysql://localhost:3306/mydb";
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet result = null;

	public static LinkedList<MemberInfo> getAll() {
		connection();
		LinkedList<MemberInfo> memberinfo = new LinkedList<MemberInfo>();
		try {
			result = st.executeQuery("select * from memberinfo");
			while (result.next()) {
				MemberInfo memberInfo = new MemberInfo();
				memberInfo.setMemberId(result.getString(1));
				memberInfo.setPasswordMember(result.getString(2));
				memberInfo.setName(result.getString(3));
				memberInfo.setMobilePhone(result.getString(4));
				memberInfo.setTelephone(result.getString(5));
				memberInfo.setEmail(result.getString(6));
				memberInfo.setQQNumber(result.getString(7));
				memberInfo.setZipCode(result.getString(8));
				memberInfo.setAddress(result.getString(9));
				memberInfo.setOccupation(result.getString(10));
				memberInfo.setIncome(result.getString(11));
				memberInfo.setRankMember(result.getString(12));
				memberInfo.setCurrentScore(result.getInt(13));
				memberInfo.setBalanceAccount(result.getString(14));
				memberInfo.setIsFreezed(result.getBoolean(15));
				memberInfo.setRemark(result.getString(16));
				memberinfo.add(memberInfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
		return memberinfo;
	}

	public static void add(MemberInfo memberInfo) {
		connection();
		try {
			st.executeUpdate("insert into memberinfo (MemberId, PasswordMember, Name,MobilePhone, Telephone,"
					+ "Email, QQNumber, ZipCode,Address,Occupation,Income, RankMember,CurrentScore,"
					+ "BalanceAccount,IsFreezed,Remark)   values('"
					+ memberInfo.getMemberId()
					+ "', '"
					+ memberInfo.getPasswordMember()
					+ "', '"
					+ memberInfo.getName()
					+ "', '"
					+ memberInfo.getMobilePhone()
					+ "', '"
					+ memberInfo.getTelephone()
					+ "', '"
					+ memberInfo.getEmail()
					+ "', '"
					+ memberInfo.getQQNumber()
					+ "', '"
					+ memberInfo.getZipCode()
					+ "', '"
					+ memberInfo.getAddress()
					+ "', '"
					+ memberInfo.getOccupation()
					+ "', '"
					+ memberInfo.getIncome()
					+ "', '"
					+ memberInfo.getRankMember()
					+ "', '"
					+ memberInfo.getCurrentScore()
					+ "', '"
					+ memberInfo.getBalanceAccount()
					+ "', '"
					+ memberInfo.getIsFreezed()
					+ "', '"
					+ memberInfo.getRemark() + "')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
	}

	public static void delete(String memberId) {
		connection();
		try {
			st.execute("delete from memberinfo where MemberId="+memberId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
	}

	public static void update(MemberInfo memberInfo) {
		connection();
		try {
			st.executeUpdate("update memberinfo set MemberId='"
					+ memberInfo.getMemberId() + "',PasswordMember='"
					+ memberInfo.getPasswordMember() + "', Name='"
					+ memberInfo.getName() + "', MobilePhone='"
					+ memberInfo.getMobilePhone() + "', Telephone='"
					+ memberInfo.getTelephone() + "', Email='"
					+ memberInfo.getEmail() + "', QQNumber='"
					+ memberInfo.getQQNumber() + "', ZipCode='"
					+ memberInfo.getZipCode() + "', Address='"
					+ memberInfo.getAddress() + "', Occupation='"
					+ memberInfo.getOccupation() + "', Income='"
					+ memberInfo.getIncome() + "', RankMember='"
					+ memberInfo.getRankMember() + "', CurrentScore='"
					+ memberInfo.getCurrentScore() + "', BalanceAccount='"
					+ memberInfo.getBalanceAccount() + "' , IsFreezed='"
					+ memberInfo.getIsFreezed() + "' , Remark='"
					+ memberInfo.getRemark() + "' where MemberId='"
					+ memberInfo.getMemberId() + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
	}

	public static MemberInfo search(String memberId) {
		connection();
		MemberInfo memberInfo = new MemberInfo();
		try {
			result = st
					.executeQuery("select * from memberinfo where MemberId='"
							+ memberId + "'");
			while (result.next()) {
				memberInfo.setMemberId(result.getString(1));
				memberInfo.setPasswordMember(result.getString(2));
				memberInfo.setName(result.getString(3));
				memberInfo.setMobilePhone(result.getString(4));
				memberInfo.setTelephone(result.getString(5));
				memberInfo.setEmail(result.getString(6));
				memberInfo.setQQNumber(result.getString(7));
				memberInfo.setZipCode(result.getString(8));
				memberInfo.setAddress(result.getString(9));
				memberInfo.setOccupation(result.getString(10));
				memberInfo.setIncome(result.getString(11));
				memberInfo.setRankMember(result.getString(12));
				memberInfo.setCurrentScore(result.getInt(13));
				memberInfo.setBalanceAccount(result.getString(14));
				memberInfo.setIsFreezed(result.getBoolean(15));
				memberInfo.setRemark(result.getString(16));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeConnection();
		return memberInfo;
	}

	private static void connection() {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			System.out.println("驱动程序加载错误");
		}
		try {
			con = DriverManager.getConnection(url, usename, password);
			st = con.createStatement();
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
	}

	private static void closeConnection() {
		try {
			if (result != null) {
				result.close();
			}
			if (st != null) {
				st.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
