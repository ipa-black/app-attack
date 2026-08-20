package org.apache.ldap.common.filter;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public interface FilterVisitor {
    boolean canVisit(ExprNode exprNode);

    ArrayList getOrder(BranchNode branchNode, ArrayList arrayList);

    boolean isPrefix();

    void visit(ExprNode exprNode);
}
