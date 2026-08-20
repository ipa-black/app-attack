package com.bytedance.adsdk.ugeno.swiper;

import java.util.Collection;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
/* compiled from: SwiperUtils.java */
/* loaded from: classes2.dex */
public class cJ {
    public static int Qhi(boolean z, int i, int i2) {
        if (i2 != 0 && z) {
            int i3 = i - LockFreeTaskQueueCore.MAX_CAPACITY_MASK;
            int abs = Math.abs(i3) % i2;
            return (i3 >= 0 || abs == 0) ? abs : i2 - abs;
        }
        return i;
    }

    public static boolean Qhi(int i, Collection<?> collection) {
        return i >= 0 && i < collection.size();
    }
}
