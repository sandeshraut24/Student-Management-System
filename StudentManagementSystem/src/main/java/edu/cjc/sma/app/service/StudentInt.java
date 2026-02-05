package edu.cjc.sma.app.service;

import java.util.List;

import edu.cjc.sma.app.model.Student;

public interface StudentInt {
	public void saveStudentData(Student st);
   public List<Student> getAllStudent();
   public void deleteByStudentData(int studentId);
   public List<Student> searchByBatch(String batchNumber);
}
