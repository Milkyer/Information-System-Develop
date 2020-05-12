package action;

import java.util.List;

import service.StudentService;
import model.Student;

import com.opensymphony.xwork2.Action;

public class StudentAction implements Action {
	private Student std;
	private Student stdNew;
	private StudentService stdServ;
	private List<Student> students;
	private String state="1234";
	
	public String list(){
		setStudents(stdServ.findAll());
		return "good";
	}

	//插入方法
	public String insert() {
		Student students = std;
		if(students.getXhao() == null || students.getXming() == null) {
			setState("学号或姓名不能为空！");
			return "error";
		} else {
			if(query() == "error") {
				stdServ.add(students);
				return "good";
			} else {
				std = null;
				setState("此学号已存在！");
				return "error";
			}
		}
	}
	
	//按学号查询
	public String query() {
		std = stdServ.query(std.getXhao());
		if(std == null) {
			return "error";
		} else {
			return "good";
		}
	}
	
	//删除方法
	public String delete() {
	    	stdServ.delete(std);
	    	return "good";
	}
	
	//根据学号获取对应数据展现页面上
	public String updated() {
		std = stdServ.query(std.getXhao());
		return "good";
	}
	
	//更新 删除原数据 插入新数据
	public String update() {
		stdServ.update(std,stdNew);
		return "good";
	}
	
	public Student getStd() {
		return std;
	}

	public void setStd(Student std) {
		this.std = std;
	}

	public StudentService getStdServ() {
		return stdServ;
	}

	public void setStdServ(StudentService stdServ) {
		this.stdServ = stdServ;
	}
    
	public List<Student> getStudents(){
		return students;
	}
	
	public void setStudents(List<Student> students){
		this.students = students;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Student getStdNew() {
		return stdNew;
	}

	public void setStdNew(Student stdNew) {
		this.stdNew = stdNew;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
}
