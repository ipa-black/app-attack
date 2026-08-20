package com.bytedance.sdk.openadsdk.component.Qhi;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.tP;
import java.util.HashMap;
/* compiled from: TTAppOpenAdClickListener.java */
/* loaded from: classes2.dex */
public class Qhi extends com.bytedance.sdk.openadsdk.core.cJ.Qhi {
    private final com.bytedance.sdk.openadsdk.component.Sf.Qhi Qhi;

    public Qhi(Context context, tP tPVar, String str, int i, com.bytedance.sdk.openadsdk.component.Sf.Qhi qhi) {
        super(context, tPVar, str, i);
        this.Qhi = qhi;
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi, com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
        if (view.getTag() == "open_ad_click_button_tag") {
            Qhi("click_bar");
        } else {
            Qhi("click_material");
        }
        HashMap hashMap = new HashMap();
        hashMap.put("duration", Long.valueOf(this.Qhi.cJ()));
        Qhi(hashMap);
        super.Qhi(view, f2, f3, f4, f5, sparseArray, z);
        Tgh.Qhi(this.Tgh, 9);
    }
}
