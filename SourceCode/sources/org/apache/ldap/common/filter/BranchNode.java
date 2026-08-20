package org.apache.ldap.common.filter;

import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import java.math.BigInteger;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class BranchNode extends AbstractExprNode {
    private ArrayList m_children;
    private final int m_operator;

    @Override // org.apache.ldap.common.filter.ExprNode
    public final boolean isLeaf() {
        return false;
    }

    public BranchNode(int i, ArrayList arrayList) {
        super(i);
        this.m_children = null;
        if (arrayList == null) {
            this.m_children = new ArrayList(2);
        } else {
            this.m_children = arrayList;
        }
        this.m_operator = i;
        switch (i) {
            case 9:
            case 10:
            case 11:
                return;
            default:
                throw new IllegalArgumentException("Logical operator argument in constructor is undefined.");
        }
    }

    public BranchNode(int i) {
        this(i, null);
    }

    public void addNode(ExprNode exprNode) {
        if (11 == this.m_operator && this.m_children.size() >= 1) {
            throw new IllegalStateException("Cannot add more than one element to a negation node.");
        }
        this.m_children.add(exprNode);
    }

    public void addNodeToHead(ExprNode exprNode) {
        if (11 == this.m_operator && this.m_children.size() >= 1) {
            throw new IllegalStateException("Cannot add more than one element to a negation node.");
        }
        this.m_children.add(0, exprNode);
    }

    public ArrayList getChildren() {
        return this.m_children;
    }

    public ExprNode getChild() {
        return (ExprNode) this.m_children.get(0);
    }

    void setChildren(ArrayList arrayList) {
        this.m_children = arrayList;
    }

    public int getOperator() {
        return this.m_operator;
    }

    public boolean isDisjunction() {
        return 9 == this.m_operator;
    }

    public boolean isConjunction() {
        return 10 == this.m_operator;
    }

    public final boolean isNegation() {
        return 11 == this.m_operator;
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void printToBuffer(StringBuffer stringBuffer) {
        stringBuffer.append('(');
        switch (this.m_operator) {
            case 9:
                stringBuffer.append("| ");
                break;
            case 10:
                stringBuffer.append("& ");
                break;
            case 11:
                stringBuffer.append("! ");
                break;
            default:
                stringBuffer.append("UNKNOWN");
                break;
        }
        for (int i = 0; i < this.m_children.size(); i++) {
            ((ExprNode) this.m_children.get(i)).printToBuffer(stringBuffer);
        }
        stringBuffer.append(')');
        if (getAnnotations() != null && getAnnotations().containsKey(NewHtcHomeBadger.COUNT)) {
            stringBuffer.append('[');
            stringBuffer.append(((BigInteger) getAnnotations().get(NewHtcHomeBadger.COUNT)).toString());
            stringBuffer.append("] ");
            return;
        }
        stringBuffer.append(' ');
    }

    public static String getOperatorString(int i) {
        switch (i) {
            case 9:
                return "OR";
            case 10:
                return "AND";
            case 11:
                return "NOT";
            default:
                return "UNKNOWN";
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getOperatorString(this.m_operator));
        if (getAnnotations() != null && getAnnotations().containsKey(NewHtcHomeBadger.COUNT)) {
            stringBuffer.append('[');
            stringBuffer.append(((BigInteger) getAnnotations().get(NewHtcHomeBadger.COUNT)).toString());
            stringBuffer.append("] ");
        } else {
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }

    @Override // org.apache.ldap.common.filter.ExprNode
    public void accept(FilterVisitor filterVisitor) {
        int i = 0;
        if (filterVisitor.isPrefix()) {
            ArrayList order = filterVisitor.getOrder(this, this.m_children);
            if (filterVisitor.canVisit(this)) {
                filterVisitor.visit(this);
            }
            while (i < order.size()) {
                ((ExprNode) order.get(i)).accept(filterVisitor);
                i++;
            }
            return;
        }
        ArrayList order2 = filterVisitor.getOrder(this, this.m_children);
        while (i < order2.size()) {
            ((ExprNode) order2.get(i)).accept(filterVisitor);
            i++;
        }
        if (filterVisitor.canVisit(this)) {
            filterVisitor.visit(this);
        }
    }
}
