package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: AppSigning.java */
/* loaded from: classes2.dex */
public class ac {
    private static HashMap<String, ArrayList<String>> Qhi = new HashMap<>();

    public static ArrayList<String> Qhi(Context context, String str) {
        Signature[] cJ;
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (Qhi.get(str) != null) {
                return Qhi.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : cJ(context, packageName)) {
                    String str2 = "error!";
                    if ("MD5".equals(str)) {
                        str2 = Qhi(signature, "MD5");
                    } else if ("SHA1".equals(str)) {
                        str2 = Qhi(signature, "SHA1");
                    } else if ("SHA256".equals(str)) {
                        str2 = Qhi(signature, "SHA256");
                    }
                    arrayList.add(str2);
                }
            } catch (Exception e2) {
                ABk.cJ(e2.toString());
            }
            Qhi.put(str, arrayList);
        }
        return arrayList;
    }

    public static String Qhi(Context context) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> Qhi2 = Qhi(context, "SHA1");
        if (Qhi2 != null && Qhi2.size() != 0) {
            for (int i = 0; i < Qhi2.size(); i++) {
                sb.append(Qhi2.get(i));
                if (i < Qhi2.size() - 1) {
                    sb.append(",");
                }
            }
        }
        return sb.toString();
    }

    private static Signature[] cJ(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e2) {
            ABk.cJ(e2.toString());
            return null;
        }
    }

    private static String Qhi(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] digest = messageDigest.digest(byteArray);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1).toString();
        } catch (Exception e2) {
            ABk.cJ(e2.toString());
            return "error!";
        }
    }
}
