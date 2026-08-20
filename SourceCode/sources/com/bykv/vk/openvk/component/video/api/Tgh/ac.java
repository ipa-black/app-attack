package com.bykv.vk.openvk.component.video.api.Tgh;
/* compiled from: VLogger.java */
/* loaded from: classes2.dex */
public class ac {
    private static boolean Qhi = false;
    private static String ac = "";
    private static int cJ = 4;

    public static void Qhi(String str) {
        ac = str;
    }

    public static void Qhi(int i) {
        cJ = i;
    }

    public static void Qhi() {
        Qhi = true;
        Qhi(3);
    }

    public static void cJ() {
        Qhi = false;
        Qhi(7);
    }

    public static boolean ac() {
        return Qhi;
    }
}
