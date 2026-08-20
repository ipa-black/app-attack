package org.apache.ldap.server.authn;

import java.util.Enumeration;
import javax.naming.NamingException;
import org.apache.ldap.common.name.LdapName;
import org.apache.ldap.server.jndi.ServerContext;
/* loaded from: classes3.dex */
public abstract class AbstractAuthenticator implements Authenticator, AuthenticatorConfig {
    public AuthenticatorConfig authenticatorConfig;
    public String authenticatorType;

    @Override // org.apache.ldap.server.authn.Authenticator
    public abstract LdapPrincipal authenticate(ServerContext serverContext) throws NamingException;

    public void init() throws NamingException {
    }

    public AbstractAuthenticator(String str) {
        this.authenticatorType = str;
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public AuthenticatorContext getAuthenticatorContext() {
        return this.authenticatorConfig.getAuthenticatorContext();
    }

    @Override // org.apache.ldap.server.authn.Authenticator
    public String getAuthenticatorType() {
        return this.authenticatorType;
    }

    @Override // org.apache.ldap.server.authn.Authenticator
    public AuthenticatorConfig getAuthenticatorConfig() {
        return this.authenticatorConfig;
    }

    @Override // org.apache.ldap.server.authn.Authenticator
    public void init(AuthenticatorConfig authenticatorConfig) throws NamingException {
        this.authenticatorConfig = authenticatorConfig;
        init();
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public String getAuthenticatorName() {
        return this.authenticatorConfig.getAuthenticatorName();
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public String getInitParameter(String str) {
        return this.authenticatorConfig.getInitParameter(str);
    }

    @Override // org.apache.ldap.server.authn.AuthenticatorConfig
    public Enumeration getInitParameterNames() {
        return this.authenticatorConfig.getInitParameterNames();
    }

    protected LdapPrincipal createLdapPrincipal(String str) throws NamingException {
        return new LdapPrincipal(new LdapName(str));
    }
}
