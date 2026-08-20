package com.bytedance.sdk.component.utils;

import com.google.android.exoplayer2.C;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
/* compiled from: DigestUtils.java */
/* loaded from: classes2.dex */
public class Tgh {
    private static final char[] Qhi = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String Qhi(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        return Qhi(bArr, 0, bArr.length);
    }

    public static String Qhi(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        if (i < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = i2 * 2;
        char[] cArr = new char[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            byte b2 = bArr[i5 + i];
            int i6 = i4 + 1;
            char[] cArr2 = Qhi;
            cArr[i4] = cArr2[(b2 & 255) >> 4];
            i4 += 2;
            cArr[i6] = cArr2[b2 & 15];
        }
        return new String(cArr, 0, i3);
    }

    public static String Qhi(File file) {
        FileInputStream fileInputStream;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            if (messageDigest == null) {
                return null;
            }
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr, 0, 8192);
                    if (read <= 0) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                String Qhi2 = Qhi(messageDigest.digest());
                try {
                    fileInputStream.close();
                } catch (Exception unused) {
                }
                return Qhi2;
            } catch (Throwable unused2) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable unused4) {
            fileInputStream = null;
        }
    }

    public static String Qhi(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes(C.UTF8_NAME));
                    return Qhi(messageDigest.digest());
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
