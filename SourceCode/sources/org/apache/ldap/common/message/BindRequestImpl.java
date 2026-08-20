package org.apache.ldap.common.message;

import org.apache.ldap.common.util.ArrayUtils;
/* loaded from: classes3.dex */
public class BindRequestImpl extends AbstractRequest implements BindRequest {
    private byte[] credentials;
    private boolean isSimple;
    private boolean isVersion3;
    private String name;

    public BindRequestImpl(int i) {
        super(i, TYPE, true);
        this.name = "";
        this.isSimple = true;
        this.isVersion3 = true;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public boolean isSimple() {
        return this.isSimple;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public boolean getSimple() {
        return this.isSimple;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public void setSimple(boolean z) {
        lockCheck("Attempt to alter auth. mode of locked BindRequest!");
        this.isSimple = z;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public byte[] getCredentials() {
        return this.credentials;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public void setCredentials(byte[] bArr) {
        lockCheck("Attempt to alter auth. cred. of locked BindRequest!");
        this.credentials = bArr;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public String getName() {
        return this.name;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public void setName(String str) {
        lockCheck("Attempt to alter auth. DN of locked BindRequest!");
        this.name = str;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public boolean isVersion3() {
        return this.isVersion3;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public boolean getVersion3() {
        return this.isVersion3;
    }

    @Override // org.apache.ldap.common.message.BindRequest
    public void setVersion3(boolean z) {
        lockCheck("Attempt to alter proto. version of locked BindRequest!");
        this.isVersion3 = z;
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
            BindRequest bindRequest = (BindRequest) obj;
            return bindRequest.isSimple() == isSimple() && bindRequest.isVersion3() == isVersion3() && bindRequest.getName().equals(getName()) && ArrayUtils.isEquals(bindRequest.getCredentials(), getCredentials());
        }
        return false;
    }
}
