package org.apache.ldap.common.berlib.asn1.decoder.compare;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.CompareRequestImpl;
/* loaded from: classes3.dex */
public class CompareRequestRule extends AbstractRule {
    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        LdapTag ldapTagById = LdapTag.getLdapTagById(i);
        if (LdapTag.COMPARE_REQUEST != ldapTagById) {
            throw new IllegalArgumentException(new StringBuffer("Expected a CompareRequest tag id but got a ").append(ldapTagById).toString());
        }
        getDigester().push(new CompareRequestImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        getDigester().pop();
    }
}
