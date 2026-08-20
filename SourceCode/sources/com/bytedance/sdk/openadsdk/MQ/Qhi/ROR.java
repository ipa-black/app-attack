package com.bytedance.sdk.openadsdk.MQ.Qhi;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.sDy;
/* compiled from: PAGMrcVisibilityTracker.java */
/* loaded from: classes2.dex */
public class ROR {
    public static boolean Qhi(View view, int i) {
        return Qhi(view, false, i);
    }

    public static boolean Qhi(View view, boolean z, int i) {
        if (view == null) {
            return false;
        }
        return sDy.Qhi(view, z ? 30 : 50, i);
    }
}
