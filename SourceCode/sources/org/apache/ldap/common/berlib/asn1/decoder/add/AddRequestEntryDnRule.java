package org.apache.ldap.common.berlib.asn1.decoder.add;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.AddRequest;
/* loaded from: classes3.dex */
public class AddRequestEntryDnRule extends PrimitiveOctetStringRule {
    public AddRequestEntryDnRule() {
        super(UniversalTag.OCTET_STRING);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        super.finish();
        ByteBuffer byteBuffer = (ByteBuffer) getDigester().pop();
        AddRequest addRequest = (AddRequest) getDigester().peek();
        if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
        } else {
            byte[] bArr2 = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr2);
            bArr = bArr2;
        }
        addRequest.setName(new String(bArr));
    }
}
