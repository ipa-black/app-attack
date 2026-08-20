package org.apache.ldap.common.berlib.asn1.decoder.delete;

import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.decoder.ResultResponseRule;
/* loaded from: classes3.dex */
public class DeleteResponseRule extends ResultResponseRule {
    public DeleteResponseRule() {
        super(LdapTag.DEL_RESPONSE);
    }
}
