package org.apache.ldap.common.berlib.asn1.decoder;

import java.nio.ByteBuffer;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.ldap.common.berlib.asn1.BufferUtils;
import org.apache.ldap.common.message.LdapResult;
import org.apache.ldap.common.message.ResultResponse;
/* loaded from: classes3.dex */
public class ErrorMessageRule extends PrimitiveOctetStringRule {
    private LdapResult result = null;
    private boolean byPass = false;

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        LdapResult ldapResult = ((ResultResponse) getDigester().peek()).getLdapResult();
        this.result = ldapResult;
        boolean z2 = ldapResult.getMatchedDn() == null || this.result.getErrorMessage() != null;
        this.byPass = z2;
        if (z2) {
            return;
        }
        super.tag(i, z, typeClass);
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
        if (isConstructed() || this.byPass) {
            return;
        }
        this.result.setErrorMessage(new String(BufferUtils.getArray(getAccumulator().drain(0))));
        setConstructed(false);
        this.byPass = false;
        this.result = null;
    }
}
