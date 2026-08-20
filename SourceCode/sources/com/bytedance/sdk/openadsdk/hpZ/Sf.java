package com.bytedance.sdk.openadsdk.hpZ;
/* compiled from: PlayableLog.java */
/* loaded from: classes2.dex */
public class Sf {
    private static Qhi Qhi;

    /* compiled from: PlayableLog.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(String str, String str2, Throwable th);
    }

    public static void Qhi(Qhi qhi) {
        Qhi = qhi;
    }

    public static boolean Qhi() {
        return Qhi != null;
    }

    public static void Qhi(String str, String str2, Throwable th) {
        if (Qhi == null) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        Qhi.Qhi(str, str2, th);
    }
}
