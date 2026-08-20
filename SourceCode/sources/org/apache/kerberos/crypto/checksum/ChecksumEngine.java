package org.apache.kerberos.crypto.checksum;

import org.apache.kerberos.crypto.encryption.CipherType;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes5.dex */
public abstract class ChecksumEngine {
    public abstract byte[] calculateKeyedChecksum(byte[] bArr, byte[] bArr2);

    public abstract int checksumSize();

    public abstract ChecksumType checksumType();

    public abstract int confounderSize();

    public abstract Digest getDigest();

    public abstract boolean isSafe();

    public abstract int keySize();

    public abstract CipherType keyType();

    public abstract boolean verifyKeyedChecksum(byte[] bArr, byte[] bArr2, byte[] bArr3);

    public byte[] calculateChecksum(byte[] bArr) {
        Digest digest = getDigest();
        digest.reset();
        digest.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[digest.getDigestSize()];
        digest.doFinal(bArr2, 0);
        return bArr2;
    }
}
