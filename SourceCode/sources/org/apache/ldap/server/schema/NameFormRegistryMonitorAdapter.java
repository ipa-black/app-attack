package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.NameForm;
/* loaded from: classes3.dex */
public class NameFormRegistryMonitorAdapter implements NameFormRegistryMonitor {
    @Override // org.apache.ldap.server.schema.NameFormRegistryMonitor
    public void lookedUp(NameForm nameForm) {
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistryMonitor
    public void registered(NameForm nameForm) {
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistryMonitor
    public void lookupFailed(String str, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.NameFormRegistryMonitor
    public void registerFailed(NameForm nameForm, Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }
}
