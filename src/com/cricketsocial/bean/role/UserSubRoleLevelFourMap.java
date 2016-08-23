package com.cricketsocial.bean.role;

import java.util.Date;

public class UserSubRoleLevelFourMap {


/*CREATE TABLE cricketsocial.user_sub_role_level_four_map (
	user_id text,
	role_id text,
	sub_role_level_one_id text,
	sub_role_level_two_id text,
	sub_role_level_three_id text,
	sub_role_level_four_id text,
	active int,
	created_date timestamp,
	modified_date timestamp,
	PRIMARY KEY (user_id,role_id,sub_role_level_one_id,sub_role_level_two_id,sub_role_level_three_id,sub_role_level_four_id)
);*/

	
	private String userId;
	private String roleId;
	private String subRoleLevelOneId;
	private String subRoleLevelTwoId;
	private String subRoleLevelThreeId;
	private String subRoleLevelFourId;
	private int active;
	private Date createdDate;
	private Date modifiedDate;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getSubRoleLevelOneId() {
		return subRoleLevelOneId;
	}
	public void setSubRoleLevelOneId(String subRoleLevelOneId) {
		this.subRoleLevelOneId = subRoleLevelOneId;
	}
	public String getSubRoleLevelTwoId() {
		return subRoleLevelTwoId;
	}
	public void setSubRoleLevelTwoId(String subRoleLevelTwoId) {
		this.subRoleLevelTwoId = subRoleLevelTwoId;
	}
	public String getSubRoleLevelThreeId() {
		return subRoleLevelThreeId;
	}
	public void setSubRoleLevelThreeId(String subRoleLevelThreeId) {
		this.subRoleLevelThreeId = subRoleLevelThreeId;
	}
	public String getSubRoleLevelFourId() {
		return subRoleLevelFourId;
	}
	public void setSubRoleLevelFourId(String subRoleLevelFourId) {
		this.subRoleLevelFourId = subRoleLevelFourId;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	
	
	
}
