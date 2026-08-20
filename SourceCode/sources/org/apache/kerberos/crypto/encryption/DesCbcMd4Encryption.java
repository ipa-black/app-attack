package org.apache.kerberos.crypto.encryption;

import org.apache.kerberos.crypto.checksum.ChecksumEngine;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.crypto.checksum.RsaMd4Checksum;
/* loaded from: classes5.dex */
public class DesCbcMd4Encryption extends DesCbcEncryption {
    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int checksumSize() {
        return 16;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int confounderSize() {
        return 8;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int minimumPadSize() {
        return 0;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumEngine getChecksumEngine() {
        return new RsaMd4Checksum();
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public EncryptionType encryptionType() {
        return EncryptionType.DES_CBC_MD4;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumType checksumType() {
        return ChecksumType.RSA_MD4;
    }
}
