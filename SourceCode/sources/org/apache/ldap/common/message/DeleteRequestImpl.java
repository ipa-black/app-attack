package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class DeleteRequestImpl extends AbstractRequest implements DeleteRequest {
    private String name;

    public DeleteRequestImpl(int i) {
        super(i, TYPE, true);
    }

    @Override // org.apache.ldap.common.message.DeleteRequest
    public String getName() {
        return this.name;
    }

    @Override // org.apache.ldap.common.message.DeleteRequest
    public void setName(String str) {
        lockCheck("Attempt to alter entry name of locked DeleteRequest!");
        this.name = str;
    }

    @Override // org.apache.ldap.common.message.SingleReplyRequest
    public MessageTypeEnum getResponseType() {
        return RESP_TYPE;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (super.equals(obj)) {
            DeleteRequest deleteRequest = (DeleteRequest) obj;
            if (this.name == null || deleteRequest.getName() != null) {
                if (this.name != null || deleteRequest.getName() == null) {
                    return this.name == null || deleteRequest.getName() == null || this.name.equals(deleteRequest.getName());
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
