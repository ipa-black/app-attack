package org.apache.ldap.common.berlib.asn1.decoder;

import org.apache.asn1.ber.TypeClass;
import org.apache.asn1.ber.digester.AbstractRule;
import org.apache.ldap.common.berlib.asn1.LdapMessageFactory;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.message.LdapResultImpl;
import org.apache.ldap.common.message.ResultResponse;
/* loaded from: classes3.dex */
public abstract class ResultResponseRule extends AbstractRule {
    private final LdapTag tag;

    /* JADX INFO: Access modifiers changed from: protected */
    public ResultResponseRule(LdapTag ldapTag) {
        this.tag = ldapTag;
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void tag(int i, boolean z, TypeClass typeClass) {
        if (this.tag.getTagId() != i) {
            throw new IllegalStateException(new StringBuffer("Rule firing stage method ").append(this).append(".tag() expected an id of ").append(this.tag.getTagId()).append(" for tag ").append(this.tag).append(" but instead encountered a tag id  of ").append(i).toString());
        }
        super.tag(i, z, typeClass);
        ResultResponse resultResponse = (ResultResponse) LdapMessageFactory.create(i, getDigester().popInt());
        resultResponse.setLdapResult(new LdapResultImpl(resultResponse));
        getDigester().push(resultResponse);
    }

    @Override // org.apache.asn1.ber.digester.AbstractRule, org.apache.asn1.ber.digester.Rule
    public void finish() {
        if (getDigester().peek() instanceof ResultResponse) {
            getDigester().pop();
        }
    }
}
