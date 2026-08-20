package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.DITStructureRule;
import org.apache.ldap.server.schema.DITStructureRuleRegistry;
import org.apache.ldap.server.schema.DITStructureRuleRegistryMonitor;
import org.apache.ldap.server.schema.DITStructureRuleRegistryMonitorAdapter;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapDitStructureRuleRegistry implements DITStructureRuleRegistry {
    private final OidRegistry oidRegistry;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private DITStructureRuleRegistryMonitor monitor = new DITStructureRuleRegistryMonitorAdapter();

    public BootstrapDitStructureRuleRegistry(OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
    }

    public void setMonitor(DITStructureRuleRegistryMonitor dITStructureRuleRegistryMonitor) {
        this.monitor = dITStructureRuleRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public void register(String str, DITStructureRule dITStructureRule) throws NamingException {
        if (this.byOid.containsKey(dITStructureRule.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("dITStructureRule w/ OID ").append(dITStructureRule.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(dITStructureRule, namingException);
            throw namingException;
        }
        this.oidToSchema.put(dITStructureRule.getOid(), str);
        this.oidRegistry.register(dITStructureRule.getName(), dITStructureRule.getOid());
        this.byOid.put(dITStructureRule.getOid(), dITStructureRule);
        this.monitor.registered(dITStructureRule);
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public DITStructureRule lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (!this.byOid.containsKey(oid)) {
            Throwable namingException = new NamingException(new StringBuffer("dITStructureRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
        DITStructureRule dITStructureRule = (DITStructureRule) this.byOid.get(oid);
        this.monitor.lookedUp(dITStructureRule);
        return dITStructureRule;
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public boolean hasDITStructureRule(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
