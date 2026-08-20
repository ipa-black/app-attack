package org.apache.kerberos.crypto;

import java.io.UnsupportedEncodingException;
import org.bouncycastle.crypto.engines.DESEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.DESParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes5.dex */
public class DesStringToKey {
    private byte[] _desKey;

    public DesStringToKey(String str) {
        this._desKey = generateKey(str);
    }

    public DesStringToKey(String str, String str2, String str3) {
        this._desKey = generateKey(new StringBuffer().append(str).append(str2).append(str3).toString());
    }

    public byte[] getKey() {
        return this._desKey;
    }

    private byte[] generateKey(String str) {
        byte[] padString = padString(characterEncodeString(str));
        byte[] fanFold = fanFold(padString);
        DESParameters.setOddParity(fanFold);
        if (DESParameters.isWeakKey(fanFold, 0)) {
            fanFold = getStrongKey(fanFold);
        }
        byte[] encryptSecretKey = encryptSecretKey(padString, fanFold);
        DESParameters.setOddParity(encryptSecretKey);
        return DESParameters.isWeakKey(encryptSecretKey, 0) ? getStrongKey(encryptSecretKey) : encryptSecretKey;
    }

    private byte[] fanFold(byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[8];
        int length = bArr.length / 8;
        for (int i2 = 0; i2 < length; i2++) {
            byte[] bArr3 = new byte[8];
            System.arraycopy(bArr, i2 * 8, bArr3, 0, 8);
            if (i2 % 2 == 1) {
                byte[] bArr4 = new byte[8];
                for (int i3 = 0; i3 < 8; i3++) {
                    int i4 = 0;
                    byte b2 = 0;
                    while (true) {
                        if (i4 >= 4) {
                            break;
                        }
                        b2 = (byte) (b2 | ((((byte) ((1 << (7 - i4)) & 255)) & bArr3[i3]) >>> (7 - (i4 * 2))));
                        i4++;
                    }
                    for (i = 4; i < 8; i++) {
                        b2 = (byte) (((((byte) ((1 << (7 - i)) & 255)) & bArr3[i3]) << ((i * 2) - 7)) | b2);
                    }
                    bArr4[7 - i3] = b2;
                }
                for (int i5 = 0; i5 < 8; i5++) {
                    bArr4[i5] = (byte) (((bArr4[i5] & 255) >>> 1) & 255);
                }
                System.arraycopy(bArr4, 0, bArr3, 0, 8);
            }
            for (int i6 = 0; i6 < 8; i6++) {
                bArr3[i6] = (byte) (((bArr3[i6] & 255) << 1) & 255);
            }
            for (int i7 = 0; i7 < 8; i7++) {
                bArr2[i7] = (byte) (bArr2[i7] ^ bArr3[i7]);
            }
        }
        return bArr2;
    }

    private byte[] encryptSecretKey(byte[] bArr, byte[] bArr2) {
        CBCBlockCipher cBCBlockCipher = new CBCBlockCipher(new DESEngine());
        KeyParameter keyParameter = new KeyParameter(bArr2);
        cBCBlockCipher.init(true, new ParametersWithIV(keyParameter, bArr2));
        byte[] bArr3 = new byte[bArr.length];
        byte[] bArr4 = new byte[8];
        for (int i = 0; i < bArr.length / 8; i++) {
            int i2 = i * 8;
            cBCBlockCipher.processBlock(bArr, i2, bArr3, i2);
            System.arraycopy(bArr3, i2, bArr4, 0, 8);
            cBCBlockCipher.init(true, new ParametersWithIV(keyParameter, bArr4));
        }
        return bArr4;
    }

    private byte[] getStrongKey(byte[] bArr) {
        bArr[7] = (byte) (bArr[7] ^ 240);
        return bArr;
    }

    private byte[] characterEncodeString(String str) {
        byte[] bArr = new byte[str.length()];
        try {
            return str.getBytes("8859_1");
        } catch (UnsupportedEncodingException unused) {
            return bArr;
        }
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
}
