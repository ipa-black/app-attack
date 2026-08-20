package org.apache.asn1.ber.digester.rules;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TagEnum;
/* loaded from: classes5.dex */
public class Octets2StringRule extends PrimitiveOctetStringRule {
    public Octets2StringRule() {
    }

    public Octets2StringRule(TagEnum tagEnum) {
        super(tagEnum);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        super.finish();
        ByteBuffer byteBuffer = (ByteBuffer) getDigester().pop();
        if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
        } else {
            byte[] bArr2 = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr2);
            bArr = bArr2;
        }
        getDigester().push(new String(bArr));
    }
}
