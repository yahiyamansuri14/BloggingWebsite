package io.marsab.minorproject.utility;

public class Response {
	private String status;
	private Object object;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}
	public Response(String status, Object object) {
		super();
		this.status = status;
		this.object = object;
	}
	public Response() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
