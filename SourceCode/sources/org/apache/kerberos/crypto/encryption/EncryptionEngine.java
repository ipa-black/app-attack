package org.apache.kerberos.crypto.encryption;

import java.security.SecureRandom;
import org.apache.kerberos.crypto.checksum.ChecksumEngine;
import org.apache.kerberos.crypto.checksum.ChecksumType;
import org.apache.kerberos.exceptions.KerberosException;
import org.apache.kerberos.messages.value.EncryptedData;
import org.apache.kerberos.messages.value.EncryptionKey;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes5.dex */
public abstract class EncryptionEngine {
    private static final SecureRandom random = new SecureRandom();

    public abstract int blockSize();

    public abstract int checksumSize();

    public abstract ChecksumType checksumType();

    public abstract int confounderSize();

    public abstract EncryptionType encryptionType();

    public abstract BlockCipher getBlockCipher();

    public abstract ChecksumEngine getChecksumEngine();

    public abstract int keySize();

    public abstract CipherType keyType();

    public abstract int minimumPadSize();

    public byte[] getDecryptedData(EncryptionKey encryptionKey, EncryptedData encryptedData) throws KerberosException {
        return removeBytes(decrypt(encryptedData.getCipherText(), encryptionKey.getKeyValue()), confounderSize(), checksumSize());
    }

    public EncryptedData getEncryptedData(EncryptionKey encryptionKey, byte[] bArr) throws KerberosException {
        byte[] concatenateBytes = concatenateBytes(getRandomBytes(confounderSize()), concatenateBytes(new byte[checksumSize()], padString(bArr)));
        byte[] calculateChecksum = calculateChecksum(concatenateBytes);
        byte[] padString = padString(concatenateBytes);
        for (int confounderSize = confounderSize(); confounderSize < confounderSize() + checksumSize(); confounderSize++) {
            padString[confounderSize] = calculateChecksum[confounderSize - confounderSize()];
        }
        return new EncryptedData(encryptionType(), encryptionKey.getKeyVersion(), encrypt(padString, encryptionKey.getKeyValue()));
    }

    private byte[] encrypt(byte[] bArr, byte[] bArr2) {
        return processBlockCipher(true, bArr, bArr2, null);
    }

    private byte[] decrypt(byte[] bArr, byte[] bArr2) {
        return processBlockCipher(false, bArr, bArr2, null);
    }

    private byte[] getRandomBytes(int i) {
        byte[] bArr = new byte[i];
        random.nextBytes(bArr);
        return bArr;
    }

    private byte[] padString(byte[] bArr) {
        int length;
        if (bArr.length < 8) {
            length = bArr.length;
        } else {
            length = bArr.length % 8;
        }
        if (length == 0) {
            return bArr;
        }
        int length2 = (8 - length) + bArr.length;
        byte[] bArr2 = new byte[length2];
        while (true) {
            length2--;
            if (length2 > bArr.length - 1) {
                bArr2[length2] = 0;
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                return bArr2;
            }
        }
    }

    private byte[] concatenateBytes(byte[] bArr, byte[] bArr2) {
        int length = bArr.length + bArr2.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = bArr[i];
        }
        for (int length2 = bArr.length; length2 < length; length2++) {
            bArr3[length2] = bArr2[length2 - bArr.length];
        }
        return bArr3;
    }

    private byte[] calculateChecksum(byte[] bArr) {
        return getChecksumEngine().calculateChecksum(bArr);
    }

    private byte[] removeBytes(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[(bArr.length - i) - i2];
        int i3 = 0;
        for (int i4 = i + i2; i4 < bArr.length; i4++) {
            bArr2[i3] = bArr[i4];
            i3++;
        }
        return bArr2;
    }

    private byte[] processBlockCipher(boolean z, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr.length;
        byte[] bArr4 = new byte[length];
        CBCBlockCipher cBCBlockCipher = new CBCBlockCipher(getBlockCipher());
        KeyParameter keyParameter = new KeyParameter(bArr2);
        if (bArr3 != null) {
            cBCBlockCipher.init(z, new ParametersWithIV(keyParameter, bArr3));
        } else {
            cBCBlockCipher.init(z, keyParameter);
        }
        int i = 0;
        while (i < length) {
            try {
                i += cBCBlockCipher.processBlock(bArr, i, bArr4, i);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return bArr4;
    }
}
