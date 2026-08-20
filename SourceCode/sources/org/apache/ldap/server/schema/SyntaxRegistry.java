package org.apache.ldap.server.schema;

import java.util.Iterator;
import javax.naming.NamingException;
import org.apache.ldap.common.schema.Syntax;
/* loaded from: classes3.dex */
public interface SyntaxRegistry {
    String getSchemaName(String str) throws NamingException;

    boolean hasSyntax(String str);

    Iterator list();

    Syntax lookup(String str) throws NamingException;

    void register(String str, Syntax syntax) throws NamingException;
}
