package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
/* compiled from: AdPreference.java */
/* loaded from: classes2.dex */
public class ac {
    private static volatile ac Qhi;

    private ac() {
    }

    public static ac Qhi(Context context) {
        if (Qhi == null) {
            synchronized (ac.class) {
                if (Qhi == null) {
                    Qhi = new ac();
                }
            }
        }
        return Qhi;
    }

    public void Qhi(String str, String str2) {
        com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("ttopenadsdk", str, str2);
    }

    public String cJ(String str, String str2) {
        return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("ttopenadsdk", str, str2);
    }

    public void Qhi(String str, int i) {
        com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("ttopenadsdk", str, Integer.valueOf(i));
    }

    public int cJ(String str, int i) {
        return com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("ttopenadsdk", str, i);
    }

    public void Qhi(String str, long j) {
        com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("ttopenadsdk", str, Long.valueOf(j));
    }

    public Long cJ(String str, long j) {
        return Long.valueOf(com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("ttopenadsdk", str, j));
    }
}
