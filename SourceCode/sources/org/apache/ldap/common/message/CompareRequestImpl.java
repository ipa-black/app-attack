package org.apache.ldap.common.message;
/* loaded from: classes3.dex */
public class CompareRequestImpl extends AbstractRequest implements CompareRequest {
    private String attrId;
    private String attrVal;
    private String name;

    public CompareRequestImpl(int i) {
        super(i, TYPE, true);
    }

    @Override // org.apache.ldap.common.message.CompareRequest
    public String getName() {
        return this.name;
    }

    @Override // org.apache.ldap.common.message.CompareRequest
    public void setName(String str) {
        lockCheck("Attempt to alter entry name on locked CompareRequest!");
        this.name = str;
    }

    @Override // org.apache.ldap.common.message.CompareRequest
    public String getAssertionValue() {
        return this.attrVal;
    }

    @Override // org.apache.ldap.common.message.CompareRequest
    public void setAssertionValue(String str) {
        super.lockCheck("Attempt to alter attribute value of locked CompareRequest");
        this.attrVal = str;
    }

    @Override // org.apache.ldap.common.message.CompareRequest
    public String getAttributeId() {
        return this.attrId;
    }

    @Override // org.apache.ldap.common.message.CompareRequest
    public void setAttributeId(String str) {
        super.lockCheck("Attempt to alter attribute id of locked CompareRequest");
        this.attrId = str;
    }

    @Override // org.apache.ldap.common.message.SingleReplyRequest
    public MessageTypeEnum getResponseType() {
        return RESP_TYPE;
    }

    @Override // org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            CompareRequest compareRequest = (CompareRequest) obj;
            if (this.name == null || compareRequest.getName() != null) {
                if (this.name != null || compareRequest.getName() == null) {
                    if (this.name == null || compareRequest.getName() == null || this.name.equals(compareRequest.getName())) {
                        if (this.attrId == null || compareRequest.getAttributeId() != null) {
                            if (this.attrId != null || compareRequest.getAttributeId() == null) {
                                if (this.attrId == null || compareRequest.getAttributeId() == null || this.attrId.equals(compareRequest.getAttributeId())) {
                                    if (this.attrVal == null || compareRequest.getAssertionValue() != null) {
                                        if (this.attrVal != null || compareRequest.getAssertionValue() == null) {
                                            return this.attrVal == null || compareRequest.getAssertionValue() == null || this.attrVal.equals(compareRequest.getAssertionValue());
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
