package com.js.Controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.js.dto.student;

public class getStudentById {

	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("Siddeshgowda");
	public student getStudentById(int id) {
		EntityManager em=emf.createEntityManager();
		return em.find(student.class, id);
	}
	public boolean updateStudent(student s) {
		EntityManager em=emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		if(s!=null) {
		et.begin();
		em.merge(s);
		et.commit();
		return true;
		}
		else {
			return false;	
		}
	}
}

