
package model;

import java.sql.SQLException;

public class User {
    private int id;
    private String userName;
    private String userPass;
    
    public User(){}
    
    public User(String u, String p) {
       this.userName = u;
       this.userPass = p;
    }
    
    public User(int id, String u, String p) {
       this.id = id;
       this.userName = u;
       this.userPass = p;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
    
    @Override
    public String toString(){
        return "Nome: " + userName 
        + "<br>senha:" + userPass;
    }
    
    public boolean isLoggerd() throws SQLException, ClassNotFoundException {
        UserDAO udao = new UserDAO();
        User uBanco = udao.listByName(this.userName);
        
        if(uBanco.getUserName() != null){
            return (uBanco.getUserPass().equals(this.userPass));
        } else {
            return false;
        }
    }
}
