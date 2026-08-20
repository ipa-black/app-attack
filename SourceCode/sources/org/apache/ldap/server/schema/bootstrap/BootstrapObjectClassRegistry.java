package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.server.schema.ObjectClassRegistry;
import org.apache.ldap.server.schema.ObjectClassRegistryMonitor;
import org.apache.ldap.server.schema.ObjectClassRegistryMonitorAdapter;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapObjectClassRegistry implements ObjectClassRegistry {
    private final OidRegistry oidRegistry;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private ObjectClassRegistryMonitor monitor = new ObjectClassRegistryMonitorAdapter();

    public BootstrapObjectClassRegistry(OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
    }

    public void setMonitor(ObjectClassRegistryMonitor objectClassRegistryMonitor) {
        this.monitor = objectClassRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public void register(String str, ObjectClass objectClass) throws NamingException {
        if (this.byOid.containsKey(objectClass.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("objectClass w/ OID ").append(objectClass.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(objectClass, namingException);
            throw namingException;
        }
        this.oidRegistry.register(objectClass.getName(), objectClass.getOid());
        this.byOid.put(objectClass.getOid(), objectClass);
        this.oidToSchema.put(objectClass.getOid(), str);
        this.monitor.registered(objectClass);
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public ObjectClass lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (!this.byOid.containsKey(oid)) {
            Throwable namingException = new NamingException(new StringBuffer("objectClass w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
        ObjectClass objectClass = (ObjectClass) this.byOid.get(oid);
        this.monitor.lookedUp(objectClass);
        return objectClass;
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public boolean hasObjectClass(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
