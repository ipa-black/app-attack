package com.bytedance.sdk.openadsdk.core.ugen.component;

import android.content.Context;
import android.view.View;
import com.bytedance.adsdk.ugeno.core.hpZ;
import com.bytedance.sdk.component.adexpress.cJ.Gm;
import com.bytedance.sdk.component.adexpress.cJ.Sf;
import com.bytedance.sdk.component.adexpress.cJ.hm;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: UGenRenderInterceptor.java */
/* loaded from: classes2.dex */
public class fl implements Gm {
    private ScheduledFuture<?> CJ;
    private Context Qhi;
    private iMK ac;
    private com.bytedance.sdk.openadsdk.core.ugen.ac.ac cJ;
    private AtomicBoolean fl = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public void Qhi() {
    }

    public fl(Context context, com.bytedance.sdk.openadsdk.core.ugen.ac.ac acVar, hm hmVar, iMK imk) {
        this.Qhi = context;
        this.cJ = acVar;
        this.ac = imk;
        this.cJ.Qhi(hmVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.Gm
    public boolean Qhi(final Gm.Qhi qhi) {
        int Tgh = this.ac.Tgh();
        if (Tgh < 0) {
            Qhi(qhi, 137, "time is ".concat(String.valueOf(Tgh)));
        } else {
            this.CJ = lG.Qhi().schedule(new Qhi(1, qhi), Tgh, TimeUnit.MILLISECONDS);
            this.cJ.Qhi(new Sf() { // from class: com.bytedance.sdk.openadsdk.core.ugen.component.fl.1
                @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
                public void Qhi(View view, pA pAVar) {
                    fl.this.cJ();
                    if (qhi.ac()) {
                        return;
                    }
                    hpZ hpz = new hpZ();
                    hpz.Qhi(0);
                    ((com.bytedance.sdk.openadsdk.core.ugen.ac.Qhi) fl.this.ac).NFd().Qhi(hpz);
                    fl.this.ac.fl().WAv();
                    com.bytedance.sdk.component.adexpress.cJ.hpZ cJ = qhi.cJ();
                    if (cJ == null) {
                        return;
                    }
                    cJ.Qhi(fl.this.cJ, pAVar);
                    qhi.Qhi(true);
                }

                @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
                public void Qhi(int i, String str) {
                    fl.this.Qhi(qhi, i, str);
                }
            });
        }
        return true;
    }

    /* compiled from: UGenRenderInterceptor.java */
    /* loaded from: classes2.dex */
    private class Qhi implements Runnable {
        Gm.Qhi Qhi;
        private int ac;

        Qhi(int i, Gm.Qhi qhi) {
            this.ac = i;
            this.Qhi = qhi;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.ac == 1) {
                fl.this.cJ.Qhi(true);
                fl.this.Qhi(this.Qhi, 137, "real time out" + fl.this.ac.Tgh());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(Gm.Qhi qhi, int i, String str) {
        com.bytedance.sdk.component.adexpress.cJ.hpZ cJ;
        if (qhi.ac() || this.fl.get()) {
            return;
        }
        cJ();
        hpZ hpz = new hpZ();
        hpz.Qhi(i);
        hpz.Qhi(str);
        ((com.bytedance.sdk.openadsdk.core.ugen.ac.Qhi) this.ac).NFd().Qhi(hpz);
        if (qhi.cJ(this)) {
            qhi.Qhi(this);
        } else if (qhi.ac() || (cJ = qhi.cJ()) == null) {
            return;
        } else {
            qhi.Qhi(true);
            cJ.a_(i);
        }
        this.fl.getAndSet(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ() {
        try {
            ScheduledFuture<?> scheduledFuture = this.CJ;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.CJ.cancel(false);
            this.CJ = null;
        } catch (Throwable th) {
            ABk.Qhi("RenderInterceptor", "remove ugen time out task fail", th.getMessage());
        }
    }
}
