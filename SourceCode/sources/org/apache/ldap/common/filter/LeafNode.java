package org.apache.ldap.common.filter;
/* loaded from: classes3.dex */
public abstract class LeafNode extends AbstractExprNode {
    private final String m_attribute;

    @Override // org.apache.ldap.common.filter.ExprNode
    public final boolean isLeaf() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LeafNode(String str, int i) {
        super(i);
        this.m_attribute = str;
    }

    public final String getAttribute() {
        return this.m_attribute;
    }
}
