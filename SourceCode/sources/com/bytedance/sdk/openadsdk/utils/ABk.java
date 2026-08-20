package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import java.util.HashMap;
import java.util.Map;
/* compiled from: IPMiEventWatcher.java */
/* loaded from: classes2.dex */
public class ABk implements com.bytedance.sdk.openadsdk.oem.Qhi {
    private static final ABk Qhi = new ABk();
    private static boolean ac;
    private static com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi cJ;

    public static void Qhi(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        com.bytedance.sdk.openadsdk.core.model.EBS NLs = qhi.cJ.NLs();
        if (NLs == null || !NLs.Qhi()) {
            return;
        }
        cJ = qhi;
        IPMiBroadcastReceiver Qhi2 = IPMiBroadcastReceiver.Qhi(qhi.ip);
        if (Qhi2 != null) {
            Qhi2.Qhi(Qhi);
        }
    }

    public static void Qhi() {
        if (cJ == null) {
            return;
        }
        cJ = null;
        IPMiBroadcastReceiver Qhi2 = IPMiBroadcastReceiver.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
        if (Qhi2 != null) {
            Qhi2.Qhi();
        }
        ac = false;
    }

    public static void cJ() {
        ac = true;
    }

    @Override // com.bytedance.sdk.openadsdk.oem.Qhi
    public void Qhi(String str, final int i) {
        com.bytedance.sdk.openadsdk.core.model.ac pv;
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = cJ;
        if (qhi == null || (pv = qhi.cJ.pv()) == null) {
            return;
        }
        String ac2 = pv.ac();
        if (TextUtils.isEmpty(ac2) || !ac2.equals(str)) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.utils.ABk.1
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                if (ABk.cJ == null || (i2 = i) <= 0 || i2 > 5) {
                    return;
                }
                boolean z = true;
                boolean z2 = i2 == 1;
                if (ABk.ac) {
                    ABk.cJ.PAe.CJ();
                    HashMap hashMap = new HashMap();
                    hashMap.put("click_scence", 4);
                    com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Constants.CLICK, ABk.cJ.cJ, new Gm.Qhi().Qhi(), ABk.cJ.fl, true, (Map<String, Object>) hashMap, 1);
                } else {
                    z = z2;
                }
                if (z) {
                    ABk.Qhi();
                }
            }
        });
    }
}
