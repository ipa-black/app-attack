package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.SyntaxChecker;
/* loaded from: classes3.dex */
public class SyntaxCheckerRegistryMonitorAdapter implements SyntaxCheckerRegistryMonitor {
    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistryMonitor
    public void lookedUp(String str, SyntaxChecker syntaxChecker) {
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistryMonitor
    public void registered(String str, SyntaxChecker syntaxChecker) {
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistryMonitor
    public void lookupFailed(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.SyntaxCheckerRegistryMonitor
    public void registerFailed(String str, SyntaxChecker syntaxChecker, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }
}
