package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.filter.SubstringNode;
/* loaded from: classes3.dex */
public class SubstringMatchRule extends AbstractRule {
    private boolean isEnabled = true;
    private String type = null;
    private String initialStr = null;
    private String finalStr = null;
    private ArrayList any = new ArrayList();

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        int tagCount = getDigester().getTagCount();
        if (tagCount < 4) {
            this.isEnabled = false;
        } else if (getDigester().getTag(tagCount - 2) != LdapTag.SEARCH_REQUEST.getPrimitiveTag()) {
            this.isEnabled = false;
        } else {
            super.tag(i, z, typeClass);
            if (this.isEnabled) {
                this.type = (String) getDigester().pop();
                getDigester().push(this);
            }
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
            SubstringNode substringNode = new SubstringNode(this.any, this.type, this.initialStr, this.finalStr);
            if (getDigester().peek() == this) {
                getDigester().pop();
            }
            getDigester().push(substringNode);
        }
        this.type = null;
        this.finalStr = null;
        this.isEnabled = true;
        this.initialStr = null;
        this.any = new ArrayList();
    }

    public void setInitial(String str) {
        this.initialStr = str;
    }

    public void setFinalStr(String str) {
        this.finalStr = str;
    }

    public void addAny(String str) {
        this.any.add(str);
    }
}
