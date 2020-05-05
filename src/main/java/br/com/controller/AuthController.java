package br.com.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import sun.security.krb5.Credentials;

@Controller
public class AuthController {
    
    @Get("signin")
    public void login(){
        
    }
    @Post("auth")
    public void authenticate(Credentials credentials){
      
        if (credentials.getUserName().equalsIgnoreCase("israel") && 
                credentials.getPassword().equals("123")){
            authSession.setUserName(credentials.getUserName());
            authSession.setIsLogged(true);
            result.redirectTo(StudentController.class).getStudent();
        }else{
            result.include("loginErrorMsg", "Login inválido!");
            result.redirectTo(this).login();
        }   
    }
    @Get("signout")
    public void signout(){
       authSession.signout();
       result.redirectTo(this).login();
    }
}
