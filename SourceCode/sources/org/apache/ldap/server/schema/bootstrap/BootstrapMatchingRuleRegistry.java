package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRule;
import org.apache.ldap.server.schema.MatchingRuleRegistry;
import org.apache.ldap.server.schema.MatchingRuleRegistryMonitor;
import org.apache.ldap.server.schema.MatchingRuleRegistryMonitorAdapter;
import org.apache.ldap.server.schema.OidRegistry;
/* loaded from: classes3.dex */
public class BootstrapMatchingRuleRegistry implements MatchingRuleRegistry {
    private MatchingRuleRegistryMonitor monitor;
    private final OidRegistry oidRegistry;
    private final Map oidToSchema = new HashMap();
    private final Map byOid = new HashMap();

    public BootstrapMatchingRuleRegistry(OidRegistry oidRegistry) {
        this.monitor = null;
        this.oidRegistry = oidRegistry;
        this.monitor = new MatchingRuleRegistryMonitorAdapter();
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public MatchingRule lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            MatchingRule matchingRule = (MatchingRule) this.byOid.get(oid);
            this.monitor.lookedUp(matchingRule);
            return matchingRule;
        }
        NamingException namingException = new NamingException(new StringBuffer("Unknown MatchingRule OID ").append(oid).toString());
        this.monitor.lookupFailed(oid, namingException);
        throw namingException;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public void register(String str, MatchingRule matchingRule) throws NamingException {
        if (this.byOid.containsKey(matchingRule.getOid())) {
            NamingException namingException = new NamingException(new StringBuffer("matchingRule w/ OID ").append(matchingRule.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(matchingRule, namingException);
            throw namingException;
        }
        this.oidToSchema.put(matchingRule.getOid(), str);
        for (String str2 : matchingRule.getNames()) {
            this.oidRegistry.register(str2, matchingRule.getOid());
        }
        this.byOid.put(matchingRule.getOid(), matchingRule);
        this.monitor.registered(matchingRule);
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public boolean hasMatchingRule(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                return this.byOid.containsKey(this.oidRegistry.getOid(str));
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
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    MatchingRuleRegistryMonitor getMonitor() {
        return this.monitor;
    }

    void setMonitor(MatchingRuleRegistryMonitor matchingRuleRegistryMonitor) {
        this.monitor = matchingRuleRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistry
    public Iterator list() {
        return this.byOid.values().iterator();
    }
}
