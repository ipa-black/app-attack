package com.bytedance.sdk.openadsdk.component.Qhi;

import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenAdExpressView;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.ROR;
import com.bytedance.sdk.openadsdk.core.nativeexpress.Sf;
import com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh;
import java.util.HashMap;
/* compiled from: TTAppOpenAdClickManager.java */
/* loaded from: classes2.dex */
public class cJ {
    public static Qhi Qhi(tP tPVar, Activity activity, com.bytedance.sdk.openadsdk.component.Sf.Qhi qhi) {
        Qhi qhi2 = new Qhi(activity.getApplicationContext(), tPVar, "open_ad", 4, qhi);
        qhi2.Qhi(activity.findViewById(16908290));
        qhi2.cJ(activity.findViewById(520093713));
        Qhi(activity.getApplicationContext(), tPVar, qhi2);
        Qhi(qhi2, tPVar);
        return qhi2;
    }

    public static Sf Qhi(tP tPVar, Activity activity, final com.bytedance.sdk.openadsdk.component.Sf.Qhi qhi, PAGAppOpenAdExpressView pAGAppOpenAdExpressView) {
        Sf sf = new Sf(activity, tPVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.Qhi.cJ.1
            @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
            public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
                HashMap hashMap = new HashMap();
                hashMap.put("duration", Long.valueOf(qhi.cJ()));
                Qhi(hashMap);
                super.Qhi(view, f2, f3, f4, f5, sparseArray, z);
            }
        };
        sf.Qhi(pAGAppOpenAdExpressView);
        Qhi(activity.getApplicationContext(), tPVar, sf);
        Qhi(sf, tPVar);
        return sf;
    }

    public static ROR cJ(tP tPVar, Activity activity, final com.bytedance.sdk.openadsdk.component.Sf.Qhi qhi, PAGAppOpenAdExpressView pAGAppOpenAdExpressView) {
        ROR ror = new ROR(activity.getApplicationContext(), tPVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.Qhi.cJ.2
            @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi, com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
            public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
                HashMap hashMap = new HashMap();
                hashMap.put("duration", Long.valueOf(qhi.cJ()));
                Qhi(hashMap);
                super.Qhi(view, f2, f3, f4, f5, sparseArray, z);
            }
        };
        ror.Qhi((View) pAGAppOpenAdExpressView);
        Qhi(activity.getApplicationContext(), tPVar, ror);
        Qhi(ror, tPVar);
        return ror;
    }

    public static void Qhi(com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar, tP tPVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("click_area", Integer.valueOf(tPVar.zc()));
        hashMap.put("openad_creative_type", tP.fl(tPVar) ? "video_normal_ad" : "image_normal_ad");
        hashMap.put("click_scence", Integer.valueOf(bxS.Gm(tPVar) ? 3 : 1));
        cJVar.Qhi(hashMap);
    }

    private static void Qhi(Context context, tP tPVar, com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar) {
        if (tPVar == null || tPVar.ip() != 4) {
            return;
        }
        cJVar.Qhi(Tgh.Qhi(context, tPVar, "open_ad"));
    }
}
