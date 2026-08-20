package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.component.ROR.Qhi;
import com.bytedance.sdk.openadsdk.component.Sf;
/* loaded from: classes2.dex */
public class TTC2Proxy {
    private TTC2Proxy() {
    }

    public static void load(Context context, AdSlot adSlot, PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener, int i) {
        adSlot.setDurationSlotType(3);
        Sf.Qhi(context).Qhi(adSlot, pAGAppOpenAdLoadListener, i);
    }

    public static void a(Context context) {
        Qhi.Qhi(context);
    }
}
