package com.bytedance.sdk.component.Tgh.Qhi.ac;

import com.bytedance.sdk.component.Tgh.Qhi.Tgh;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: EventMonitorUtils.java */
/* loaded from: classes2.dex */
public class cJ {
    public static void Qhi(AtomicLong atomicLong, int i) {
        Tgh hpZ = hm.ROR().hpZ();
        if (hpZ == null || !hpZ.ROR() || atomicLong == null) {
            return;
        }
        atomicLong.getAndAdd(i);
    }
}
