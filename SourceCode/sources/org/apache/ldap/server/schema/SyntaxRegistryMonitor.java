package org.apache.ldap.server.schema;

import javax.naming.NamingException;
import org.apache.ldap.common.schema.Syntax;
/* loaded from: classes3.dex */
public interface SyntaxRegistryMonitor {
    void lookedUp(Syntax syntax);

    void lookupFailed(String str, NamingException namingException);

    void registerFailed(Syntax syntax, NamingException namingException);

    void registered(Syntax syntax);
}
