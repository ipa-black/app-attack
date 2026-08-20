package org.apache.ldap.server.interceptor;

import org.apache.ldap.common.exception.LdapException;
import org.apache.ldap.common.exception.LdapNamingException;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.server.invocation.Invocation;
/* loaded from: classes3.dex */
public class InterceptorException extends LdapNamingException {
    private static final long serialVersionUID = 3258690996517746233L;
    private final Interceptor interceptor;
    private final Invocation invocation;

    public InterceptorException(Interceptor interceptor, Invocation invocation) {
        super(ResultCodeEnum.OTHER);
        this.invocation = invocation;
        this.interceptor = interceptor;
    }

    public InterceptorException(Interceptor interceptor, Invocation invocation, String str) {
        super(str, ResultCodeEnum.OTHER);
        this.invocation = invocation;
        this.interceptor = interceptor;
    }

    public InterceptorException(Interceptor interceptor, Invocation invocation, Throwable th) {
        this(interceptor, invocation);
        super.setRootCause(th);
    }

    public InterceptorException(Interceptor interceptor, Invocation invocation, String str, Throwable th) {
        this(interceptor, invocation, str);
        super.setRootCause(th);
    }

    public Invocation getInvocation() {
        return this.invocation;
    }

    public Interceptor getInterceptor() {
        return this.interceptor;
    }

    @Override // org.apache.ldap.common.exception.LdapNamingException, org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        if (getRootCause() != null && (getRootCause() instanceof LdapException)) {
            return ((LdapException) getRootCause()).getResultCode();
        }
        return super.getResultCode();
    }
}
