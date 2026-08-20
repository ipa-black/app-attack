package com.bytedance.sdk.component.adexpress.cJ;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.cJ.Gm;
/* compiled from: NativeRenderInterceptor.java */
/* loaded from: classes2.dex */
public class ROR implements Gm {
    private Context Qhi;
    private iMK ac;
    private Qhi cJ;

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public void Qhi() {
    }

    public ROR(Context context, iMK imk, Qhi qhi) {
        this.Qhi = context;
        this.cJ = qhi;
        this.ac = imk;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public boolean Qhi(final Gm.Qhi qhi) {
        this.ac.fl().Tgh();
        this.cJ.Qhi(new Sf() { // from class: com.bytedance.sdk.component.adexpress.cJ.ROR.1
            @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
            public void Qhi(View view, pA pAVar) {
                if (qhi.ac()) {
                    return;
                }
                hpZ cJ = qhi.cJ();
                if (cJ != null) {
                    cJ.Qhi(ROR.this.cJ, pAVar);
                }
                qhi.Qhi(true);
            }

            @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
            public void Qhi(int i, String str) {
                hpZ cJ = qhi.cJ();
                if (cJ != null) {
                    cJ.a_(i);
                }
            }
        });
        return true;
    }

    public void Qhi(ac acVar) {
        this.cJ.Qhi(acVar);
    }
}
