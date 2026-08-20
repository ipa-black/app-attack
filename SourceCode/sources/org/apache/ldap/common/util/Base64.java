package org.apache.ldap.common.util;
/* loaded from: classes3.dex */
public class Base64 {
    private static char[] s_alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
    private static byte[] s_codes = new byte[256];

    public static char[] encode(byte[] bArr) {
        boolean z;
        char[] cArr = new char[((bArr.length + 2) / 3) * 4];
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            int i3 = (bArr[i] & 255) << 8;
            int i4 = i + 1;
            boolean z2 = true;
            if (i4 < bArr.length) {
                i3 |= bArr[i4] & 255;
                z = true;
            } else {
                z = false;
            }
            int i5 = i3 << 8;
            int i6 = i + 2;
            if (i6 < bArr.length) {
                i5 |= bArr[i6] & 255;
            } else {
                z2 = false;
            }
            int i7 = i2 + 3;
            char[] cArr2 = s_alphabet;
            int i8 = 64;
            cArr[i7] = cArr2[z2 ? i5 & 63 : 64];
            int i9 = i5 >> 6;
            int i10 = i2 + 2;
            if (z) {
                i8 = i9 & 63;
            }
            cArr[i10] = cArr2[i8];
            cArr[i2 + 1] = cArr2[(i5 >> 12) & 63];
            cArr[i2] = cArr2[(i5 >> 18) & 63];
            i += 3;
            i2 += 4;
        }
        return cArr;
    }

    public static byte[] decode(char[] cArr) {
        int length = cArr.length;
        for (char c2 : cArr) {
            if (c2 > 255 || s_codes[c2] < 0) {
                length--;
            }
        }
        int i = (length / 4) * 3;
        int i2 = length % 4;
        if (i2 == 3) {
            i += 2;
        }
        if (i2 == 2) {
            i++;
        }
        byte[] bArr = new byte[i];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < cArr.length; i6++) {
            char c3 = cArr[i6];
            byte b2 = c3 > 255 ? (byte) -1 : s_codes[c3];
            if (b2 >= 0) {
                int i7 = i5 + 6;
                i4 = (i4 << 6) | b2;
                if (i7 >= 8) {
                    i5 -= 2;
                    bArr[i3] = (byte) ((i4 >> i5) & 255);
                    i3++;
                } else {
                    i5 = i7;
                }
            }
        }
        if (i3 == i) {
            return bArr;
        }
        throw new Error(new StringBuffer("Miscalculated data length (wrote ").append(i3).append(" instead of ").append(i).append(")").toString());
    }

    static {
        for (int i = 0; i < 256; i++) {
            s_codes[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            s_codes[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            s_codes[i3] = (byte) (i3 - 71);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            s_codes[i4] = (byte) (i4 + 4);
        }
        byte[] bArr = s_codes;
        bArr[43] = 62;
        bArr[47] = 63;
    }
}
