package com.bytedance.sdk.openadsdk.core.cJ;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: RewardBarClickListener.java */
/* loaded from: classes2.dex */
public abstract class Tgh extends Qhi {
    protected abstract void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, int i, int i2, int i3, boolean z);

    public Tgh(Context context, tP tPVar, String str, int i) {
        super(context, tPVar, str, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi, com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
        if (Qhi(view, z)) {
            Qhi(view, f2, f3, f4, f5, sparseArray, this.NFd, this.Eh, this.aP, z);
        }
        super.Qhi(view, f2, f3, f4, f5, sparseArray, z);
    }
}
