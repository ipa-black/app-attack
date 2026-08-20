package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.MatchingRule;
/* loaded from: classes3.dex */
public interface MatchingRuleRegistryMonitor {
    void lookedUp(MatchingRule matchingRule);

    void lookupFailed(String str, NamingException namingException);

    void registerFailed(MatchingRule matchingRule, NamingException namingException);

    void registered(MatchingRule matchingRule);
}
