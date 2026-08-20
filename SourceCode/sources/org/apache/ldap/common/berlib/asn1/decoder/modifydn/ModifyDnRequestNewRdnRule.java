package org.apache.ldap.common.berlib.asn1.decoder.modifydn;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.ModifyDnRequest;
/* loaded from: classes3.dex */
public class ModifyDnRequestNewRdnRule extends PrimitiveOctetStringRule {
    private boolean byPass;
    private ModifyDnRequest req;

    public ModifyDnRequestNewRdnRule() {
        super(UniversalTag.OCTET_STRING);
        this.byPass = false;
        this.req = null;
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        ModifyDnRequest modifyDnRequest = (ModifyDnRequest) getDigester().peek();
        this.req = modifyDnRequest;
        if (modifyDnRequest.getNewRdn() != null || this.req.getName() == null) {
            this.byPass = true;
        } else {
            super.tag(i, z, typeClass);
        }
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void length(int i) {
        if (this.byPass) {
            return;
        }
        super.length(i);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void value(ByteBuffer byteBuffer) {
        if (this.byPass) {
            return;
        }
        super.value(byteBuffer);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        byte[] bArr;
        if (this.byPass) {
            this.req = null;
            this.byPass = false;
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
        this.req.setNewRdn(new String(bArr));
        this.byPass = false;
        this.req = null;
    }
}
