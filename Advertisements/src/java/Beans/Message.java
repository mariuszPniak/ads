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

    public Message() {
    }
    
    

    public Message(String id_message, String content, String id_conversation, String date_message) {
        this.id_message = id_message;
        this.content = content;
        this.id_conversation = id_conversation;
        this.date_message = date_message;
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
    
    
    
    
}
