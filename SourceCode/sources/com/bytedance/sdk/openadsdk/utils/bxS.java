package com.bytedance.sdk.openadsdk.utils;

import com.google.common.primitives.SignedBytes;
import java.security.SecureRandom;
import java.util.UUID;
/* compiled from: PangleUUID.java */
/* loaded from: classes2.dex */
public class bxS {
    private static final ThreadLocal<SecureRandom> Qhi = new ThreadLocal<>();

    public static String Qhi() {
        byte[] bArr = new byte[16];
        ThreadLocal<SecureRandom> threadLocal = Qhi;
        SecureRandom secureRandom = threadLocal.get();
        if (secureRandom == null) {
            secureRandom = new SecureRandom();
            threadLocal.set(secureRandom);
        }
        secureRandom.nextBytes(bArr);
        byte b2 = (byte) (bArr[6] & 15);
        bArr[6] = b2;
        bArr[6] = (byte) (b2 | SignedBytes.MAX_POWER_OF_TWO);
        byte b3 = (byte) (bArr[8] & 63);
        bArr[8] = b3;
        bArr[8] = (byte) (b3 | 128);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < 8; i++) {
            j2 = (j2 << 8) | (bArr[i] & 255);
        }
        for (int i2 = 8; i2 < 16; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return new UUID(j2, j).toString();
    }
}
