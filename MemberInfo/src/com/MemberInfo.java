package com;

import java.sql.Date;

public class MemberInfo {
	private String memberId;
	private String passwordMember;
	private String name;
	private String mobilePhone;
	private String telephone;
	private String email;
	private String qqNumber;
	private String zipCode;
	private String address;
	private String occupation;
	private String income;
	private String rankMember;
	private int currentScore;
	private String balanceAccount;
	private boolean isFreezed;
	private String remark;

	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPasswordMember() {
		return passwordMember;
	}
	public void setPasswordMember(String passwordMember) {
		this.passwordMember = passwordMember;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQQNumber() {
		return qqNumber;
	}
	public void setQQNumber(String qqNumber) {
		this.qqNumber = qqNumber;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public String getRankMember() {
		return rankMember;
	}
	public void setRankMember(String rankMember) {
		this.rankMember = rankMember;
	}
	public int getCurrentScore() {
		return currentScore;
	}
	public void setCurrentScore(int currentScore) {
		this.currentScore = currentScore;
	}
	public String getBalanceAccount() {
		return balanceAccount;
	}
	public void setBalanceAccount(String balanceAccount) {
		this.balanceAccount = balanceAccount;
	}
	public Boolean getIsFreezed() {
		return isFreezed;
	}
	public void setIsFreezed(boolean isFreezed) {
		this.isFreezed = isFreezed;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
