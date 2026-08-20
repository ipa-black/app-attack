package org.apache.ldap.server.interceptor;

import javax.naming.NamingException;
import org.apache.ldap.server.invocation.Invocation;
/* loaded from: classes3.dex */
public interface NextInterceptor {
    void process(Invocation invocation) throws NamingException;
}
