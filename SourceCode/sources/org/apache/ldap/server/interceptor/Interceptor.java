package org.apache.ldap.server.interceptor;

import javax.naming.NamingException;
import org.apache.ldap.server.invocation.Invocation;
/* loaded from: classes3.dex */
public interface Interceptor {
    void destroy();

    void init(InterceptorContext interceptorContext) throws NamingException;

    void process(NextInterceptor nextInterceptor, Invocation invocation) throws NamingException;
}
