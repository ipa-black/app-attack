package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.DITContentRule;
import org.apache.ldap.server.schema.DITContentRuleRegistry;
import org.apache.ldap.server.schema.DITContentRuleRegistryMonitor;
import org.apache.ldap.server.schema.DITContentRuleRegistryMonitorAdapter;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapDitContentRuleRegistry implements DITContentRuleRegistry {
    private final OidRegistry oidRegistry;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private DITContentRuleRegistryMonitor monitor = new DITContentRuleRegistryMonitorAdapter();

    public BootstrapDitContentRuleRegistry(OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
    }

    public void setMonitor(DITContentRuleRegistryMonitor dITContentRuleRegistryMonitor) {
        this.monitor = dITContentRuleRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public void register(String str, DITContentRule dITContentRule) throws NamingException {
        if (this.byOid.containsKey(dITContentRule.getOid())) {
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
        if (!this.byOid.containsKey(oid)) {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
        DITContentRule dITContentRule = (DITContentRule) this.byOid.get(oid);
        this.monitor.lookedUp(dITContentRule);
        return dITContentRule;
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public boolean hasDITContentRule(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
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
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
