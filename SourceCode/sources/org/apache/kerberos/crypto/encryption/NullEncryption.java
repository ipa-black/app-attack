package org.apache.kerberos.crypto.encryption;

import org.apache.kerberos.crypto.checksum.ChecksumEngine;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.bouncycastle.crypto.BlockCipher;
/* loaded from: classes5.dex */
public class NullEncryption extends EncryptionEngine {
    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int blockSize() {
        return 1;
    }

    public byte[] calculateChecksum(byte[] bArr) {
        return null;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int checksumSize() {
        return 0;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int confounderSize() {
        return 0;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public BlockCipher getBlockCipher() {
        return null;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumEngine getChecksumEngine() {
        return null;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int keySize() {
        return 0;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int minimumPadSize() {
        return 0;
    }

    protected byte[] processBlockCipher(boolean z, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return bArr;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public EncryptionType encryptionType() {
        return EncryptionType.NULL;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public CipherType keyType() {
        return CipherType.NULL;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumType checksumType() {
        return ChecksumType.NULL;
    }
}
