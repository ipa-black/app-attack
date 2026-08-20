package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.primitives.PrimitiveUtils;
import org.apache.asn1.ber.primitives.UniversalTag;
/* loaded from: classes3.dex */
public class SizeLimitRule extends BaseSearchRequestRule {
    private int length;
    private int pos;
    private final byte[] value;

    public SizeLimitRule() {
        super(3);
        this.value = new byte[4];
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.search.BaseSearchRequestRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        if (getDigester().getTopTag() != UniversalTag.INTEGER.getPrimitiveTag()) {
            setEnabled(false);
        }
        if (getProcessing().getState() != getProcessing().SIZE_LIMIT_STATE) {
            setEnabled(false);
        }
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.search.BaseSearchRequestRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (isEnabled()) {
            if (i > 4 || i < 0) {
                throw new IllegalArgumentException(new StringBuffer("The target primitive for this rule can only hold integers of 32 bits or 4 bytes.  The length of the field however is ").append(i).toString());
            }
            this.length = i;
        }
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.search.BaseSearchRequestRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (isEnabled() && byteBuffer != null) {
            while (byteBuffer.hasRemaining()) {
                int i = this.pos;
                if (i + 1 > this.length) {
                    return;
                }
                this.value[i] = byteBuffer.get();
                this.pos++;
            }
        }
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.search.BaseSearchRequestRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        if (!isEnabled()) {
            this.pos = 0;
            this.length = 0;
            super.finish();
            return;
        }
        getRequest().setSizeLimit(PrimitiveUtils.decodeInt(this.value, 0, this.length));
        this.pos = 0;
        this.length = 0;
        super.finish();
    }
}
