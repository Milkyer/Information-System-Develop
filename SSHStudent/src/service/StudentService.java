package service;

import java.util.List;

import model.Student;

public interface StudentService {
    public void add( Student std);
    public void update( Student std,Student stdNew);
    public void delete( Student std);
    public Student query(int xhao);
    public List<Student> findAll();
}
