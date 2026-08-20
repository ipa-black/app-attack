package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapAttributeTypeRegistry;
/* loaded from: classes3.dex */
public class GlobalAttributeTypeRegistry implements AttributeTypeRegistry {
    private BootstrapAttributeTypeRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private AttributeTypeRegistryMonitor monitor = new AttributeTypeRegistryMonitorAdapter();

    public GlobalAttributeTypeRegistry(SystemPartition systemPartition, BootstrapAttributeTypeRegistry bootstrapAttributeTypeRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        if (oidRegistry == null) {
            throw new NullPointerException("the OID registry cannot be null");
        }
        this.bootstrap = bootstrapAttributeTypeRegistry;
        if (bootstrapAttributeTypeRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(AttributeTypeRegistryMonitor attributeTypeRegistryMonitor) {
        this.monitor = attributeTypeRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public void register(String str, AttributeType attributeType) throws NamingException {
        if (this.byOid.containsKey(attributeType.getOid()) || this.bootstrap.hasAttributeType(attributeType.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("attributeType w/ OID ").append(attributeType.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(attributeType, namingException);
            throw namingException;
        }
        for (String str2 : attributeType.getNames()) {
            this.oidRegistry.register(str2, attributeType.getOid());
        }
        this.oidToSchema.put(attributeType.getOid(), str);
        this.byOid.put(attributeType.getOid(), attributeType);
        this.monitor.registered(attributeType);
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public AttributeType lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (!this.byOid.containsKey(oid) && !this.bootstrap.hasAttributeType(oid)) {
            Throwable namingException = new NamingException(new StringBuffer("attributeType w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
        AttributeType attributeType = (AttributeType) this.byOid.get(oid);
        if (attributeType == null) {
            attributeType = this.bootstrap.lookup(oid);
        }
        this.monitor.lookedUp(attributeType);
        return attributeType;
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public boolean hasAttributeType(String str) {
        try {
            if (this.oidRegistry.hasOid(str)) {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasAttributeType(str);
            }
        } catch (NamingException unused) {
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        if (this.bootstrap.getSchemaName(oid) != null) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
