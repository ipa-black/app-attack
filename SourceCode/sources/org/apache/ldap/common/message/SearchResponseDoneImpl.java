package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class SearchResponseDoneImpl extends AbstractResultResponse implements SearchResponseDone {
    public SearchResponseDoneImpl(int i) {
        super(i, TYPE);
    }

    @Override // org.apache.ldap.common.message.AbstractResultResponse, org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            return getLdapResult().equals(((SearchResponseDone) obj).getLdapResult());
        }
        return false;
    }
}
