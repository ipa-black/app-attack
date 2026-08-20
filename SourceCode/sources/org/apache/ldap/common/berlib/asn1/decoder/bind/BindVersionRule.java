package org.apache.ldap.common.berlib.asn1.decoder.bind;

import org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule;
import org.apache.ldap.common.message.BindRequest;
/* loaded from: classes3.dex */
public class BindVersionRule extends PrimitiveIntDecodeRule {
    @Override // org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        ((BindRequest) getDigester().peek()).setVersion3(getDigester().popInt() == 3);
    }
}
