package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.DITContentRule;
/* loaded from: classes3.dex */
public class DITContentRuleRegistryMonitorAdapter implements DITContentRuleRegistryMonitor {
    @Override // org.apache.ldap.server.schema.DITContentRuleRegistryMonitor
    public void lookedUp(DITContentRule dITContentRule) {
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistryMonitor
    public void registered(DITContentRule dITContentRule) {
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistryMonitor
    public void lookupFailed(String str, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.DITContentRuleRegistryMonitor
    public void registerFailed(DITContentRule dITContentRule, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
