package org.apache.asn1.ber.digester.rules;

import org.apache.asn1.ber.digester.AbstractRule;
/* loaded from: classes5.dex */
public class PopOnFinish extends AbstractRule {
    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
