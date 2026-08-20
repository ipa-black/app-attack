package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.commons.lang.Validate;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.SearchRequestImpl;
/* loaded from: classes3.dex */
public class BaseSearchRequestRule extends AbstractRule {
    private boolean isEnabled = true;
    private final int minTagCount;
    private SearchRequestProcessing processing;
    private SearchRequestImpl req;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseSearchRequestRule(int i) {
        Validate.isTrue(i >= 2, "minimum tag count must be 2 or more");
        this.minTagCount = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SearchRequestImpl getRequest() {
        return this.req;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SearchRequestProcessing getProcessing() {
        return this.processing;
    }

    public boolean isEnabled() {
        return this.isEnabled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        int tagCount = getDigester().getTagCount();
        if (tagCount < this.minTagCount) {
            this.isEnabled = false;
        } else if (getDigester().getTag(tagCount - 2) != LdapTag.SEARCH_REQUEST.getPrimitiveTag()) {
            this.isEnabled = false;
        } else {
            super.tag(i, z, typeClass);
            int count = getDigester().getCount();
            this.req = (SearchRequestImpl) getDigester().peek(count - 1);
            this.processing = (SearchRequestProcessing) getDigester().peek(count - 2);
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
            this.processing.next();
            super.finish();
        }
        this.req = null;
        this.isEnabled = true;
        this.processing = null;
    }
}
