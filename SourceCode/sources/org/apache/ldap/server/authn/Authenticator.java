package org.apache.ldap.server.authn;

import javax.naming.NamingException;
import org.apache.ldap.server.jndi.ServerContext;
/* loaded from: classes3.dex */
public interface Authenticator {
    LdapPrincipal authenticate(ServerContext serverContext) throws NamingException;

    AuthenticatorConfig getAuthenticatorConfig();

    String getAuthenticatorType();

    void init(AuthenticatorConfig authenticatorConfig) throws NamingException;
}
