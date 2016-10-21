package com.cricketsocial.bean.role;

import java.util.UUID;

public class Role {
	
	private UUID role_id;
	private String role;
	private String priority;
	
	
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public UUID getRole_id() {
		return role_id;
	}
	public void setRole_id(UUID role_id) {
		this.role_id = role_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}
