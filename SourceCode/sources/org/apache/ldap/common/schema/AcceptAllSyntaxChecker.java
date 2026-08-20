package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class AcceptAllSyntaxChecker implements SyntaxChecker {
    private final String oid;

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public void assertSyntax(Object obj) throws NamingException {
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public boolean isValidSyntax(Object obj) {
        return true;
    }

    public AcceptAllSyntaxChecker(String str) {
        this.oid = str;
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public String getSyntaxOid() {
        return this.oid;
    }
}
