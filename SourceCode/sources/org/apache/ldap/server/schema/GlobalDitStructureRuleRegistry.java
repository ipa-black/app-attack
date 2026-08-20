package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.DITStructureRule;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapDitStructureRuleRegistry;
/* loaded from: classes3.dex */
public class GlobalDitStructureRuleRegistry implements DITStructureRuleRegistry {
    private BootstrapDitStructureRuleRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private DITStructureRuleRegistryMonitor monitor = new DITStructureRuleRegistryMonitorAdapter();

    public GlobalDitStructureRuleRegistry(SystemPartition systemPartition, BootstrapDitStructureRuleRegistry bootstrapDitStructureRuleRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapDitStructureRuleRegistry;
        if (bootstrapDitStructureRuleRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(DITStructureRuleRegistryMonitor dITStructureRuleRegistryMonitor) {
        this.monitor = dITStructureRuleRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public void register(String str, DITStructureRule dITStructureRule) throws NamingException {
        if (this.byOid.containsKey(dITStructureRule.getOid()) || this.bootstrap.hasDITStructureRule(dITStructureRule.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("dITStructureRule w/ OID ").append(dITStructureRule.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(dITStructureRule, namingException);
            throw namingException;
        }
        this.oidRegistry.register(dITStructureRule.getName(), dITStructureRule.getOid());
        this.byOid.put(dITStructureRule.getOid(), dITStructureRule);
        this.oidToSchema.put(dITStructureRule.getOid(), str);
        this.monitor.registered(dITStructureRule);
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public DITStructureRule lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            DITStructureRule dITStructureRule = (DITStructureRule) this.byOid.get(oid);
            this.monitor.lookedUp(dITStructureRule);
            return dITStructureRule;
        } else if (this.bootstrap.hasDITStructureRule(oid)) {
            DITStructureRule lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            Throwable namingException = new NamingException(new StringBuffer("dITStructureRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public boolean hasDITStructureRule(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasDITStructureRule(str);
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
        if (this.bootstrap.hasDITStructureRule(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
