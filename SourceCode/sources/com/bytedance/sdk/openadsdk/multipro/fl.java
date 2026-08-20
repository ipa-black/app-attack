package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.HzH;
/* compiled from: TTPathConst.java */
/* loaded from: classes2.dex */
public class fl {
    public static String Qhi = "com.bytedance.openadsdk";
    public static String cJ = "content://" + Qhi + ".TTMultiProvider";

    static {
        Qhi();
    }

    public static void Qhi() {
        if (HzH.Qhi() != null) {
            Qhi = HzH.Qhi().getPackageName();
            cJ = "content://" + Qhi + ".TTMultiProvider";
        }
    }
}
