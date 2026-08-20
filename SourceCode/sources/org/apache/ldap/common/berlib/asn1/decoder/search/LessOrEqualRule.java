package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.filter.SimpleNode;
/* loaded from: classes3.dex */
public class LessOrEqualRule extends PrimitiveOctetStringRule {
    private boolean isEnabled = true;
    private String name = null;
    private String value = null;

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        SearchRequestProcessing searchRequestProcessing = (SearchRequestProcessing) getDigester().peek(getDigester().getCount() - 2);
        if (searchRequestProcessing.getState() != searchRequestProcessing.FILTER_STATE) {
            this.isEnabled = false;
        }
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (this.isEnabled) {
            super.length(i);
        }
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (this.isEnabled) {
            super.value(byteBuffer);
        }
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        if (!this.isEnabled) {
            this.isEnabled = true;
            return;
        }
        super.finish();
        ByteBuffer byteBuffer = (ByteBuffer) getDigester().pop();
        if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
        } else {
            byte[] bArr2 = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr2);
            bArr = bArr2;
        }
        String str = this.name;
        if (str == null && this.value == null) {
            this.name = new String(bArr);
        } else if (str != null && this.value == null) {
            this.value = new String(bArr);
            getDigester().push(new SimpleNode(this.name, this.value, 4));
            this.name = null;
            this.value = null;
        } else {
            throw new IllegalStateException(new StringBuffer("name = ").append(this.name).append(" and value = ").append(this.value).toString());
        }
    }
}
