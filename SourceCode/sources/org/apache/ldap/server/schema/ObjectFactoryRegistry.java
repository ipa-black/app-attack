package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.server.jndi.ServerDirObjectFactory;
/* loaded from: classes3.dex */
public interface ObjectFactoryRegistry {
    ServerDirObjectFactory getObjectFactories(LdapContext ldapContext) throws NamingException;

    void register(ServerDirObjectFactory serverDirObjectFactory) throws NamingException;
}
