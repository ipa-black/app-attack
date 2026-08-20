package org.apache.ldap.common.schema;

import javax.naming.Name;
import javax.naming.NameParser;
import javax.naming.NamingException;
import org.apache.ldap.common.name.DnParser;
import org.apache.ldap.common.name.NameComponentNormalizer;
import org.apache.ldap.common.name.SimpleNameComponentNormalizer;
/* loaded from: classes3.dex */
public class DnNormalizer implements Normalizer {
    private NameParser parser;

    public DnNormalizer() throws NamingException {
        this(new SimpleNameComponentNormalizer(new DeepTrimToLowerNormalizer()));
    }

    public DnNormalizer(Normalizer normalizer) throws NamingException {
        this(new SimpleNameComponentNormalizer(normalizer));
    }

    public DnNormalizer(NameComponentNormalizer nameComponentNormalizer) throws NamingException {
        this.parser = null;
        this.parser = new DnParser(nameComponentNormalizer);
    }

    @Override // org.apache.ldap.common.schema.Normalizer
    public Object normalize(Object obj) throws NamingException {
        String str;
        if (obj instanceof Name) {
            str = obj.toString();
        } else {
            str = obj instanceof String ? (String) obj : null;
        }
        return this.parser.parse(str).toString();
    }
}
