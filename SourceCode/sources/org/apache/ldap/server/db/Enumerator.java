package org.apache.ldap.server.db;

import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface Enumerator {
    NamingEnumeration enumerate(ExprNode exprNode) throws NamingException;
}
