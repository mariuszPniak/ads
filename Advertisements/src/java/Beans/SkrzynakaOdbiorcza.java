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
public class SkrzynakaOdbiorcza {
    
    private String id_conversation;
    private String id_advert;
    private String title;
    private String login;

    public SkrzynakaOdbiorcza() {
    }

    public SkrzynakaOdbiorcza(String id_conversation, String id_advert,String title, String login) {
        
        this.id_conversation = id_conversation;
        this.id_advert = id_advert;
        this.title = title;
        this.login = login;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }
    
    
    
}
