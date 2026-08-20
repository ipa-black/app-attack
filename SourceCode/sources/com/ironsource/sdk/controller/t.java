package com.ironsource.sdk.controller;

import java.security.MessageDigest;
/* loaded from: classes3.dex */
final class t {

    /* renamed from: a  reason: collision with root package name */
    String f11783a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(String str) {
        this.f11783a = str;
    }

    private String a(String str) {
        try {
            return com.ironsource.sdk.utils.c.a(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return b(str);
        }
    }

    private String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, String str2, String str3) {
        try {
            return str3.equalsIgnoreCase(a(str + str2 + this.f11783a));
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
