package org.apache.kerberos.messages.value;

import org.apache.kerberos.crypto.encryption.EncryptionType;
/* loaded from: classes5.dex */
public class EncryptedData {
    private byte[] cipherText;
    private EncryptionType encryptionType;
    private int keyVersion;

    public EncryptedData(EncryptionType encryptionType, int i, byte[] bArr) {
        this.encryptionType = encryptionType;
        this.keyVersion = i;
        this.cipherText = bArr;
    }

    public EncryptionType getEncryptionType() {
        return this.encryptionType;
    }

    public int getKeyVersion() {
        return this.keyVersion;
    }

    public byte[] getCipherText() {
        return this.cipherText;
    }
}
