package org.apache.kerberos.crypto.encryption;

import org.apache.kerberos.crypto.checksum.ChecksumEngine;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.crypto.checksum.RsaMd5Checksum;
/* loaded from: classes5.dex */
public class Des3CbcMd5Encryption extends Des3CbcEncryption {
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
        return new RsaMd5Checksum();
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public EncryptionType encryptionType() {
        return EncryptionType.DES3_CBC_MD5;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumType checksumType() {
        return ChecksumType.RSA_MD5;
    }
}
