package org.apache.ldap.common.berlib.asn1.decoder.abandon;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.AbandonRequest;
import org.apache.ldap.common.message.AbandonRequestImpl;
/* loaded from: classes3.dex */
public class AbandonRequestRule extends PrimitiveIntDecodeRule {
    public AbandonRequestRule() {
        super(LdapTag.ABANDON_REQUEST);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        getDigester().push(new AbandonRequestImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        ((AbandonRequest) getDigester().pop()).setAbandoned(getDigester().popInt());
    }
}
