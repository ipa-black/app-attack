package org.apache.ldap.common.berlib.asn1.decoder.bind;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.message.BindRequest;
/* loaded from: classes3.dex */
public class BindSimpleCredentialsRule extends PrimitiveOctetStringRule {
    private static final TagEnum TAG = new TagEnum("BindSimpleCredentials", Integer.MIN_VALUE, 0) { // from class: org.apache.ldap.common.berlib.asn1.decoder.bind.BindSimpleCredentialsRule.1
    };

    public BindSimpleCredentialsRule() {
        super(TAG);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        super.finish();
        ByteBuffer byteBuffer = (ByteBuffer) getDigester().pop();
        BindRequest bindRequest = (BindRequest) getDigester().peek();
        if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
        } else {
            byte[] bArr2 = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr2);
            bArr = bArr2;
        }
        bindRequest.setSimple(true);
        bindRequest.setCredentials(bArr);
    }
}
