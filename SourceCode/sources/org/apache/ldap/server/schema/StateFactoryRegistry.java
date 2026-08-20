package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.server.jndi.ServerDirStateFactory;
/* loaded from: classes3.dex */
public interface StateFactoryRegistry {
    ServerDirStateFactory getStateFactories(Object obj) throws NamingException;

    void register(ServerDirStateFactory serverDirStateFactory);
}
