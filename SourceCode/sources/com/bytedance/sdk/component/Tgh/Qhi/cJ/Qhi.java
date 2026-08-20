package com.bytedance.sdk.component.Tgh.Qhi.cJ;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
/* compiled from: DBEventUtils.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static long Qhi(int i, Context context) {
        return cJ(i, context);
    }

    private static long cJ(int i, Context context) {
        if (context == null) {
            return i;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.freeMemory() / 1048576;
        long maxMemory = (runtime.maxMemory() / 1048576) - (runtime.totalMemory() / 1048576);
        if (maxMemory <= 0) {
            if (freeMemory <= 2) {
                return 1L;
            }
            if (freeMemory <= 10) {
                return Math.min(i, 10);
            }
            return Math.min((freeMemory / 2) * 10, i);
        }
        long j = ((freeMemory + maxMemory) - 10) / 2;
        if (j <= 2) {
            return 1L;
        }
        if (j <= 10) {
            return Math.min(i, 10);
        }
        return Math.min(j * 10, i);
    }

    public static boolean Qhi() {
        Tgh CJ = hm.ROR().CJ();
        return (CJ == null || TextUtils.isEmpty(CJ.Qhi())) ? false : true;
    }

    public static boolean cJ() {
        Tgh CJ = hm.ROR().CJ();
        return (CJ == null || TextUtils.isEmpty(CJ.cJ())) ? false : true;
    }

    public static boolean ac() {
        Tgh CJ = hm.ROR().CJ();
        return (CJ == null || TextUtils.isEmpty(CJ.CJ())) ? false : true;
    }

    public static boolean CJ() {
        Tgh CJ = hm.ROR().CJ();
        return (CJ == null || TextUtils.isEmpty(CJ.fl())) ? false : true;
    }

    public static boolean fl() {
        Tgh CJ = hm.ROR().CJ();
        return (CJ == null || TextUtils.isEmpty(CJ.ac())) ? false : true;
    }

    public static boolean Tgh() {
        Tgh CJ = hm.ROR().CJ();
        return (CJ == null || TextUtils.isEmpty(CJ.Tgh())) ? false : true;
    }
}
