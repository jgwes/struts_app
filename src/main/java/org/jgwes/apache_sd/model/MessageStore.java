package org.jgwes.apache_sd.model;

public class MessageStore {
	
	private String message;

	public MessageStore(String message) {
		setMessage(message);
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}	
}
