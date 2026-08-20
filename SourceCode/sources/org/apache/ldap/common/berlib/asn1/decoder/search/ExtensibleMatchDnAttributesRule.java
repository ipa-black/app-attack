package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.asn1.ber.digester.rules.PrimitiveBooleanRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
/* loaded from: classes3.dex */
public class ExtensibleMatchDnAttributesRule extends PrimitiveBooleanRule {
    public ExtensibleMatchDnAttributesRule() {
        super(LdapTag.CONTEXT_SPECIFIC_TAG_4);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveBooleanRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        ((ExtensibleMatchRule) getDigester().peek()).setDnAttributes(getDigester().popBoolean());
    }
}
