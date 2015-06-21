/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author Mariusz
 */
public class Message {
    
    private String id_message;
    private String content;
    private String id_conversation;
    private String date_message;
    private String login_sender;
    private String email;

    public Message() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Message(String id_message, String content, String id_conversation, String date_message, String login_sender, String email) {
        this.id_message = id_message;
        this.content = content;
        this.id_conversation = id_conversation;
        this.date_message = date_message;
        this.login_sender = login_sender;
        this.email = email;
    }
    
    

    public Message(String id_message, String content, String id_conversation, String date_message, String login_sender) {
        this.id_message = id_message;
        this.content = content;
        this.id_conversation = id_conversation;
        this.date_message = date_message;
        this.login_sender = login_sender;
    }

    public String getId_message() {
        return id_message;
    }

    public void setId_message(String id_message) {
        this.id_message = id_message;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getId_conversation() {
        return id_conversation;
    }

    public void setId_conversation(String id_conversation) {
        this.id_conversation = id_conversation;
    }

    public String getDate_message() {
        return date_message;
    }

    public void setDate_message(String date_message) {
        this.date_message = date_message;
    }
    
    public String getLogin_sender() {
        return login_sender;
    }

    public void setLogin_sender(String login_sender) {
        this.login_sender = login_sender;
    }
    
    
}
