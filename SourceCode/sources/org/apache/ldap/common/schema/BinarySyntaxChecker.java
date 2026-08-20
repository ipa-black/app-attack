package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public class BinarySyntaxChecker implements SyntaxChecker {
    public static final SyntaxChecker INSTANCE = new BinarySyntaxChecker();
    public static final String OID = "1.3.6.1.4.1.1466.115.121.1.5";

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public void assertSyntax(Object obj) throws NamingException {
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public boolean isValidSyntax(Object obj) {
        return true;
    }

    public static SyntaxChecker getSingletonInstance() {
        return INSTANCE;
    }

    private BinarySyntaxChecker() {
    }

    @Override // org.apache.ldap.common.schema.SyntaxChecker
    public String getSyntaxOid() {
        return OID;
    }
}
