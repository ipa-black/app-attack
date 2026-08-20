package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class PreAuthenticationData {
    private PreAuthenticationDataType dataType;
    private byte[] dataValue;

    public PreAuthenticationData(PreAuthenticationDataType preAuthenticationDataType, byte[] bArr) {
        this.dataType = preAuthenticationDataType;
        this.dataValue = bArr;
    }

    public PreAuthenticationDataType getDataType() {
        return this.dataType;
    }

    public byte[] getDataValue() {
        return this.dataValue;
    }
}
