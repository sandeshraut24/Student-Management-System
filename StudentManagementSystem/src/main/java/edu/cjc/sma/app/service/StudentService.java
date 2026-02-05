package edu.cjc.sma.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sma.app.model.Student;
import edu.cjc.sma.app.repository.StudentRepo;

@Service
public class StudentService implements StudentInt{
	@Autowired
	StudentRepo repo;

	@Override
	public void saveStudentData(Student st) {
		repo.save(st);
		
	}

	@Override
	public List<Student> getAllStudent() {
	return repo.findAll();
		
	}

	@Override
	public void deleteByStudentData(int studentId) {
		repo.deleteById(studentId);
		
	}

	@Override
	public List<Student> searchByBatch(String batchNumber) {
	List<Student> list = repo.findAllByBatchNumber(batchNumber);
		return list;
	}

	
}
