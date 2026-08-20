package com.bytedance.sdk.component.Tgh.Qhi;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: AdLogManager.java */
/* loaded from: classes2.dex */
public class cJ {
    private static volatile List<Object> Qhi = new ArrayList();

    public static void Qhi(Qhi qhi, Context context) {
        fl.Qhi.Qhi(qhi, context);
    }

    public static void Qhi(boolean z) {
        fl.Qhi.Qhi(z);
    }

    public static List<Object> Qhi() {
        return Qhi;
    }

    public static boolean cJ() {
        return hm.ROR().hpZ() == null || hm.ROR().Tgh() == null;
    }

    public static void ac() {
        Qhi(false);
        fl.Qhi.Qhi();
    }

    public static void CJ() {
        fl.Qhi.cJ();
    }

    public static void Qhi(String str, boolean z) {
        fl.Qhi.Qhi(str, z);
    }

    public static void Qhi(String str, List<String> list, boolean z, int i, String str2) {
        Qhi(str, list, z, null, i, str2);
    }

    public static void Qhi(String str, List<String> list, boolean z, Map<String, String> map, int i, String str2) {
        fl.Qhi.Qhi(str, list, z, map, i, str2);
    }

    public static void fl() {
        fl flVar = fl.Qhi;
    }

    public static void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh) {
        fl.Qhi.Qhi(tgh);
    }
}
