package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRule;
/* loaded from: classes3.dex */
public class MatchingRuleRegistryMonitorAdapter implements MatchingRuleRegistryMonitor {
    @Override // org.apache.ldap.server.schema.MatchingRuleRegistryMonitor
    public void lookedUp(MatchingRule matchingRule) {
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistryMonitor
    public void registered(MatchingRule matchingRule) {
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistryMonitor
    public void lookupFailed(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleRegistryMonitor
    public void registerFailed(MatchingRule matchingRule, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }
}
