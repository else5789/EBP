package com.oracle.ebp_16.exception;

public class ProductException extends Exception{

	private static final long serialVersionUID = 1L;
	public ProductException(Exception e) {
        super(e);
    }
    public ProductException(String msg) {
        super(msg);
    }

}
