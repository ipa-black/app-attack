package org.apache.ldap.common.message;

import org.apache.ldap.common.util.ArrayUtils;
/* loaded from: classes3.dex */
public class BindResponseImpl extends AbstractResultResponse implements BindResponse {
    private byte[] serverSaslCreds;

    public BindResponseImpl(int i) {
        super(i, TYPE);
    }

    @Override // org.apache.ldap.common.message.BindResponse
    public byte[] getServerSaslCreds() {
        return this.serverSaslCreds;
    }

    @Override // org.apache.ldap.common.message.BindResponse
    public void setServerSaslCreds(byte[] bArr) {
        lockCheck("Attempt to alter serverSaslCreds on locked BindResponse!");
        this.serverSaslCreds = bArr;
    }

    @Override // org.apache.ldap.common.message.AbstractResultResponse, org.apache.ldap.common.message.AbstractMessage
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj)) {
            byte[] serverSaslCreds = ((BindResponse) obj).getServerSaslCreds();
            byte[] bArr = this.serverSaslCreds;
            if (bArr != null || serverSaslCreds == null) {
                if (serverSaslCreds != null || bArr == null) {
                    return serverSaslCreds == null || bArr == null || ArrayUtils.isEquals(bArr, serverSaslCreds);
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
