package org.apache.ldap.common.berlib.asn1.decoder;

import org.apache.asn1.ber.digester.rules.PrimitiveEnumDecodeRule;
import org.apache.ldap.common.message.ResultCodeEnum;
import org.apache.ldap.common.message.ResultResponse;
/* loaded from: classes3.dex */
public class ResultCodeRule extends PrimitiveEnumDecodeRule {
    @Override // org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        ((ResultResponse) getDigester().peek()).getLdapResult().setResultCode(ResultCodeEnum.getResultCodeEnum(getDigester().popInt()));
    }
}
