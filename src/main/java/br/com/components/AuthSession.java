package br.com.components;

import java.io.Serializable;


public class AuthSession implements Serializable{
    private Boolean isLogged;
    private String userName;

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public Boolean isLogged(){
        return isLogged;
    }

    public String getUserName() {
        return userName;
    }

    public void setIsLogged(Boolean isLogged) {
        this.isLogged = isLogged;
    }
    
    public void signout(){
        this.isLogged = false;
        this.userName = null;
    }
}
