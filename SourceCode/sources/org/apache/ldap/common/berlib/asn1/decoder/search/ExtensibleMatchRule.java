package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.filter.ExtensibleNode;
/* loaded from: classes3.dex */
public class ExtensibleMatchRule extends AbstractRule {
    private boolean isEnabled = true;
    private String matchingRule = null;
    private String type = null;
    private String value = null;
    private boolean dnAttributes = false;

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        int tagCount = getDigester().getTagCount();
        if (tagCount < 3) {
            this.isEnabled = false;
        } else if (getDigester().getTag(tagCount - 2) != LdapTag.SEARCH_REQUEST.getPrimitiveTag()) {
            this.isEnabled = false;
        } else {
            super.tag(i, z, typeClass);
            getDigester().push(this);
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
            ExtensibleNode extensibleNode = new ExtensibleNode(this.type, this.value, this.matchingRule, this.dnAttributes);
            if (getDigester().peek() == this) {
                getDigester().pop();
            }
            getDigester().push(extensibleNode);
        }
        this.isEnabled = true;
        this.type = null;
        this.value = null;
        this.matchingRule = null;
        this.dnAttributes = false;
    }

    public void setMatchingRule(String str) {
        this.matchingRule = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public void setDnAttributes(boolean z) {
        this.dnAttributes = z;
    }
}
