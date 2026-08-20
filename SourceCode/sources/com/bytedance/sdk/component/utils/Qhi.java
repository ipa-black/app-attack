package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;
/* compiled from: AESUtils.java */
/* loaded from: classes2.dex */
public class Qhi {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AESUtils.java */
    /* renamed from: com.bytedance.sdk.component.utils.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0202Qhi {
        static final Random Qhi = Qhi.ac();
    }

    public static JSONObject Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        return Qhi(jSONObject.toString());
    }

    public static JSONObject Qhi(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            try {
                String cJ = cJ(str);
                if (!TextUtils.isEmpty(cJ)) {
                    jSONObject.put("message", cJ);
                    jSONObject.put("cypher", 3);
                } else {
                    jSONObject.put("message", str);
                    jSONObject.put("cypher", 0);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        } catch (Throwable unused) {
            jSONObject.put("message", str);
            jSONObject.put("cypher", 0);
        }
        return jSONObject;
    }

    public static String cJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String Qhi = Qhi();
        String Qhi2 = Qhi(Qhi, 32);
        String cJ = cJ();
        String Qhi3 = (Qhi2 == null || cJ == null) ? null : com.bytedance.sdk.component.CJ.Qhi.Qhi(str, cJ, Qhi2);
        StringBuilder sb = new StringBuilder(ExifInterface.GPS_MEASUREMENT_3D);
        sb.append(Qhi).append(cJ).append(Qhi3);
        return sb.toString();
    }

    public static String ac(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String Qhi = Qhi(str.substring(1, 33), 32);
        String substring = str.substring(33, 49);
        return (substring == null || Qhi == null) ? str : com.bytedance.sdk.component.CJ.Qhi.cJ(str.substring(49), substring, Qhi);
    }

    public static String Qhi() {
        String Qhi = Qhi(16);
        if (Qhi == null || Qhi.length() != 32) {
            return null;
        }
        return Qhi;
    }

    public static String Qhi(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    public static String cJ() {
        String Qhi = Qhi(8);
        if (Qhi == null || Qhi.length() != 16) {
            return null;
        }
        return Qhi;
    }

    public static String Qhi(int i) {
        try {
            byte[] bArr = new byte[i];
            C0202Qhi.Qhi.nextBytes(bArr);
            return Tgh.Qhi(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Random ac() {
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }
}
