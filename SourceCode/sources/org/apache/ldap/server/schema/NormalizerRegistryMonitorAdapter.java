package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
/* loaded from: classes3.dex */
public class NormalizerRegistryMonitorAdapter implements NormalizerRegistryMonitor {
    @Override // org.apache.ldap.server.schema.NormalizerRegistryMonitor
    public void lookedUp(String str, Normalizer normalizer) {
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistryMonitor
    public void registered(String str, Normalizer normalizer) {
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistryMonitor
    public void lookupFailed(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.NormalizerRegistryMonitor
    public void registerFailed(String str, Normalizer normalizer, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }
}
