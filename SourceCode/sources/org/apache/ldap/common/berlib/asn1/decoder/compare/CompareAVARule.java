package org.apache.ldap.common.berlib.asn1.decoder.compare;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.message.CompareRequest;
/* loaded from: classes3.dex */
public class CompareAVARule extends PrimitiveOctetStringRule {
    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        super.finish();
        ByteBuffer byteBuffer = (ByteBuffer) getDigester().pop();
        CompareRequest compareRequest = (CompareRequest) getDigester().peek();
        if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
        } else {
            byte[] bArr2 = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr2);
            bArr = bArr2;
        }
        if (compareRequest.getAttributeId() == null) {
            compareRequest.setAttributeId(new String(bArr));
        } else {
            compareRequest.setAssertionValue(new String(bArr));
        }
    }
}
