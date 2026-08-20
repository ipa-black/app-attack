package org.apache.kerberos.messages.value;
/* loaded from: classes5.dex */
public class PreAuthenticationDataModifier {
    private PreAuthenticationDataType dataType;
    private byte[] dataValue;

    public PreAuthenticationData getPreAuthenticationData() {
        return new PreAuthenticationData(this.dataType, this.dataValue);
    }

    public void setDataType(PreAuthenticationDataType preAuthenticationDataType) {
        this.dataType = preAuthenticationDataType;
    }

    public void setDataValue(byte[] bArr) {
        this.dataValue = bArr;
    }
}
