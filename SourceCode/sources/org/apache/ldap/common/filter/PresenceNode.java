package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
/* loaded from: classes3.dex */
public final class PresenceNode extends LeafNode {
    public PresenceNode(String str) {
        super(str, 1);
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        stringBuffer.append('(').append(getAttribute()).append("=*");
        stringBuffer.append(')');
        if (getAnnotations() != null && getAnnotations().containsKey(NewHtcHomeBadger.COUNT)) {
            stringBuffer.append('[');
            stringBuffer.append(getAnnotations().get(NewHtcHomeBadger.COUNT).toString());
            stringBuffer.append("] ");
            return;
        }
        stringBuffer.append(' ');
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        printToBuffer(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void accept(FilterVisitor filterVisitor) {
        if (filterVisitor.canVisit(this)) {
            filterVisitor.visit(this);
        }
    }
}
