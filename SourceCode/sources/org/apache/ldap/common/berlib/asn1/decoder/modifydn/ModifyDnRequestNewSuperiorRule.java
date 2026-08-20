package org.apache.ldap.common.berlib.asn1.decoder.modifydn;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.ModifyDnRequest;
/* loaded from: classes3.dex */
public class ModifyDnRequestNewSuperiorRule extends PrimitiveOctetStringRule {
    public ModifyDnRequestNewSuperiorRule() {
        super(LdapTag.MODIFYDN_REQUEST_NEWSUP_TAG);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        super.finish();
        if (getDigester().peek() instanceof ByteBuffer) {
            ByteBuffer byteBuffer = (ByteBuffer) getDigester().pop();
            ModifyDnRequest modifyDnRequest = (ModifyDnRequest) getDigester().peek();
            if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
                bArr = byteBuffer.array();
            } else {
                byte[] bArr2 = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr2);
                bArr = bArr2;
            }
            modifyDnRequest.setNewSuperior(new String(bArr));
        }
    }
}
