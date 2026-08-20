package org.apache.ldap.common.schema;

import java.util.Comparator;
import javax.naming.Name;
import javax.naming.NameParser;
import javax.naming.NamingException;
import org.apache.ldap.common.name.DnParser;
import org.apache.ldap.common.name.NameComponentNormalizer;
/* loaded from: classes3.dex */
public class DnComparator implements Comparator {
    private NameParser parser;

    public DnComparator() throws NamingException {
        this.parser = new DnParser();
    }

    public DnComparator(NameComponentNormalizer nameComponentNormalizer) throws NamingException {
        this.parser = new DnParser(nameComponentNormalizer);
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        Name parse;
        Name parse2;
        if (obj instanceof Name) {
            parse = (Name) obj;
        } else if (obj instanceof String) {
            try {
                parse = this.parser.parse((String) obj);
            } catch (NamingException unused) {
                throw new IllegalArgumentException("first argument was not a distinguished name");
            }
        } else {
            throw new IllegalArgumentException("first argument was not a distinguished name");
        }
        if (obj2 instanceof Name) {
            parse2 = (Name) obj2;
        } else if (obj2 instanceof String) {
            try {
                parse2 = this.parser.parse((String) obj2);
            } catch (NamingException unused2) {
                throw new IllegalArgumentException("second argument was not a distinguished name");
            }
        } else {
            throw new IllegalArgumentException("second argument was not a distinguished name");
        }
        return parse.compareTo(parse2);
    }
}
