package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
/* loaded from: classes3.dex */
public class ExtensibleNode extends LeafNode {
    private boolean m_dnAttributes;
    private final String m_matchingRuleId;
    private final String value;

    public ExtensibleNode(String str, String str2, String str3, boolean z) {
        super(str, 6);
        this.value = str2;
        this.m_matchingRuleId = str3;
        this.m_dnAttributes = z;
    }

    public boolean dnAttributes() {
        return this.m_dnAttributes;
    }

    public String getMatchingRuleId() {
        return this.m_matchingRuleId;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        stringBuffer.append('(').append(getAttribute());
        stringBuffer.append("-");
        stringBuffer.append(this.m_dnAttributes);
        stringBuffer.append("-EXTENSIBLE-");
        stringBuffer.append(this.m_matchingRuleId);
        stringBuffer.append("-");
        stringBuffer.append(this.value);
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
