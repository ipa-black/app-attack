package org.apache.ldap.server.schema;

import org.apache.ldap.common.schema.AttributeType;
/* loaded from: classes3.dex */
public interface AttributeTypeRegistryMonitor {
    void lookedUp(AttributeType attributeType);

    void lookupFailed(String str, Throwable th);

    void registerFailed(AttributeType attributeType, Throwable th);

    void registered(AttributeType attributeType);
}
