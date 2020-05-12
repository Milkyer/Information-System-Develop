package model;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Student implements java.io.Serializable {

	// Fields

	private Integer xhao;
	private String xming;
	private String xbie;
	private String xyuan;
	private String bji;
	private String zhye;
	private String acno;

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(Integer xhao) {
		this.xhao = xhao;
	}

	/** full constructor */
	public Student(Integer xhao, String xming, String xbie, String xyuan,
			String bji, String zhye, String acno) {
		this.xhao = xhao;
		this.xming = xming;
		this.xbie = xbie;
		this.xyuan = xyuan;
		this.bji = bji;
		this.zhye = zhye;
		this.setAcno(acno);
	}

	// Property accessors

	public Integer getXhao() {
		return this.xhao;
	}

	public void setXhao(Integer xhao) {
		this.xhao = xhao;
	}

	public String getXming() {
		return this.xming;
	}

	public void setXming(String xming) {
		this.xming = xming;
	}

	public String getXbie() {
		return this.xbie;
	}

	public void setXbie(String xbie) {
		this.xbie = xbie;
	}

	public String getXyuan() {
		return this.xyuan;
	}

	public void setXyuan(String xyuan) {
		this.xyuan = xyuan;
	}

	public String getBji() {
		return this.bji;
	}

	public void setBji(String bji) {
		this.bji = bji;
	}

	public String getZhye() {
		return this.zhye;
	}

	public void setZhye(String zhye) {
		this.zhye = zhye;
	}

	public String getAcno() {
		return acno;
	}

	public void setAcno(String acno) {
		this.acno = acno;
	}

}