package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public abstract class AbstractResultResponse extends AbstractResponse implements ResultResponse {
    private LdapResult result;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractResultResponse(int i, MessageTypeEnum messageTypeEnum) {
        super(i, messageTypeEnum);
    }

    @Override // org.apache.ldap.common.message.ResultResponse
    public LdapResult getLdapResult() {
        return this.result;
    }

    @Override // org.apache.ldap.common.message.ResultResponse
    public void setLdapResult(LdapResult ldapResult) {
        lockCheck("Attempt to alter the LdapResult for a locked Response!");
        this.result = ldapResult;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj) && (obj instanceof ResultResponse)) {
            ResultResponse resultResponse = (ResultResponse) obj;
            if (getLdapResult() == null || resultResponse.getLdapResult() != null) {
                if (getLdapResult() != null || resultResponse.getLdapResult() == null) {
                    return getLdapResult() == null || resultResponse.getLdapResult() == null || getLdapResult().equals(resultResponse.getLdapResult());
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
