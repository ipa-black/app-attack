package com.appsgeyser.sdk.inapp.utils;

import android.util.Base64;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public class Decoder {
    public static final String VERIFIER_ACCESS = "InAppAccess";
    public static final String VERIFIER_DISABLE_ADS = "DisableAds";

    public static String encrypt(String str, String str2, String str3) {
        byte[] decode = Base64.decode(str, 0);
        String str4 = str3 + md5(str2 + ":" + str3);
        StringBuilder sb = new StringBuilder();
        while (sb.length() < decode.length) {
            sb.append(str4);
        }
        byte[] bytes = sb.substring(0, decode.length).getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[decode.length];
        for (int i = 0; i < decode.length; i++) {
            bArr[i] = (byte) (decode[i] ^ bytes[i]);
        }
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
