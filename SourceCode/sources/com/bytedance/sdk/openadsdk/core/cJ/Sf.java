package com.bytedance.sdk.openadsdk.core.cJ;

import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.utils.iMK;
/* compiled from: VastClickListenerWrapper.java */
/* loaded from: classes2.dex */
public abstract class Sf extends ac {
    private final String Qhi;
    private ac ac;
    private final com.bytedance.sdk.openadsdk.core.ROR.Qhi cJ;

    public Sf(String str, com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi) {
        this(str, qhi, null);
    }

    public Sf(String str, com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi, ac acVar) {
        this.Qhi = str;
        this.cJ = qhi;
        this.ac = acVar;
    }

    public void Qhi(ac acVar) {
        this.ac = acVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.cJ.ac
    public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
        com.bytedance.sdk.openadsdk.core.ROR.Qhi qhi = this.cJ;
        if (qhi != null) {
            qhi.fl(this.Qhi);
        }
        if (view != null) {
            if (view.getId() == iMK.ac) {
                view.setTag(570425345, "VAST_TITLE");
            } else if (view.getId() == iMK.ROR) {
                view.setTag(570425345, "VAST_DESCRIPTION");
            } else {
                view.setTag(570425345, this.Qhi);
            }
        }
        ac acVar = this.ac;
        if (acVar != null) {
            acVar.CQU = this.CQU;
            this.ac.pM = this.pM;
            this.ac.Eh = this.Eh;
            this.ac.aP = this.Eh;
            this.ac.NFd = this.Eh;
            this.ac.Qhi(view, f2, f3, f4, f5, sparseArray, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.ac, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return super.onTouch(view, motionEvent);
    }
}
