package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.SyntaxChecker;
/* loaded from: classes3.dex */
public interface SyntaxCheckerRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasSyntaxChecker(String str);

    SyntaxChecker lookup(String str) throws NamingException;

    void register(String str, String str2, SyntaxChecker syntaxChecker) throws NamingException;
}
