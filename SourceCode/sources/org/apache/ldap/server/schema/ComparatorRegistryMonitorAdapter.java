package org.apache.ldap.server.schema;

import java.util.Comparator;
import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class ComparatorRegistryMonitorAdapter implements ComparatorRegistryMonitor {
    @Override // org.apache.ldap.server.schema.ComparatorRegistryMonitor
    public void lookedUp(String str, Comparator comparator) {
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistryMonitor
    public void registered(String str, Comparator comparator) {
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistryMonitor
    public void lookupFailed(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.ComparatorRegistryMonitor
    public void registerFailed(String str, Comparator comparator, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }
}
