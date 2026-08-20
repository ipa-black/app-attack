package org.apache.kerberos.store;

import javax.naming.Name;
import javax.naming.ldap.LdapContext;
/* loaded from: classes5.dex */
public class JndiPrincipalStoreImpl implements PrincipalStore {
    public static final String KDC_STORE_SEARCHBASE = "kdc.store.searchbase";
    private LdapContext ctx;
    private Name searchBase;

    public JndiPrincipalStoreImpl(LdapContext ldapContext, Name name) {
        this.ctx = ldapContext;
        this.searchBase = name;
    }

    @Override // org.apache.kerberos.store.PrincipalStore
    public Object execute(ContextOperation contextOperation) throws Exception {
        return contextOperation.execute(this.ctx, this.searchBase);
    }

    protected LdapContext getContext() {
        return this.ctx;
    }

    protected Name getSearchBase() {
        return this.searchBase;
    }
}
