package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.SearchResponseEntryImpl;
/* loaded from: classes3.dex */
public class SearchResponseEntryRule extends AbstractRule {
    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        LdapTag ldapTagById = LdapTag.getLdapTagById(i);
        if (LdapTag.SEARCH_RESULT_ENTRY != ldapTagById) {
            throw new IllegalArgumentException(new StringBuffer("Expected a SEARCH_RESULT_ENTRY tag id but got a ").append(ldapTagById).toString());
        }
        getDigester().push(new SearchResponseEntryImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
