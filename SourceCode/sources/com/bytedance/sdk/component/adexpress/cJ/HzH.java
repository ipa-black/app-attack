package com.bytedance.sdk.component.adexpress.cJ;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.CJ.qMt;
import com.bytedance.sdk.component.adexpress.cJ.Gm;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: WebViewRenderInterceptor.java */
/* loaded from: classes2.dex */
public class HzH implements Gm {
    private iMK CJ;
    private Context Qhi;
    private AtomicBoolean Tgh = new AtomicBoolean(false);
    private hm ac;
    private com.bytedance.sdk.component.adexpress.fl.Qhi cJ;
    private ScheduledFuture<?> fl;

    public HzH(Context context, iMK imk, com.bytedance.sdk.component.adexpress.fl.Qhi qhi, hm hmVar) {
        this.Qhi = context;
        this.CJ = imk;
        this.ac = hmVar;
        this.cJ = qhi;
        qhi.Qhi(this.ac);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public boolean Qhi(final Gm.Qhi qhi) {
        int Tgh = this.CJ.Tgh();
        if (Tgh < 0) {
            Qhi(qhi, 107, "time is ".concat(String.valueOf(Tgh)));
        } else {
            this.fl = qMt.Qhi(new Qhi(1, qhi), Tgh, TimeUnit.MILLISECONDS);
            this.cJ.Qhi(new Sf() { // from class: com.bytedance.sdk.component.adexpress.cJ.HzH.1
                @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
                public void Qhi(View view, pA pAVar) {
                    hpZ cJ;
                    HzH.this.ac();
                    if (qhi.ac() || (cJ = qhi.cJ()) == null) {
                        return;
                    }
                    cJ.Qhi(HzH.this.cJ, pAVar);
                    qhi.Qhi(true);
                }

                @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
                public void Qhi(int i, String str) {
                    HzH.this.Qhi(qhi, i, str);
                }
            });
        }
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public void Qhi() {
        this.cJ.CJ();
        ac();
    }

    public com.bytedance.sdk.component.adexpress.fl.Qhi cJ() {
        return this.cJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac() {
        try {
            ScheduledFuture<?> scheduledFuture = this.fl;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.fl.cancel(false);
            this.fl = null;
        } catch (Throwable unused) {
        }
    }

    /* compiled from: WebViewRenderInterceptor.java */
    /* loaded from: classes2.dex */
    private class Qhi implements Runnable {
        Gm.Qhi Qhi;
        private int ac;

        public Qhi(int i, Gm.Qhi qhi) {
            this.ac = i;
            this.Qhi = qhi;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.ac == 1) {
                HzH.this.cJ.Qhi(true);
                HzH.this.Qhi(this.Qhi, 107, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(Gm.Qhi qhi, int i, String str) {
        hpZ cJ;
        if (qhi.ac() || this.Tgh.get()) {
            return;
        }
        ac();
        this.CJ.fl().Qhi(i, str);
        if (qhi.cJ(this)) {
            qhi.Qhi(this);
        } else if (qhi.ac() || (cJ = qhi.cJ()) == null) {
            return;
        } else {
            qhi.Qhi(true);
            cJ.a_(i);
        }
        this.Tgh.getAndSet(true);
    }
}
