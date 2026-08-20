package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.asn1.ber.TagEnum;
import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.ReferralImpl;
import org.apache.ldap.common.message.SearchResponseReferenceImpl;
/* loaded from: classes3.dex */
public class SearchResponseReferralRule extends AbstractRule {
    private static final TagEnum TAG = LdapTag.SEARCH_RESULT_REFERENCE;

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        TagEnum tagEnum = TAG;
        if (i != tagEnum.getTagId()) {
            throw new IllegalArgumentException(new StringBuffer("Expecting ").append(tagEnum.getName()).append(" with an id of ").append(tagEnum.getTagId()).append(" but instead got a tag id of ").append(i).toString());
        }
        SearchResponseReferenceImpl searchResponseReferenceImpl = (SearchResponseReferenceImpl) getDigester().getRoot();
        ReferralImpl referralImpl = new ReferralImpl(searchResponseReferenceImpl);
        searchResponseReferenceImpl.setReferral(referralImpl);
        getDigester().push(referralImpl);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
