package com.bytedance.sdk.openadsdk.core.ac.Qhi;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.component.adexpress.cJ.zc;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.lang.ref.WeakReference;
/* compiled from: DynamicClickListener.java */
/* loaded from: classes2.dex */
public class Qhi extends ac implements com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi {
    protected WeakReference<View> Qhi;
    private zc ac;
    protected WeakReference<View> cJ;

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi
    public void Qhi(zc zcVar) {
        this.ac = zcVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi
    public void Qhi(View view) {
        this.Qhi = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi
    public void cJ(View view) {
        this.cJ = new WeakReference<>(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.ac
    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
        Qhi(view, ((Integer) view.getTag()).intValue(), f2, f3, f4, f5, sparseArray);
    }

    private void Qhi(View view, int i, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray) {
        if (this.ac != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.cJ;
            if (weakReference != null) {
                int[] Qhi = zn.Qhi(weakReference.get());
                if (Qhi != null) {
                    iArr = Qhi;
                }
                int[] ac = zn.ac(this.cJ.get());
                if (ac != null) {
                    iArr2 = ac;
                }
            }
            String str = "";
            try {
                if (view.getTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.qMt) != null) {
                    str = String.valueOf(view.getTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.qMt));
                }
            } catch (Exception unused) {
            }
            this.ac.Qhi(view, i, new pA.Qhi().CJ(f2).ac(f3).cJ(f4).Qhi(f5).cJ(this.CQU).Qhi(this.pM).ac(iArr[0]).CJ(iArr[1]).fl(iArr2[0]).Tgh(iArr2[1]).Qhi(sparseArray).Qhi(this.lB).Qhi(str).Qhi());
        }
    }
}
