package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.ObjectClass;
/* loaded from: classes3.dex */
public interface ObjectClassRegistryMonitor {
    void lookedUp(ObjectClass objectClass);

    void lookupFailed(String str, Throwable th);

    void registerFailed(ObjectClass objectClass, Throwable th);

    void registered(ObjectClass objectClass);
}
