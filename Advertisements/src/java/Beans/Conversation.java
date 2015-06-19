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
public class Conversation {
    
    private String id_conversation;
    private String id_advert;
    private String id_user1;
    private String id_user2;
    private String id_message;

    public Conversation() {
    }

    public Conversation(String id_conversation, String id_advert, String id_user1,String id_user2, String id_message) {
        this.id_conversation = id_conversation;
        this.id_advert = id_advert;
        this.id_user1 = id_user1;
        this.id_user1 = id_user2;
        this.id_message = id_message;
    }

    public String getId_conversation() {
        return id_conversation;
    }

    public void setId_conversation(String id_conversation) {
        this.id_conversation = id_conversation;
    }

    public String getId_advert() {
        return id_advert;
    }

    public void setId_advert(String id_advert) {
        this.id_advert = id_advert;
    }

    public String getId_user1() {
        return id_user1;
    }

    public void setId_user1(String id_user1) {
        this.id_user1 = id_user1;
    }

    public String getId_user2() {
        return id_user2;
    }

    public void setId_user2(String id_user2) {
        this.id_user2 = id_user2;
    }

    public String getId_message() {
        return id_message;
    }

    public void setId_message(String id_message) {
        this.id_message = id_message;
    }
    
}
