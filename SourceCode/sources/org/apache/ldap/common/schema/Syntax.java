package org.apache.ldap.common.schema;

import javax.naming.NamingException;
/* loaded from: classes3.dex */
public interface Syntax extends SchemaObject {
    SyntaxChecker getSyntaxChecker() throws NamingException;

    boolean isHumanReadible();
}
