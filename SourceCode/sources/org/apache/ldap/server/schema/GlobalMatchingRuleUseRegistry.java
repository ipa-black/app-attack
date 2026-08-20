package org.apache.ldap.server.schema;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRuleUse;
import org.apache.ldap.common.util.JoinIterator;
import org.apache.ldap.server.SystemPartition;
import org.apache.ldap.server.schema.bootstrap.BootstrapMatchingRuleUseRegistry;
/* loaded from: classes3.dex */
public class GlobalMatchingRuleUseRegistry implements MatchingRuleUseRegistry {
    private BootstrapMatchingRuleUseRegistry bootstrap;
    private final OidRegistry oidRegistry;
    private SystemPartition systemPartition;
    private final Map byOid = new HashMap();
    private final Map oidToSchema = new HashMap();
    private MatchingRuleUseRegistryMonitor monitor = new MatchingRuleUseRegistryMonitorAdapter();

    public GlobalMatchingRuleUseRegistry(SystemPartition systemPartition, BootstrapMatchingRuleUseRegistry bootstrapMatchingRuleUseRegistry, OidRegistry oidRegistry) {
        this.oidRegistry = oidRegistry;
        this.bootstrap = bootstrapMatchingRuleUseRegistry;
        if (bootstrapMatchingRuleUseRegistry == null) {
            throw new NullPointerException("the bootstrap registry cannot be null");
        }
        this.systemPartition = systemPartition;
        if (systemPartition == null) {
            throw new NullPointerException("the system partition cannot be null");
        }
    }

    public void setMonitor(MatchingRuleUseRegistryMonitor matchingRuleUseRegistryMonitor) {
        this.monitor = matchingRuleUseRegistryMonitor;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public void register(String str, MatchingRuleUse matchingRuleUse) throws NamingException {
        if (this.byOid.containsKey(matchingRuleUse.getOid()) || this.bootstrap.hasMatchingRuleUse(matchingRuleUse.getOid())) {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(matchingRuleUse.getOid()).append(" has already been registered!").toString());
            this.monitor.registerFailed(matchingRuleUse, namingException);
            throw namingException;
        }
        this.oidRegistry.register(matchingRuleUse.getName(), matchingRuleUse.getOid());
        this.byOid.put(matchingRuleUse.getOid(), matchingRuleUse);
        this.oidToSchema.put(matchingRuleUse.getOid(), str);
        this.monitor.registered(matchingRuleUse);
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public MatchingRuleUse lookup(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.byOid.containsKey(oid)) {
            MatchingRuleUse matchingRuleUse = (MatchingRuleUse) this.byOid.get(oid);
            this.monitor.lookedUp(matchingRuleUse);
            return matchingRuleUse;
        } else if (this.bootstrap.hasMatchingRuleUse(oid)) {
            MatchingRuleUse lookup = this.bootstrap.lookup(oid);
            this.monitor.lookedUp(lookup);
            return lookup;
        } else {
            Throwable namingException = new NamingException(new StringBuffer("dITContentRule w/ OID ").append(oid).append(" not registered!").toString());
            this.monitor.lookupFailed(oid, namingException);
            throw namingException;
        }
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public boolean hasMatchingRuleUse(String str) {
        if (this.oidRegistry.hasOid(str)) {
            try {
                if (this.byOid.containsKey(this.oidRegistry.getOid(str))) {
                    return true;
                }
                return this.bootstrap.hasMatchingRuleUse(str);
            } catch (NamingException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public String getSchemaName(String str) throws NamingException {
        String oid = this.oidRegistry.getOid(str);
        if (this.oidToSchema.containsKey(oid)) {
            return (String) this.oidToSchema.get(oid);
        }
        if (this.bootstrap.hasMatchingRuleUse(oid)) {
            return this.bootstrap.getSchemaName(oid);
        }
        throw new NamingException(new StringBuffer("OID ").append(oid).append(" not found in oid to schema name map!").toString());
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistry
    public Iterator list() {
        return new JoinIterator(new Iterator[]{this.byOid.values().iterator(), this.bootstrap.list()});
    }
}
