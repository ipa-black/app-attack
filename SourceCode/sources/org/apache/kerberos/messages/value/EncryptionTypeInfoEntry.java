package org.apache.kerberos.messages.value;

import org.apache.kerberos.crypto.encryption.EncryptionType;
/* loaded from: classes5.dex */
public class EncryptionTypeInfoEntry {
    private EncryptionType encryptionType;
    private byte[] salt;

    public EncryptionTypeInfoEntry(EncryptionType encryptionType, byte[] bArr) {
        this.encryptionType = encryptionType;
        this.salt = bArr;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public EncryptionType getEncryptionType() {
        return this.encryptionType;
    }
}
