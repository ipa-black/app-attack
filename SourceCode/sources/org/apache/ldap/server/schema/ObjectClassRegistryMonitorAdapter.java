package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.ObjectClass;
/* loaded from: classes3.dex */
public class ObjectClassRegistryMonitorAdapter implements ObjectClassRegistryMonitor {
    @Override // org.apache.ldap.server.schema.ObjectClassRegistryMonitor
    public void lookedUp(ObjectClass objectClass) {
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistryMonitor
    public void registered(ObjectClass objectClass) {
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistryMonitor
    public void lookupFailed(String str, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.ObjectClassRegistryMonitor
    public void registerFailed(ObjectClass objectClass, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
