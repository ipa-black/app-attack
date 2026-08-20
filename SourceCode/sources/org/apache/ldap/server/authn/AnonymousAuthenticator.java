package org.apache.ldap.server.authn;

import javax.naming.NamingException;
import org.apache.ldap.common.exception.LdapNoPermissionException;
import org.apache.ldap.server.jndi.ServerContext;
/* loaded from: classes3.dex */
public class AnonymousAuthenticator extends AbstractAuthenticator {
    public AnonymousAuthenticator() {
        super("none");
    }

    @Override // org.apache.ldap.server.authn.AbstractAuthenticator, org.apache.ldap.server.authn.Authenticator
    public LdapPrincipal authenticate(ServerContext serverContext) throws NamingException {
        if (getAuthenticatorContext().getAllowAnonymous()) {
            return LdapPrincipal.ANONYMOUS;
        }
        throw new LdapNoPermissionException("Anonymous bind NOT permitted!");
    }
}
