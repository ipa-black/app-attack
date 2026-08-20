package org.apache.ldap.common.berlib.asn1.decoder.search;

import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.decoder.ResultResponseRule;
/* loaded from: classes3.dex */
public class SearchResponseDoneRule extends ResultResponseRule {
    public SearchResponseDoneRule() {
        super(LdapTag.SEARCH_RESULT_DONE);
    }
}
