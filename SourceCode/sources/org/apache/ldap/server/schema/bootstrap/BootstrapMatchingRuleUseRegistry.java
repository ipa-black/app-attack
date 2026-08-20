package org.apache.ldap.server.schema.bootstrap;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRuleUse;
import org.apache.ldap.server.schema.MatchingRuleUseRegistry;
import org.apache.ldap.server.schema.MatchingRuleUseRegistryMonitor;
import org.apache.ldap.server.schema.MatchingRuleUseRegistryMonitorAdapter;
/* loaded from: classes3.dex */
public class BootstrapMatchingRuleUseRegistry implements MatchingRuleUseRegistry {
    private final Map byName = new HashMap();
    private final Map nameToSchema = new HashMap();
    private MatchingRuleUseRegistryMonitor monitor = new MatchingRuleUseRegistryMonitorAdapter();

    public void setMonitor(MatchingRuleUseRegistryMonitor matchingRuleUseRegistryMonitor) {
        this.monitor = matchingRuleUseRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public void register(String str, MatchingRuleUse matchingRuleUse) throws NamingException {
        if (this.byName.containsKey(matchingRuleUse.getName())) {
            Throwable namingException = new NamingException(new StringBuffer("matchingRuleUse w/ name ").append(matchingRuleUse.getName()).append(" has already been registered!").toString());
            this.monitor.registerFailed(matchingRuleUse, namingException);
            throw namingException;
        }
        this.nameToSchema.put(matchingRuleUse.getName(), str);
        this.byName.put(matchingRuleUse.getName(), matchingRuleUse);
        this.monitor.registered(matchingRuleUse);
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public MatchingRuleUse lookup(String str) throws NamingException {
        if (!this.byName.containsKey(str)) {
            Throwable namingException = new NamingException(new StringBuffer("matchingRuleUse w/ name ").append(str).append(" not registered!").toString());
            this.monitor.lookupFailed(str, namingException);
            throw namingException;
        }
        MatchingRuleUse matchingRuleUse = (MatchingRuleUse) this.byName.get(str);
        this.monitor.lookedUp(matchingRuleUse);
        return matchingRuleUse;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public boolean hasMatchingRuleUse(String str) {
        return this.byName.containsKey(str);
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public String getSchemaName(String str) throws NamingException {
        if (this.nameToSchema.containsKey(str)) {
            return (String) this.nameToSchema.get(str);
        }
        throw new NamingException(new StringBuffer("Name ").append(str).append(" not found in name to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public Iterator list() {
        return this.byName.values().iterator();
    }
}
