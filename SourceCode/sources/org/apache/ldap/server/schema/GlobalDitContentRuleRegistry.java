package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.DITContentRule;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapDitContentRuleRegistry;
/* loaded from: classes3.dex */
public class GlobalDitContentRuleRegistry implements DITContentRuleRegistry {
    private BootstrapDitContentRuleRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private DITContentRuleRegistryMonitor monitor = new DITContentRuleRegistryMonitorAdapter();

    public GlobalDitContentRuleRegistry(SystemPartition systemPartition, BootstrapDitContentRuleRegistry bootstrapDitContentRuleRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapDitContentRuleRegistry;
        if (bootstrapDitContentRuleRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(DITContentRuleRegistryMonitor dITContentRuleRegistryMonitor) {
        this.monitor = dITContentRuleRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public void register(String str, DITContentRule dITContentRule) throws NamingException {
        if (this.byOid.containsKey(dITContentRule.getOid()) || this.bootstrap.hasDITContentRule(dITContentRule.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(dITContentRule.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(dITContentRule, namingException);
            throw namingException;
        }
        this.oidRegistry.register(dITContentRule.getName(), dITContentRule.getOid());
        this.byOid.put(dITContentRule.getOid(), dITContentRule);
        this.oidToSchema.put(dITContentRule.getOid(), str);
        this.monitor.registered(dITContentRule);
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public DITContentRule lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            DITContentRule dITContentRule = (DITContentRule) this.byOid.get(oid);
            this.monitor.lookedUp(dITContentRule);
            return dITContentRule;
        } else if (this.bootstrap.hasDITContentRule(oid)) {
            DITContentRule lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public boolean hasDITContentRule(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasDITContentRule(str);
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        if (this.bootstrap.hasDITContentRule(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
