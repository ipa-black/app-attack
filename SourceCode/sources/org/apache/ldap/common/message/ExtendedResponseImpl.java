package org.apache.ldap.common.message;

import org.apache.ldap.common.util.ArrayUtils;
/* loaded from: classes3.dex */
public class ExtendedResponseImpl extends AbstractResultResponse implements ExtendedResponse {
    private String oid;
    private byte[] value;

    public ExtendedResponseImpl(int i) {
        super(i, TYPE);
    }

    @Override // org.apache.ldap.common.message.ExtendedResponse
    public byte[] getResponse() {
        return this.value;
    }

    @Override // org.apache.ldap.common.message.ExtendedResponse
    public void setResponse(byte[] bArr) {
        lockCheck("Attempt to alter response value in locked ExtendedResponse!");
        this.value = bArr;
    }

    @Override // org.apache.ldap.common.message.ExtendedResponse
    public String getResponseName() {
        return this.oid;
    }

    @Override // org.apache.ldap.common.message.ExtendedResponse
    public void setResponseName(String str) {
        lockCheck("Attempt to alter responseName in locked ExtendedResponse!");
        this.oid = str;
    }

    @Override // org.apache.ldap.common.message.AbstractResultResponse, org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            ExtendedResponse extendedResponse = (ExtendedResponse) obj;
            if (this.oid == null || extendedResponse.getResponseName() != null) {
                if (this.oid != null || extendedResponse.getResponseName() == null) {
                    if (this.oid == null || extendedResponse.getResponseName() == null || this.oid.equals(extendedResponse.getResponseName())) {
                        if (this.value == null || extendedResponse.getResponse() != null) {
                            if (this.value != null || extendedResponse.getResponse() == null) {
                                return this.value == null || extendedResponse.getResponse() == null || ArrayUtils.isEquals(this.value, extendedResponse.getResponse());
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
