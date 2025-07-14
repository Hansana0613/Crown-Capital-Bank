package lk.hansanamadhuranga.ccb.ejb.interceptors;

import jakarta.interceptor.AroundInvoke;
import jakarta.interceptor.Interceptor;
import jakarta.interceptor.InvocationContext;

@Interceptor
public class TransactionMonitorInterceptor {
    @AroundInvoke
    public Object monitorTransaction(InvocationContext ctx) throws Exception {
        // Transaction monitoring logic
        return ctx.proceed();
    }
} 