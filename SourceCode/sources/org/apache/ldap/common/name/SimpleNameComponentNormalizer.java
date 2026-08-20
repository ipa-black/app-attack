package org.apache.ldap.common.name;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.Normalizer;
/* loaded from: classes3.dex */
public class SimpleNameComponentNormalizer implements NameComponentNormalizer {
    private final Normalizer normalizer;

    public SimpleNameComponentNormalizer(Normalizer normalizer) {
        this.normalizer = normalizer;
    }

    @Override // org.apache.ldap.common.name.NameComponentNormalizer
    public String normalizeByName(String str, String str2) throws NamingException {
        return this.normalizer.normalize(str2).toString();
    }

    @Override // org.apache.ldap.common.name.NameComponentNormalizer
    public String normalizeByOid(String str, String str2) throws NamingException {
        return this.normalizer.normalize(str2).toString();
    }
}
