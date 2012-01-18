package org.jgwes.apache_sd.action;

import org.jgwes.apache_sd.model.MessageStore;
import com.opensymphony.xwork2.ActionSupport;


public class MessageController extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private MessageStore messageStore;
	private static int messageCount;

	public String execute() throws Exception {
		messageCount++;
		messageStore = new MessageStore("Hey you, look at this.");
		return SUCCESS;
	}

	public MessageStore getMessageStore() {
		return messageStore;
	}	

	public void setMessageStore(MessageStore messageStore) {
		this.messageStore = messageStore;
	}
	
	public int getMessageCount() {
		return this.messageCount;
	}
	
	public void setMessageCount(int messageCount) {
		this.messageCount = messageCount;
	}
}
