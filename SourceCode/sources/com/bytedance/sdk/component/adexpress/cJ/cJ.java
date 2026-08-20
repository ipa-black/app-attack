package com.bytedance.sdk.component.adexpress.cJ;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.cJ.Gm;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
/* compiled from: DynamicRenderInterceptor.java */
/* loaded from: classes2.dex */
public class cJ implements Gm {
    private hm CJ;
    private Context Qhi;
    private int Tgh;
    private ThemeStatusBroadcastReceiver ac;
    private com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi cJ;
    private iMK fl;

    public cJ(Context context, iMK imk, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, com.bytedance.sdk.component.adexpress.dynamic.CJ.WAv wAv, hm hmVar, com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi qhi, com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi qhi2) {
        this.Qhi = context;
        this.fl = imk;
        this.ac = themeStatusBroadcastReceiver;
        this.CJ = hmVar;
        if (qhi2 != null) {
            this.cJ = qhi2;
        } else {
            this.cJ = new com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi(this.Qhi, this.ac, z, wAv, this.fl, qhi);
        }
        this.cJ.Qhi(this.CJ);
        if (wAv instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm) {
            this.Tgh = 3;
        } else {
            this.Tgh = 2;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public boolean Qhi(final Gm.Qhi qhi) {
        this.fl.fl().Qhi(this.Tgh);
        this.cJ.Qhi(new Sf() { // from class: com.bytedance.sdk.component.adexpress.cJ.cJ.1
            @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
            public void Qhi(View view, pA pAVar) {
                if (qhi.ac()) {
                    return;
                }
                cJ.this.fl.fl().fl(cJ.this.Tgh);
                cJ.this.fl.fl().Tgh(cJ.this.Tgh);
                cJ.this.fl.fl().WAv();
                hpZ cJ = qhi.cJ();
                if (cJ == null) {
                    return;
                }
                cJ.Qhi(cJ.this.cJ, pAVar);
                qhi.Qhi(true);
            }

            @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
            public void Qhi(int i, String str) {
                cJ.this.fl.fl().Qhi(cJ.this.Tgh, i, str, qhi.cJ(cJ.this));
                if (qhi.cJ(cJ.this)) {
                    qhi.Qhi(cJ.this);
                    return;
                }
                hpZ cJ = qhi.cJ();
                if (cJ == null) {
                    return;
                }
                cJ.a_(i);
            }
        });
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public void Qhi() {
        com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi qhi = this.cJ;
        if (qhi != null) {
            qhi.cJ();
        }
    }

    public com.bytedance.sdk.component.adexpress.dynamic.fl cJ() {
        com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi qhi = this.cJ;
        if (qhi != null) {
            return qhi.CJ();
        }
        return null;
    }
}
