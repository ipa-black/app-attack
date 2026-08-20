package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: ChooseAdHelper.java */
/* loaded from: classes2.dex */
public class Qhi {
    public static void Qhi(com.bytedance.sdk.openadsdk.core.model.Qhi qhi, int i, boolean z) {
        if (qhi == null || qhi.ac() == null || qhi.ac().size() <= 0) {
            return;
        }
        if (i >= qhi.ac().size()) {
            i = 0;
        }
        tP tPVar = qhi.ac().get(i);
        Context Qhi = HzH.Qhi();
        Qhi(tPVar, !TextUtils.isEmpty(z ? zc.Qhi(Qhi).Qhi(tPVar) : fl.Qhi(Qhi).Qhi(tPVar)), z);
    }

    public static void Qhi(final tP tPVar, final boolean z, final boolean z2) {
        com.bytedance.sdk.openadsdk.core.iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.1
            @Override // java.lang.Runnable
            public void run() {
                if (tP.this == null) {
                    return;
                }
                try {
                    Context Qhi = HzH.Qhi();
                    AdSlot lB = tP.this.lB();
                    if (lB != null) {
                        int cJ = Tgh.cJ();
                        if (cJ == 0 || cJ == 2) {
                            if (z2) {
                                ABk.Qhi(Qhi).Qhi(lB.getCodeId(), tP.this);
                            } else {
                                Tgh.Qhi(Qhi).Qhi(lB.getCodeId(), tP.this);
                            }
                        }
                        if (z) {
                            if (z2) {
                                ABk.Qhi(Qhi).Qhi(lB);
                            } else {
                                Tgh.Qhi(Qhi).Qhi(lB);
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
