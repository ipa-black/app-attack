package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.primitives.PrimitiveUtils;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.ScopeEnum;
/* loaded from: classes3.dex */
public class ScopeRule extends BaseSearchRequestRule {
    private int length;
    private int pos;
    private final byte[] value;

    public ScopeRule() {
        super(3);
        this.value = new byte[4];
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.search.BaseSearchRequestRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        if (getDigester().getTopTag() != UniversalTag.ENUMERATED.getPrimitiveTag()) {
            setEnabled(false);
        }
        if (getProcessing().getState() != getProcessing().SCOPE_STATE) {
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
        int decodeInt = PrimitiveUtils.decodeInt(this.value, 0, this.length);
        if (decodeInt == 0) {
            getRequest().setScope(ScopeEnum.BASEOBJECT);
        } else if (decodeInt == 1) {
            getRequest().setScope(ScopeEnum.SINGLELEVEL);
        } else if (decodeInt == 2) {
            getRequest().setScope(ScopeEnum.WHOLESUBTREE);
        } else {
            throw new IllegalStateException(new StringBuffer("expected 0, 1, or 2 for scope but got ").append(decodeInt).toString());
        }
        this.pos = 0;
        this.length = 0;
        super.finish();
    }
}
