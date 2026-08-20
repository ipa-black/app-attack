package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.name.NameComponentNormalizer;
import org.apache.ldap.common.schema.Normalizer;
/* loaded from: classes3.dex */
public class ConcreteNameComponentNormalizer implements NameComponentNormalizer {
    private final AttributeTypeRegistry registry;

    public ConcreteNameComponentNormalizer(AttributeTypeRegistry attributeTypeRegistry) {
        this.registry = attributeTypeRegistry;
    }

    @Override // org.apache.ldap.common.name.NameComponentNormalizer
    public String normalizeByName(String str, String str2) throws NamingException {
        return lookup(str).normalize(str2).toString();
    }

    @Override // org.apache.ldap.common.name.NameComponentNormalizer
    public String normalizeByOid(String str, String str2) throws NamingException {
        return lookup(str).normalize(str2).toString();
    }

    private Normalizer lookup(String str) throws NamingException {
        return this.registry.lookup(str).getEquality().getNormalizer();
    }
}
