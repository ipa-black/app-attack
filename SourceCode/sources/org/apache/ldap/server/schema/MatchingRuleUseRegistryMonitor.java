package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.MatchingRuleUse;
/* loaded from: classes3.dex */
public interface MatchingRuleUseRegistryMonitor {
    void lookedUp(MatchingRuleUse matchingRuleUse);

    void lookupFailed(String str, Throwable th);

    void registerFailed(MatchingRuleUse matchingRuleUse, Throwable th);

    void registered(MatchingRuleUse matchingRuleUse);
}
