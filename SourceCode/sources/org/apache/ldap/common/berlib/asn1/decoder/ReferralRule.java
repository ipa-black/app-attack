package org.apache.ldap.common.berlib.asn1.decoder;

import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.message.LdapResult;
import org.apache.ldap.common.message.ReferralImpl;
import org.apache.ldap.common.message.ResultResponse;
/* loaded from: classes3.dex */
public class ReferralRule extends AbstractRule {
    private static final TagEnum TAG = new TagEnum("Referral", -2097152000, 3) { // from class: org.apache.ldap.common.berlib.asn1.decoder.ReferralRule.1
    };

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        TagEnum tagEnum = TAG;
        if (i != tagEnum.getTagId()) {
            throw new IllegalArgumentException(new StringBuffer("Expecting ").append(tagEnum.getName()).append(" with an id of ").append(tagEnum.getTagId()).append(" but instead got a tag id of ").append(i).toString());
        }
        LdapResult ldapResult = ((ResultResponse) getDigester().getRoot()).getLdapResult();
        ReferralImpl referralImpl = new ReferralImpl(ldapResult);
        ldapResult.setReferral(referralImpl);
        getDigester().push(referralImpl);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
