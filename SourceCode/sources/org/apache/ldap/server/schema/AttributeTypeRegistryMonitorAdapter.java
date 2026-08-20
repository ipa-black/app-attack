package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.AttributeType;
/* loaded from: classes3.dex */
public class AttributeTypeRegistryMonitorAdapter implements AttributeTypeRegistryMonitor {
    @Override // org.apache.ldap.server.schema.AttributeTypeRegistryMonitor
    public void lookedUp(AttributeType attributeType) {
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistryMonitor
    public void registered(AttributeType attributeType) {
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistryMonitor
    public void lookupFailed(String str, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.AttributeTypeRegistryMonitor
    public void registerFailed(AttributeType attributeType, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
