package org.apache.ldap.common.berlib.asn1.decoder.bind;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.BindRequestImpl;
/* loaded from: classes3.dex */
public class BindRequestRule extends AbstractRule {
    private static final int[] NESTING_PATTERN = {UniversalTag.SEQUENCE_SEQUENCE_OF.getValue(), LdapTag.BIND_REQUEST.getValue()};

    public static LdapTag getTag() {
        return LdapTag.BIND_REQUEST;
    }

    public static int[] getNestingPattern() {
        return NESTING_PATTERN;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        LdapTag ldapTagById = LdapTag.getLdapTagById(i);
        if (LdapTag.BIND_REQUEST != ldapTagById) {
            throw new IllegalArgumentException(new StringBuffer("Expected a BIND_REQUEST tag id but got a ").append(ldapTagById).toString());
        }
        getDigester().push(new BindRequestImpl(getDigester().popInt()));
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        getDigester().pop();
    }
}
