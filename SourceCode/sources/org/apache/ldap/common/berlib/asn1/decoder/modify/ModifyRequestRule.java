package org.apache.ldap.common.berlib.asn1.decoder.modify;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.ModifyRequestImpl;
/* loaded from: classes3.dex */
public class ModifyRequestRule extends AbstractRule {
    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        super.tag(i, z, typeClass);
        LdapTag ldapTagById = LdapTag.getLdapTagById(i);
        if (LdapTag.MODIFY_REQUEST != ldapTagById) {
            throw new IllegalArgumentException(new StringBuffer("Expected a MODIFY_REQUEST tag id but got a ").append(ldapTagById).toString());
        }
        getDigester().push(new ModifyRequestImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        super.finish();
        getDigester().pop();
    }
}
