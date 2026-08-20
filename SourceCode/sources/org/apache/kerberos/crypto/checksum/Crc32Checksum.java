package org.apache.kerberos.crypto.checksum;

import java.util.zip.CRC32;
import org.apache.kerberos.crypto.encryption.CipherType;
import org.bouncycastle.crypto.Digest;
/* loaded from: classes5.dex */
public class Crc32Checksum extends ChecksumEngine {
    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public byte[] calculateKeyedChecksum(byte[] bArr, byte[] bArr2) {
        return null;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public int checksumSize() {
        return 4;
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
        return new CRC32Digest();
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public ChecksumType checksumType() {
        return ChecksumType.CRC32;
    }

    @Override // org.apache.kerberos.crypto.checksum.ChecksumEngine
    public CipherType keyType() {
        return CipherType.NULL;
    }

    /* loaded from: classes5.dex */
    private class CRC32Digest implements Digest {
        private CRC32 crc32;

        public int getDigestSize() {
            return 4;
        }

        private CRC32Digest() {
            this.crc32 = new CRC32();
        }

        public String getAlgorithmName() {
            return "CRC-32";
        }

        public void reset() {
            this.crc32.reset();
        }

        public void update(byte b2) {
            this.crc32.update(b2);
        }

        public void update(byte[] bArr, int i, int i2) {
            this.crc32.update(bArr, i, i2);
        }

        public int doFinal(byte[] bArr, int i) {
            int2octet((int) this.crc32.getValue());
            return 0;
        }

        private byte[] int2octet(int i) {
            byte[] bArr = new byte[4];
            int i2 = 0;
            int i3 = 24;
            while (i2 < 4) {
                bArr[i2] = (byte) ((i >> i3) & 255);
                i2++;
                i3 -= 8;
            }
            return bArr;
        }
    }
}
