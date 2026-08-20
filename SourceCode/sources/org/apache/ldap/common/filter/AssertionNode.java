package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.math.BigInteger;
/* loaded from: classes3.dex */
public class AssertionNode extends AbstractExprNode {
    private static final BigInteger MAX;
    private static final String MAX_STR;
    private final Assertion m_assertion;
    private final String m_desc;

    @Override // org.apache.ldap.common.filter.ExprNode
    public boolean isLeaf() {
        return true;
    }

    static {
        BigInteger valueOf = BigInteger.valueOf(2147483647L);
        MAX = valueOf;
        MAX_STR = new StringBuffer("[").append(valueOf.toString()).append("]").toString();
    }

    public AssertionNode(Assertion assertion) {
        this(assertion, "ASSERTION");
    }

    public AssertionNode(Assertion assertion, String str) {
        super(8);
        this.m_desc = str;
        this.m_assertion = assertion;
        set(NewHtcHomeBadger.COUNT, MAX);
    }

    public Assertion getAssertion() {
        return this.m_assertion;
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        stringBuffer.append(this.m_desc).append(MAX_STR);
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void accept(FilterVisitor filterVisitor) {
        filterVisitor.visit(this);
    }
}
