package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.NameForm;
/* loaded from: classes3.dex */
public interface NameFormRegistryMonitor {
    void lookedUp(NameForm nameForm);

    void lookupFailed(String str, Throwable th);

    void registerFailed(NameForm nameForm, Throwable th);

    void registered(NameForm nameForm);
}
