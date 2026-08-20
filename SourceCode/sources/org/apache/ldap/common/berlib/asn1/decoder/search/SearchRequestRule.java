package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.SearchRequestImpl;
/* loaded from: classes3.dex */
public class SearchRequestRule extends AbstractRule {
    private final SearchRequestProcessing processing = new SearchRequestProcessing();

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        LdapTag ldapTagById = LdapTag.getLdapTagById(i);
        if (LdapTag.SEARCH_REQUEST != ldapTagById) {
            throw new IllegalArgumentException(new StringBuffer("Expected a SEARCH_REQUEST tag id but got a ").append(ldapTagById).toString());
        }
        getDigester().push(new SearchRequestImpl(getDigester().popInt()));
        getDigester().push(this.processing);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
        getDigester().pop();
        this.processing.reset();
    }
}
