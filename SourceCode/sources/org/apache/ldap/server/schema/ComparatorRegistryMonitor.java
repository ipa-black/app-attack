package org.apache.ldap.server.schema;

import java.util.Comparator;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface ComparatorRegistryMonitor {
    void lookedUp(String str, Comparator comparator);

    void lookupFailed(String str, NamingException namingException);

    void registerFailed(String str, Comparator comparator, NamingException namingException);

    void registered(String str, Comparator comparator);
}
