package com.js.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.js.dto.student;

public class studentCRUD {

	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("Siddeshgowda");

	public boolean SaveStudent(student s) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(s);
		et.commit();

		student s1 = em.find(student.class, s.getId());

		if (s1 != null)
			return true;
		else
			return false;
	}

	public List<student> getAllStudents() {

		String query = "select s from student s";
		EntityManager em = emf.createEntityManager();

		Query q = em.createQuery(query);
		return q.getResultList();
	}

	public boolean deleteStudent(int id) {

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		student s = em.find(student.class, id);
		if (s != null) {
			et.begin();
			em.remove(s);
			et.commit();
			return true;
		} else
			return false;

	}

	public boolean update(student s) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		if (s != null) {
			et.begin();
			em.merge(s);
			et.commit();
			return true;
		} else
			return false;
	}

}
