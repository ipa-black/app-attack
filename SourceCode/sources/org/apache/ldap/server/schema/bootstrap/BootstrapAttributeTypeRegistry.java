package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.AttributeType;
import org.apache.ldap.server.schema.AttributeTypeRegistry;
import org.apache.ldap.server.schema.AttributeTypeRegistryMonitor;
import org.apache.ldap.server.schema.AttributeTypeRegistryMonitorAdapter;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapAttributeTypeRegistry implements AttributeTypeRegistry {
    private final OidRegistry oidRegistry;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private AttributeTypeRegistryMonitor monitor = new AttributeTypeRegistryMonitorAdapter();

    public BootstrapAttributeTypeRegistry(OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
    }

    public void setMonitor(AttributeTypeRegistryMonitor attributeTypeRegistryMonitor) {
        this.monitor = attributeTypeRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public void register(String str, AttributeType attributeType) throws NamingException {
        if (this.byOid.containsKey(attributeType.getOid())) {
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
        if (!this.byOid.containsKey(oid)) {
            Throwable namingException = new NamingException(new StringBuffer("attributeType w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
        AttributeType attributeType = (AttributeType) this.byOid.get(oid);
        this.monitor.lookedUp(attributeType);
        return attributeType;
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public boolean hasAttributeType(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
