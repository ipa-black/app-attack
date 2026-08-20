package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.ldap.LdapContext;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.apache.ldap.server.jndi.ServerDirObjectFactory;
import org.apache.ldap.server.schema.ObjectFactoryRegistry;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapObjectFactoryRegistry implements ObjectFactoryRegistry {
    private final HashMap byOid = new HashMap();
    private final OidRegistry oidRegistry;

    public BootstrapObjectFactoryRegistry(OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
    }

    @Override // org.apache.ldap.server.schema.ObjectFactoryRegistry
    public ServerDirObjectFactory getObjectFactories(LdapContext ldapContext) throws NamingException {
        Attribute attribute = ldapContext.getAttributes("").get(JavaLdapSupport.OBJECTCLASS_ATTR);
        if (attribute == null) {
            return null;
        }
        if (ldapContext.getEnvironment().containsKey("factory.hint")) {
            String oid = this.oidRegistry.getOid((String) ldapContext.getEnvironment().get("factory.hint"));
            if (this.byOid.containsKey(oid)) {
                return (ServerDirObjectFactory) this.byOid.get(oid);
            }
        }
        for (int i = 0; i < attribute.size(); i++) {
            String oid2 = this.oidRegistry.getOid((String) attribute.get(i));
            if (this.byOid.containsKey(oid2)) {
                return (ServerDirObjectFactory) this.byOid.get(oid2);
            }
        }
        return null;
    }

    @Override // org.apache.ldap.server.schema.ObjectFactoryRegistry
    public void register(ServerDirObjectFactory serverDirObjectFactory) throws NamingException {
        this.byOid.put(this.oidRegistry.getOid(serverDirObjectFactory.getObjectClassId()), serverDirObjectFactory);
    }
}
