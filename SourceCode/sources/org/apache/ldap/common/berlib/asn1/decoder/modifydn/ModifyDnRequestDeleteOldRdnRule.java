package org.apache.ldap.common.berlib.asn1.decoder.modifydn;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.rules.PrimitiveBooleanRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.message.ModifyDnRequest;
/* loaded from: classes3.dex */
public class ModifyDnRequestDeleteOldRdnRule extends PrimitiveBooleanRule {
    public ModifyDnRequestDeleteOldRdnRule() {
        super(UniversalTag.BOOLEAN);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveBooleanRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
    }

    @Override // org.apache.asn1.ber.digester.rules.PrimitiveBooleanRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        ((ModifyDnRequest) getDigester().peek()).setDeleteOldRdn(getDigester().popBoolean());
    }
}
