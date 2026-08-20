package com.bykv.vk.openvk.preload.geckox.utils;

import java.io.InputStream;
import java.security.MessageDigest;
/* compiled from: MD5Utils.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f8598a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static void a(InputStream inputStream, String str) throws Exception {
        if (str == null) {
            throw new RuntimeException("md5 check failed: md5 == null");
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            try {
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = inputStream.read(bArr, 0, 4096);
                        if (read == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, read);
                    }
                    try {
                        byte[] digest = messageDigest.digest();
                        String a2 = a(digest, digest.length);
                        if (!str.equals(a2)) {
                            throw new RuntimeException("md5 check failed file: local md5:" + a2 + " expect md5:" + str);
                        }
                    } catch (Exception e2) {
                        throw new RuntimeException("md5 check failed:" + e2.getMessage(), e2);
                    }
                } catch (Exception e3) {
                    throw new RuntimeException("md5 check failed:" + e3.getMessage(), e3);
                }
            } finally {
                CloseableUtils.close(inputStream);
            }
        } catch (Exception e4) {
            throw new RuntimeException("md5 check failed:" + e4.getMessage(), e4);
        }
    }

    private static String a(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        if (i > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i2 = i * 2;
        char[] cArr = new char[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            byte b2 = bArr[i4];
            int i5 = i3 + 1;
            char[] cArr2 = f8598a;
            cArr[i3] = cArr2[(b2 & 255) >> 4];
            i3 += 2;
            cArr[i5] = cArr2[b2 & 15];
        }
        return new String(cArr, 0, i2);
    }
}
