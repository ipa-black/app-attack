package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.filter.BranchNode;
import org.apache.ldap.common.filter.ExprNode;
/* loaded from: classes3.dex */
public class OrRule extends AbstractRule {
    private boolean isEnabled = true;

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        int tagCount = getDigester().getTagCount();
        if (tagCount < 3) {
            this.isEnabled = false;
        } else if (getDigester().getTag(tagCount - 2) != LdapTag.SEARCH_REQUEST.getPrimitiveTag()) {
            this.isEnabled = false;
        } else if (getDigester().getTag(2) == LdapTag.CONTEXT_SPECIFIC_TAG_4.getPrimitiveTag() || getDigester().getTag(1) == LdapTag.CONTEXT_SPECIFIC_TAG_9.getPrimitiveTag()) {
            this.isEnabled = false;
        } else {
            getDigester().push(this);
            super.tag(i, z, typeClass);
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (this.isEnabled) {
            super.length(i);
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (this.isEnabled) {
            super.value(byteBuffer);
        }
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        if (this.isEnabled) {
            super.finish();
            BranchNode branchNode = new BranchNode(9);
            while (getDigester().peek() instanceof ExprNode) {
                branchNode.addNodeToHead((ExprNode) getDigester().pop());
            }
            if (getDigester().peek() == this) {
                getDigester().pop();
                getDigester().push(branchNode);
            } else {
                throw new IllegalStateException(new StringBuffer("Expected to see an OrRule object on stack but got ").append(getDigester().peek().getClass()).append(" instead").toString());
            }
        }
        this.isEnabled = true;
    }
}
