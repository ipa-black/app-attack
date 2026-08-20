package org.apache.kerberos.messages.value;

import org.apache.kerberos.crypto.encryption.EncryptionType;
/* loaded from: classes5.dex */
public class EncryptedDataModifier {
    private byte[] cipherText;
    private EncryptionType encryptionType;
    private int keyVersion;

    public EncryptedData getEncryptedData() {
        return new EncryptedData(this.encryptionType, this.keyVersion, this.cipherText);
    }

    public void setCipherText(byte[] bArr) {
        this.cipherText = bArr;
    }

    public void setEncryptionType(EncryptionType encryptionType) {
        this.encryptionType = encryptionType;
    }

    public void setKeyVersion(int i) {
        this.keyVersion = i;
    }
}
