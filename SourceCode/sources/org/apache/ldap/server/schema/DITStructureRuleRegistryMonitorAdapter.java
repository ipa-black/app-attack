package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.DITStructureRule;
/* loaded from: classes3.dex */
public class DITStructureRuleRegistryMonitorAdapter implements DITStructureRuleRegistryMonitor {
    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistryMonitor
    public void lookedUp(DITStructureRule dITStructureRule) {
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistryMonitor
    public void registered(DITStructureRule dITStructureRule) {
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistryMonitor
    public void lookupFailed(String str, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.DITStructureRuleRegistryMonitor
    public void registerFailed(DITStructureRule dITStructureRule, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
