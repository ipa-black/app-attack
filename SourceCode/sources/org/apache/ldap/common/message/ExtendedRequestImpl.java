package org.apache.ldap.common.message;

import org.apache.ldap.common.util.ArrayUtils;
/* loaded from: classes3.dex */
public class ExtendedRequestImpl extends AbstractRequest implements ExtendedRequest {
    private String oid;
    private byte[] payload;

    public ExtendedRequestImpl(int i) {
        super(i, TYPE, true);
    }

    @Override // org.apache.ldap.common.message.ExtendedRequest
    public String getOid() {
        return this.oid;
    }

    @Override // org.apache.ldap.common.message.ExtendedRequest
    public void setOid(String str) {
        lockCheck("Attempt to alter OID of locked ExtendedRequest!");
        this.oid = str;
    }

    @Override // org.apache.ldap.common.message.ExtendedRequest
    public byte[] getPayload() {
        return this.payload;
    }

    @Override // org.apache.ldap.common.message.ExtendedRequest
    public void setPayload(byte[] bArr) {
        lockCheck("Attempt to alter payload of locked ExtendedRequest!");
        this.payload = bArr;
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
            ExtendedRequest extendedRequest = (ExtendedRequest) obj;
            if (this.oid == null || extendedRequest.getOid() != null) {
                if (this.oid != null || extendedRequest.getOid() == null) {
                    if (this.oid == null || extendedRequest.getOid() == null || this.oid.equals(extendedRequest.getOid())) {
                        if (this.payload == null || extendedRequest.getPayload() != null) {
                            if (this.payload != null || extendedRequest.getPayload() == null) {
                                return this.payload == null || extendedRequest.getPayload() == null || ArrayUtils.isEquals(this.payload, extendedRequest.getPayload());
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
