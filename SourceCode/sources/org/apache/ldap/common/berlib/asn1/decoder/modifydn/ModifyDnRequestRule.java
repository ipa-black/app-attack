package org.apache.ldap.common.berlib.asn1.decoder.modifydn;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.ModifyDnRequestImpl;
/* loaded from: classes3.dex */
public class ModifyDnRequestRule extends AbstractRule {
    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        LdapTag ldapTagById = LdapTag.getLdapTagById(i);
        if (LdapTag.MODIFYDN_REQUEST != ldapTagById) {
            throw new IllegalArgumentException(new StringBuffer("Expected a ModifyDnRequest tag id but got a ").append(ldapTagById).toString());
        }
        getDigester().push(new ModifyDnRequestImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        getDigester().pop();
    }
}
