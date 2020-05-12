package service.impl;

import java.util.List;

import dao.StudentDAO;
import model.Student;
import service.StudentService;

public class StudentServiceImpl implements StudentService {

	private StudentDAO stdDao;
			
	public StudentDAO getStdDao() {
		return stdDao;
	}

	public void setStdDao(StudentDAO stdDao) {
		this.stdDao = stdDao;
	}

	@Override
	public void add(Student std) {
		// TODO Auto-generated method stub
        stdDao.save(std);
	}

	@Override
	public void update(Student std,Student stdNew) {
		// TODO Auto-generated method stub
        stdDao.delete(std);
        stdDao.save(stdNew);
	}

	@Override
	public void delete(Student std) {
		// TODO Auto-generated method stub
        stdDao.delete(std);
	}

	@SuppressWarnings("unchecked")
	@Override
	/*public List<Student> findAll() {
		// TODO Auto-generated method stub
        return stdDao.findAll();
	}*/

	public List<Student> findAll() {
		List<Student> students = stdDao.findAll();
		return students;
	}

	@Override
	public Student query(int xhao) {
		// TODO Auto-generated method stub
		Student std = stdDao.findById(xhao);
		return std;
	}
}
