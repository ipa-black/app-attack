package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
/* loaded from: classes3.dex */
public class SimpleNode extends LeafNode {
    private final String m_value;

    public SimpleNode(String str, String str2, int i) {
        super(str, i);
        this.m_value = str2;
        switch (i) {
            case 0:
            case 3:
            case 4:
            case 5:
                return;
            case 1:
                throw new IllegalArgumentException("Assertion type supplied is presence.  Use PresenceNode instead.");
            case 2:
                throw new IllegalArgumentException("Assertion type supplied is substring.  Use SubstringNode instead.");
            case 6:
                throw new IllegalArgumentException("Assertion type supplied is extensible.  Use ExtensibleNode instead.");
            default:
                throw new IllegalArgumentException("Attribute value assertion type is undefined.");
        }
    }

    public final String getValue() {
        return this.m_value;
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        stringBuffer.append('(').append(getAttribute());
        int assertionType = getAssertionType();
        if (assertionType == 0) {
            stringBuffer.append("=");
        } else if (assertionType == 3) {
            stringBuffer.append(">=");
        } else if (assertionType == 4) {
            stringBuffer.append("<=");
        } else if (assertionType == 5) {
            stringBuffer.append("~=");
        } else {
            stringBuffer.append("UNKNOWN");
        }
        stringBuffer.append(this.m_value);
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
