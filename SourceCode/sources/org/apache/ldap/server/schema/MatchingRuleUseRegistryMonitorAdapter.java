package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.MatchingRuleUse;
/* loaded from: classes3.dex */
public class MatchingRuleUseRegistryMonitorAdapter implements MatchingRuleUseRegistryMonitor {
    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistryMonitor
    public void lookedUp(MatchingRuleUse matchingRuleUse) {
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistryMonitor
    public void registered(MatchingRuleUse matchingRuleUse) {
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistryMonitor
    public void lookupFailed(String str, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.MatchingRuleUseRegistryMonitor
    public void registerFailed(MatchingRuleUse matchingRuleUse, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
