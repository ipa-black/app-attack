package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.DITStructureRule;
/* loaded from: classes3.dex */
public interface DITStructureRuleRegistryMonitor {
    void lookedUp(DITStructureRule dITStructureRule);

    void lookupFailed(String str, Throwable th);

    void registerFailed(DITStructureRule dITStructureRule, Throwable th);

    void registered(DITStructureRule dITStructureRule);
}
