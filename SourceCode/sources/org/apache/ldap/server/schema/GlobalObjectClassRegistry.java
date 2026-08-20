package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.ObjectClass;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapObjectClassRegistry;
/* loaded from: classes3.dex */
public class GlobalObjectClassRegistry implements ObjectClassRegistry {
    private BootstrapObjectClassRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private ObjectClassRegistryMonitor monitor = new ObjectClassRegistryMonitorAdapter();

    public GlobalObjectClassRegistry(SystemPartition systemPartition, BootstrapObjectClassRegistry bootstrapObjectClassRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapObjectClassRegistry;
        if (bootstrapObjectClassRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(ObjectClassRegistryMonitor objectClassRegistryMonitor) {
        this.monitor = objectClassRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public void register(String str, ObjectClass objectClass) throws NamingException {
        if (this.byOid.containsKey(objectClass.getOid()) || this.bootstrap.hasObjectClass(objectClass.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(objectClass.getOid()).append(" has already been registered!").toString());
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
        if (this.byOid.containsKey(oid)) {
            ObjectClass objectClass = (ObjectClass) this.byOid.get(oid);
            this.monitor.lookedUp(objectClass);
            return objectClass;
        } else if (this.bootstrap.hasObjectClass(oid)) {
            ObjectClass lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public boolean hasObjectClass(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasObjectClass(str);
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
        if (this.bootstrap.hasObjectClass(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
