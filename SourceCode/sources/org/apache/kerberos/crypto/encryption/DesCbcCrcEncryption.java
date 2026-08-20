package org.apache.kerberos.crypto.encryption;

import org.apache.kerberos.crypto.checksum.ChecksumEngine;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.crypto.checksum.Crc32Checksum;
/* loaded from: classes5.dex */
public class DesCbcCrcEncryption extends DesCbcEncryption {
    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int checksumSize() {
        return 4;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int confounderSize() {
        return 8;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int minimumPadSize() {
        return 4;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumEngine getChecksumEngine() {
        return new Crc32Checksum();
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public EncryptionType encryptionType() {
        return EncryptionType.DES_CBC_CRC;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumType checksumType() {
        return ChecksumType.CRC32;
    }

    public CipherType cipherType() {
        return CipherType.DES;
    }
}
