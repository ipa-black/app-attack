package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.DITContentRule;
/* loaded from: classes3.dex */
public interface DITContentRuleRegistryMonitor {
    void lookedUp(DITContentRule dITContentRule);

    void lookupFailed(String str, Throwable th);

    void registerFailed(DITContentRule dITContentRule, Throwable th);

    void registered(DITContentRule dITContentRule);
}
