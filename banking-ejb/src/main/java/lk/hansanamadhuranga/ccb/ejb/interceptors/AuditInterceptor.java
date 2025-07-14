package lk.hansanamadhuranga.ccb.ejb.interceptors;

import jakarta.interceptor.AroundInvoke;
import jakarta.interceptor.Interceptor;
import jakarta.interceptor.InvocationContext;

@Interceptor
public class AuditInterceptor {
    @AroundInvoke
    public Object logAction(InvocationContext ctx) throws Exception {
        // Audit logging logic
        return ctx.proceed();
    }
} 