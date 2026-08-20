package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.SyntaxChecker;
/* loaded from: classes3.dex */
public interface SyntaxCheckerRegistryMonitor {
    void lookedUp(String str, SyntaxChecker syntaxChecker);

    void lookupFailed(String str, NamingException namingException);

    void registerFailed(String str, SyntaxChecker syntaxChecker, NamingException namingException);

    void registered(String str, SyntaxChecker syntaxChecker);
}
