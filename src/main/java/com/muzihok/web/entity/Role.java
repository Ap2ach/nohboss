package com.muzihok.web.entity;

public class Role {
	private String id;
    private String description;
	
    //±×³É ¤» 
    public Role() {
		// TODO Auto-generated constructor stub
	}
	public Role(String id, String description) {
		this.id = id;
		this.description = description;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getdescription() {
		return description;
	}
	public void setdescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Role [id=" + id + ", description=" + description + "]";
	}
    
    
}
