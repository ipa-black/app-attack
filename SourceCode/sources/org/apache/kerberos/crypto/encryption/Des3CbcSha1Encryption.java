package org.apache.kerberos.crypto.encryption;

import org.apache.kerberos.crypto.checksum.ChecksumEngine;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.crypto.checksum.Sha1Checksum;
/* loaded from: classes5.dex */
public class Des3CbcSha1Encryption extends Des3CbcEncryption {
    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public int checksumSize() {
        return 20;
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
        return new Sha1Checksum();
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public EncryptionType encryptionType() {
        return EncryptionType.DES3_CBC_SHA1;
    }

    @Override // org.apache.kerberos.crypto.encryption.EncryptionEngine
    public ChecksumType checksumType() {
        return ChecksumType.SHA1;
    }
}
