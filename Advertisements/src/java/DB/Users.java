
package DB;


public class Users {
    private String id_user;
    private String email;
    private String login;
    private String password;
    private String phone;
    private String place;
    
public Users(){}

    public Users(String id_user, String email, String login, String password, String phone, String place) {
        this.id_user = id_user;
        this.email = email;
        this.login = login;
        this.password = password;
        this.phone = phone;
        this.place = place;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }





}




