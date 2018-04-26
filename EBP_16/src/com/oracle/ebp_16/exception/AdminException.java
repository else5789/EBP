package com.oracle.ebp_16.exception;

public class AdminException extends Exception {

	private static final long serialVersionUID = 1L;
	public AdminException(Exception e) {
	        super(e);
	    }
	    public AdminException(String msg) {
	        super(msg);
	    }
}
