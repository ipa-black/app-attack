package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.Syntax;
/* loaded from: classes3.dex */
public class SyntaxRegistryMonitorAdapter implements SyntaxRegistryMonitor {
    @Override // org.apache.ldap.server.schema.SyntaxRegistryMonitor
    public void lookedUp(Syntax syntax) {
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistryMonitor
    public void registered(Syntax syntax) {
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistryMonitor
    public void lookupFailed(String str, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }

    @Override // org.apache.ldap.server.schema.SyntaxRegistryMonitor
    public void registerFailed(Syntax syntax, NamingException namingException) {
        if (namingException != null) {
            namingException.printStackTrace();
        }
    }
}
