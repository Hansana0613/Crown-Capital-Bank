//package lk.hansanamadhuranga.ccb.ejb.interceptors;
//
//import jakarta.interceptor.AroundInvoke;
//import jakarta.interceptor.Interceptor;
//import jakarta.interceptor.InvocationContext;
//import java.util.logging.Logger;
//
//@Interceptor
//public class AuditInterceptor {
//    private static final Logger logger = Logger.getLogger(AuditInterceptor.class.getName());
//
//    @AroundInvoke
//    public Object logAction(InvocationContext ctx) throws Exception {
//        String method = ctx.getMethod().getName();
//        Object[] params = ctx.getParameters();
//        // Example: log login or MFA events
//        logger.info("Audit: method=" + method + ", params=" + java.util.Arrays.toString(params));
//        return ctx.proceed();
//    }
//}