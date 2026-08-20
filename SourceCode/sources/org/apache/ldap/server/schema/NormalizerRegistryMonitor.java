package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
/* loaded from: classes3.dex */
public interface NormalizerRegistryMonitor {
    void lookedUp(String str, Normalizer normalizer);

    void lookupFailed(String str, NamingException namingException);

    void registerFailed(String str, Normalizer normalizer, NamingException namingException);

    void registered(String str, Normalizer normalizer);
}
