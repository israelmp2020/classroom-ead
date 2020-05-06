package br.com.intercepts;

import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.annotations.Auth;
import br.com.components.AuthSession;
import br.com.controllers.AuthController;
import javax.inject.Inject;

@Intercepts
public class AuthIntercepts implements Interceptor {

    @Inject
    private AuthSession authSession;

    @Inject
    private Result result;

    @Override
    public void intercept(InterceptorStack is, ControllerMethod cm, Object o) {
        System.out.println("authSession" + authSession.isLogged());
        if (authSession.isLogged()) {
            is.next(cm, o);
        } else {
            authSession.signout();
            result.redirectTo(AuthController.class).login();
        }
    }

    @Override
    public boolean accepts(ControllerMethod cm) {
        boolean canGo = cm.containsAnnotation(Auth.class) || cm.getController().getType().isAnnotationPresent(Auth.class);
        System.out.println("Can go " + canGo);
        return canGo;
    }
}
