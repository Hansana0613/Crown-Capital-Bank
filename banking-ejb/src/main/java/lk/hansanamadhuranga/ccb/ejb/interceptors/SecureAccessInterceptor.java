package lk.hansanamadhuranga.ccb.ejb.interceptors;

import jakarta.interceptor.AroundInvoke;
import jakarta.interceptor.Interceptor;
import jakarta.interceptor.InvocationContext;

@Interceptor
public class SecureAccessInterceptor {
    @AroundInvoke
    public Object logAccess(InvocationContext ctx) throws Exception {
        // Secure access logging logic
        return ctx.proceed();
    }
} 