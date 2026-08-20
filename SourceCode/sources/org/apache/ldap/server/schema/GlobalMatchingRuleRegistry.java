package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapMatchingRuleRegistry;
/* loaded from: classes3.dex */
public class GlobalMatchingRuleRegistry implements MatchingRuleRegistry {
    private BootstrapMatchingRuleRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private MatchingRuleRegistryMonitor monitor = new MatchingRuleRegistryMonitorAdapter();

    public GlobalMatchingRuleRegistry(SystemPartition systemPartition, BootstrapMatchingRuleRegistry bootstrapMatchingRuleRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapMatchingRuleRegistry;
        if (bootstrapMatchingRuleRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(MatchingRuleRegistryMonitor matchingRuleRegistryMonitor) {
        this.monitor = matchingRuleRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public void register(String str, MatchingRule matchingRule) throws NamingException {
        if (this.byOid.containsKey(matchingRule.getOid()) || this.bootstrap.hasMatchingRule(matchingRule.getOid())) {
            NamingException namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(matchingRule.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(matchingRule, namingException);
            throw namingException;
        }
        this.oidRegistry.register(matchingRule.getName(), matchingRule.getOid());
        this.byOid.put(matchingRule.getOid(), matchingRule);
        this.oidToSchema.put(matchingRule.getOid(), str);
        this.monitor.registered(matchingRule);
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public MatchingRule lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            MatchingRule matchingRule = (MatchingRule) this.byOid.get(oid);
            this.monitor.lookedUp(matchingRule);
            return matchingRule;
        } else if (this.bootstrap.hasMatchingRule(oid)) {
            MatchingRule lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            NamingException namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public boolean hasMatchingRule(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasMatchingRule(str);
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        if (this.bootstrap.hasMatchingRule(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
