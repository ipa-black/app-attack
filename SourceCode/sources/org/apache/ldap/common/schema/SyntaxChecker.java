package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface SyntaxChecker {
    void assertSyntax(Object obj) throws NamingException;

    String getSyntaxOid();

    boolean isValidSyntax(Object obj);
}
