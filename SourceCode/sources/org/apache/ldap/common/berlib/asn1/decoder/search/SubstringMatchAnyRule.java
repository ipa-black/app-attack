package org.apache.ldap.common.berlib.asn1.decoder.search;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
/* loaded from: classes3.dex */
public class SubstringMatchAnyRule extends PrimitiveOctetStringRule {
    public SubstringMatchAnyRule() {
        super(LdapTag.CONTEXT_SPECIFIC_TAG_1);
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
        ((SubstringMatchRule) getDigester().peek()).addAny(new String(bArr));
    }
}
