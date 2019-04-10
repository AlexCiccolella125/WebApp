package edu.fau.otoledo.week11.model;

import java.util.Date;

public class Department {
	private int id;
	private String name;
		
	public Department() {
		
	}

	public Department(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
