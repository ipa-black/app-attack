package org.apache.ldap.common.schema;

import javax.naming.Name;
import javax.naming.NameParser;
import javax.naming.NamingException;
import org.apache.ldap.common.name.DnParser;
/* loaded from: classes3.dex */
public class DnSyntaxChecker implements SyntaxChecker {
    private final String oid;
    private NameParser parser = new DnParser();

    public DnSyntaxChecker(String str) throws NamingException {
        this.oid = str;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public String getSyntaxOid() {
        return this.oid;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public boolean isValidSyntax(Object obj) {
        if (obj instanceof Name) {
            return true;
        }
        if (obj instanceof String) {
            try {
                this.parser.parse((String) obj);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public void assertSyntax(Object obj) throws NamingException {
        if (obj instanceof Name) {
            return;
        }
        if (obj instanceof String) {
            this.parser.parse((String) obj);
        }
        throw new NamingException(new StringBuffer("Do not know how syntax check instances of ").append(obj.getClass()).toString());
    }
}
