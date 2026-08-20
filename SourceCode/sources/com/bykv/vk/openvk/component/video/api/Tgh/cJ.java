package com.bykv.vk.openvk.component.video.api.Tgh;

import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: MD5.java */
/* loaded from: classes2.dex */
public class cJ {
    private static final MessageDigest Qhi = Qhi();
    private static final char[] cJ = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private cJ() {
    }

    private static MessageDigest Qhi() {
        try {
            return MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String Qhi(String str) {
        byte[] digest;
        MessageDigest messageDigest = Qhi;
        if (messageDigest == null || TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes = str.getBytes(Charset.forName(C.UTF8_NAME));
        synchronized (cJ.class) {
            digest = messageDigest.digest(bytes);
        }
        return Qhi(digest);
    }

    public static String Qhi(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = cJ;
            cArr[i] = cArr2[(b2 & 240) >> 4];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }
}
