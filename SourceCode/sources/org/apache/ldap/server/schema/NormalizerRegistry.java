package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
/* loaded from: classes3.dex */
public interface NormalizerRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasNormalizer(String str);

    Normalizer lookup(String str) throws NamingException;

    void register(String str, String str2, Normalizer normalizer) throws NamingException;
}
