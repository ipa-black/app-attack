package org.apache.kerberos.crypto.checksum;

import org.apache.kerberos.crypto.encryption.CipherType;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
/* loaded from: classes5.dex */
public class RsaMd5Checksum extends ChecksumEngine {
    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public byte[] calculateKeyedChecksum(byte[] bArr, byte[] bArr2) {
        return null;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public int checksumSize() {
        return 16;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public int confounderSize() {
        return 0;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public boolean isSafe() {
        return false;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public int keySize() {
        return 0;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public boolean verifyKeyedChecksum(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return false;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public Digest getDigest() {
        return new MD5Digest();
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public ChecksumType checksumType() {
        return ChecksumType.RSA_MD5;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public CipherType keyType() {
        return CipherType.NULL;
    }
}
