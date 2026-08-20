package org.apache.ldap.server.db;

import javax.naming.NamingException;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface Optimizer {
    void annotate(ExprNode exprNode) throws NamingException;
}
