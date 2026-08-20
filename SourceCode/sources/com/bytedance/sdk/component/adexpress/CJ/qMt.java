package com.bytedance.sdk.component.adexpress.CJ;

import com.bytedance.sdk.component.Sf.ROR;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi;
import com.bytedance.sdk.component.adexpress.Qhi.Qhi.ac;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* compiled from: DynamicThreadUtils.java */
/* loaded from: classes2.dex */
public class qMt {
    public static void Qhi(hm hmVar, int i) {
        if (hmVar == null) {
            return;
        }
        ac ac = Qhi.Qhi().ac();
        ExecutorService iMK = ac != null ? ac.iMK() : null;
        if (iMK != null) {
            hmVar.setPriority(i);
            iMK.execute(hmVar);
            return;
        }
        ROR.Qhi(hmVar, i);
    }

    public static void cJ(hm hmVar, int i) {
        if (hmVar == null) {
            return;
        }
        ac ac = Qhi.Qhi().ac();
        ExecutorService ABk = ac != null ? ac.ABk() : null;
        if (ABk != null) {
            hmVar.setPriority(i);
            ABk.execute(hmVar);
            return;
        }
        ROR.Qhi(hmVar);
    }

    public static ScheduledFuture Qhi(Runnable runnable, long j, TimeUnit timeUnit) {
        return ROR.Tgh().schedule(runnable, j, timeUnit);
    }
}
