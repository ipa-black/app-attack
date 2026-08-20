package org.apache.ldap.server;

import java.util.Hashtable;
import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
/* loaded from: classes3.dex */
public interface BackendSubsystem {
    LdapContext getLdapContext(Hashtable hashtable) throws NamingException;

    void shutdown() throws NamingException;

    void sync() throws NamingException;
}
