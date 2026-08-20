package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.asn1.ber.TypeClass;
/* loaded from: classes3.dex */
public class RequestedAttributesStateChangeRule extends BaseSearchRequestRule {
    public RequestedAttributesStateChangeRule() {
        super(3);
    }

    @Override // org.apache.ldap.common.berlib.asn1.decoder.search.BaseSearchRequestRule, org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        if (getProcessing().getState() != getProcessing().ATTRIBUTES_STATE) {
            setEnabled(false);
        }
    }
}
