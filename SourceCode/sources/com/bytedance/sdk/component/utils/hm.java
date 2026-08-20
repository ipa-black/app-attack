package com.bytedance.sdk.component.utils;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: ImageFormatChecker.java */
/* loaded from: classes2.dex */
public class hm {
    private static final byte[] CJ;
    private static final byte[] Qhi;
    private static final int ROR;
    private static final byte[] Tgh;
    private static final byte[] ac;
    private static final byte[] cJ;
    private static final byte[] fl;

    static {
        byte[] bArr = {-1, -40, -1};
        Qhi = bArr;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, 26, 10};
        cJ = bArr2;
        byte[] bArr3 = {0, 0, 1, 0};
        ac = bArr3;
        byte[] Qhi2 = Qhi("BM");
        CJ = Qhi2;
        fl = Qhi("GIF87a");
        Tgh = Qhi("GIF89a");
        ROR = ((Integer) Collections.max(Arrays.asList(Integer.valueOf(bArr.length), Integer.valueOf(bArr2.length), Integer.valueOf(bArr3.length), Integer.valueOf(Qhi2.length), 6))).intValue();
    }

    public static int Qhi() {
        return ROR;
    }

    public static final String Qhi(byte[] bArr) {
        if (cJ(bArr)) {
            return "jpeg";
        }
        if (ac(bArr)) {
            return "png";
        }
        if (CJ(bArr)) {
            return "gif";
        }
        if (fl(bArr)) {
            return "bmp";
        }
        if (Tgh(bArr)) {
            return "ico";
        }
        return "other";
    }

    private static boolean cJ(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = Qhi;
        return length >= bArr2.length && Qhi(bArr, bArr2);
    }

    private static boolean ac(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = cJ;
        return length >= bArr2.length && Qhi(bArr, bArr2);
    }

    private static boolean CJ(byte[] bArr) {
        return (bArr.length >= 6 && Qhi(bArr, fl)) || Qhi(bArr, Tgh);
    }

    private static boolean fl(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = CJ;
        return length >= bArr2.length && Qhi(bArr, bArr2);
    }

    private static boolean Tgh(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = ac;
        return length >= bArr2.length && Qhi(bArr, bArr2);
    }

    private static boolean Qhi(byte[] bArr, byte[] bArr2) {
        return Qhi(bArr, bArr2, 0);
    }

    private static boolean Qhi(byte[] bArr, byte[] bArr2, int i) {
        if (bArr2.length + i > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] Qhi(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII not found!", e2);
        }
    }
}
