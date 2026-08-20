package org.apache.ldap.server.authn;

import java.io.Serializable;
import java.security.Principal;
import javax.naming.Name;
import org.apache.ldap.common.name.LdapName;
/* loaded from: classes3.dex */
public final class LdapPrincipal implements Principal, Serializable {
    public static final LdapPrincipal ANONYMOUS = new LdapPrincipal();
    private static final long serialVersionUID = 3906650782395676720L;
    private final Name name;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LdapPrincipal(Name name) {
        this.name = name;
    }

    private LdapPrincipal() {
        this.name = new LdapName();
    }

    public Name getDn() {
        return (Name) this.name.clone();
    }

    @Override // java.security.Principal
    public String getName() {
        return this.name.toString();
    }
}
