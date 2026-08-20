package org.apache.ldap.common.filter;
/* loaded from: classes3.dex */
public interface ExprNode {
    void accept(FilterVisitor filterVisitor);

    Object get(Object obj);

    boolean isLeaf();

    void printToBuffer(StringBuffer stringBuffer);

    void set(Object obj, Object obj2);
}
