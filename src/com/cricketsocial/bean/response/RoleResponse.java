package com.cricketsocial.bean.response;

import java.util.List;

import com.cricketsocial.bean.role.Role;
import com.cricketsocial.bean.role.SubRoleLevelFour;
import com.cricketsocial.bean.role.SubRoleLevelOne;
import com.cricketsocial.bean.role.SubRoleLevelThree;
import com.cricketsocial.bean.role.SubRoleLevelTwo;

public class RoleResponse {

	private List<Role> roleList;
	private List<SubRoleLevelOne> subRoleLevelOneList;
	private List<SubRoleLevelTwo> subRoleLevelTwoList;
	private List<SubRoleLevelThree> subRoleLevelThreeList;
	private List<SubRoleLevelFour> subRoleLevelFourList;
	
	private List<Role> role;
	private List<SubRoleLevelOne> subroleLevelOne;
	private List<SubRoleLevelTwo> subroleLevelTwo;
	private List<SubRoleLevelThree> subroleLevelThree;
	private List<SubRoleLevelFour> subroleLevelFour;
	
	
	
	
	
	public List<Role> getRole() {
		return role;
	}
	public void setRole(List<Role> role) {
		this.role = role;
	}
	public List<SubRoleLevelOne> getSubroleLevelOne() {
		return subroleLevelOne;
	}
	public void setSubroleLevelOne(List<SubRoleLevelOne> subroleLevelOne) {
		this.subroleLevelOne = subroleLevelOne;
	}
	public List<SubRoleLevelTwo> getSubroleLevelTwo() {
		return subroleLevelTwo;
	}
	public void setSubroleLevelTwo(List<SubRoleLevelTwo> subroleLevelTwo) {
		this.subroleLevelTwo = subroleLevelTwo;
	}
	public List<SubRoleLevelThree> getSubroleLevelThree() {
		return subroleLevelThree;
	}
	public void setSubroleLevelThree(List<SubRoleLevelThree> subroleLevelThree) {
		this.subroleLevelThree = subroleLevelThree;
	}
	public List<SubRoleLevelFour> getSubroleLevelFour() {
		return subroleLevelFour;
	}
	public void setSubroleLevelFour(List<SubRoleLevelFour> subroleLevelFour) {
		this.subroleLevelFour = subroleLevelFour;
	}
	public List<SubRoleLevelThree> getSubRoleLevelThreeList() {
		return subRoleLevelThreeList;
	}
	public void setSubRoleLevelThreeList(
			List<SubRoleLevelThree> subRoleLevelThreeList) {
		this.subRoleLevelThreeList = subRoleLevelThreeList;
	}
	public List<SubRoleLevelFour> getSubRoleLevelFourList() {
		return subRoleLevelFourList;
	}
	public void setSubRoleLevelFourList(List<SubRoleLevelFour> subRoleLevelFourList) {
		this.subRoleLevelFourList = subRoleLevelFourList;
	}
	public List<Role> getRoleList() {
		return roleList;
	}
	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}
	public List<SubRoleLevelOne> getSubRoleLevelOneList() {
		return subRoleLevelOneList;
	}
	public void setSubRoleLevelOneList(List<SubRoleLevelOne> subRoleLevelOneList) {
		this.subRoleLevelOneList = subRoleLevelOneList;
	}
	public List<SubRoleLevelTwo> getSubRoleLevelTwoList() {
		return subRoleLevelTwoList;
	}
	public void setSubRoleLevelTwoList(List<SubRoleLevelTwo> subRoleLevelTwoList) {
		this.subRoleLevelTwoList = subRoleLevelTwoList;
	}
	
	
		/*private Role[] roleList;
		private SubRoleLevelOne[] subRoleLevelOneList;
		private SubRoleLevelTwo[] subRoleLevelTwoList;*/
		
	
	
}
