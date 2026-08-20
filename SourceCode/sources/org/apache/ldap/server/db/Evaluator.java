package org.apache.ldap.server.db;

import javax.naming.NamingException;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public interface Evaluator {
    boolean evaluate(ExprNode exprNode, IndexRecord indexRecord) throws NamingException;
}
