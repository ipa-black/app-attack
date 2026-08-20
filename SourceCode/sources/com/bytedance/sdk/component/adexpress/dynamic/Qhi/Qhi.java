package com.bytedance.sdk.component.adexpress.dynamic.Qhi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.qMt;
import com.bytedance.sdk.component.adexpress.ac;
import com.bytedance.sdk.component.adexpress.cJ.Sf;
import com.bytedance.sdk.component.adexpress.cJ.fl;
import com.bytedance.sdk.component.adexpress.cJ.hm;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.component.adexpress.cJ.zc;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.WAv;
import com.bytedance.sdk.component.adexpress.dynamic.ac.ROR;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicRootView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Tgh;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: DynamicRender.java */
/* loaded from: classes2.dex */
public class Qhi implements fl<DynamicRootView>, zc {
    private Sf CJ;
    private DynamicRootView Qhi;
    private ScheduledFuture<?> ROR;
    private AtomicBoolean Sf = new AtomicBoolean(false);
    private iMK Tgh;
    private Context ac;
    private WAv cJ;
    private hm fl;

    public Qhi(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, WAv wAv, iMK imk, com.bytedance.sdk.component.adexpress.dynamic.fl.Qhi qhi) {
        this.ac = context;
        DynamicRootView dynamicRootView = new DynamicRootView(context, themeStatusBroadcastReceiver, z, imk, qhi);
        this.Qhi = dynamicRootView;
        this.cJ = wAv;
        this.Tgh = imk;
        dynamicRootView.setRenderListener(this);
        this.Tgh = imk;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public void Qhi(Sf sf) {
        this.CJ = sf;
        int Tgh = this.Tgh.Tgh();
        if (Tgh < 0) {
            this.Qhi.Qhi(this.cJ instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm ? 127 : 117, "time is ".concat(String.valueOf(Tgh)));
            return;
        }
        this.ROR = qMt.Qhi(new RunnableC0191Qhi(2), Tgh, TimeUnit.MILLISECONDS);
        if (Looper.getMainLooper() == Looper.myLooper() && this.Tgh.hm() <= 0) {
            Tgh();
        } else {
            com.bytedance.sdk.component.utils.Sf.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi.1
                @Override // java.lang.Runnable
                public void run() {
                    Qhi.this.Tgh();
                }
            }, this.Tgh.hm());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Tgh() {
        this.Tgh.fl().cJ(ac());
        JSONObject ac = this.Tgh.ac();
        if (!com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.Qhi(ac)) {
            this.Qhi.Qhi(this.cJ instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm ? 123 : 113, "data null is " + (ac == null));
            return;
        }
        this.cJ.Qhi(new com.bytedance.sdk.component.adexpress.dynamic.fl.cJ() { // from class: com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi.2
            @Override // com.bytedance.sdk.component.adexpress.dynamic.fl.cJ
            public void Qhi(final com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
                Qhi.this.Sf();
                Qhi.this.Tgh.fl().ac(Qhi.this.ac());
                Qhi.this.Qhi(hmVar);
                Qhi.this.cJ(hmVar);
                if (Looper.getMainLooper() == Looper.myLooper()) {
                    Qhi.this.ac(hmVar);
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Qhi.this.ac(hmVar);
                        }
                    });
                }
                if (Qhi.this.Qhi == null || hmVar == null) {
                    return;
                }
                Qhi.this.Qhi.setBgColor(hmVar.Qhi());
                Qhi.this.Qhi.setBgMaterialCenterCalcColor(hmVar.cJ());
            }
        });
        this.cJ.Qhi(this.Tgh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> Gm;
        if (hmVar == null || (Gm = hmVar.Gm()) == null || Gm.size() <= 0) {
            return;
        }
        Collections.sort(Gm, new Comparator<com.bytedance.sdk.component.adexpress.dynamic.ac.hm>() { // from class: com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi.3
            @Override // java.util.Comparator
            /* renamed from: Qhi */
            public int compare(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2, com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar3) {
                ROR fl = hmVar2.WAv().fl();
                ROR fl2 = hmVar3.WAv().fl();
                if (fl == null || fl2 == null) {
                    return 0;
                }
                return fl.rB() >= fl2.rB() ? 1 : -1;
            }
        });
        for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 : Gm) {
            if (hmVar2 != null) {
                Qhi(hmVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        float f2;
        float f3;
        List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> Gm;
        if (hmVar == null) {
            return;
        }
        List<com.bytedance.sdk.component.adexpress.dynamic.ac.hm> Gm2 = hmVar.Gm();
        if (Gm2 == null || Gm2.size() <= 0) {
            f2 = 0.0f;
        } else {
            f2 = 0.0f;
            for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar2 : Gm2) {
                if (hmVar2.ROR() > hmVar.ROR() - hmVar2.hm() || (Gm = hmVar2.Gm()) == null || Gm.size() <= 0) {
                    f3 = 0.0f;
                } else {
                    f3 = 0.0f;
                    for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar3 : Gm) {
                        if (hmVar3.WAv().cJ().equals("logo-union")) {
                            f3 = hmVar3.WAv().Tgh();
                            f2 = (((-f3) + hmVar.ROR()) - hmVar2.ROR()) + hmVar2.WAv().fl().wp();
                        }
                    }
                }
                cJ(hmVar2);
                if (f3 <= -15.0f) {
                    hmVar2.Tgh(hmVar2.hm() - f3);
                    hmVar2.CJ(hmVar2.ROR() + f3);
                    for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar4 : hmVar2.Gm()) {
                        hmVar4.CJ(hmVar4.ROR() - f3);
                    }
                }
            }
        }
        com.bytedance.sdk.component.adexpress.dynamic.ac.hm zc = hmVar.zc();
        if (zc == null) {
            return;
        }
        hmVar.ac(hmVar.Tgh() - zc.Tgh());
        hmVar.CJ(hmVar.ROR() - zc.ROR());
        if (f2 > 0.0f) {
            hmVar.CJ(hmVar.ROR() - f2);
            hmVar.Tgh(hmVar.hm() + f2);
            for (com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar5 : hmVar.Gm()) {
                hmVar5.CJ(hmVar5.ROR() + f2);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    /* renamed from: Qhi */
    public DynamicRootView fl() {
        return CJ();
    }

    public void cJ() {
        Qhi(fl());
    }

    private void Qhi(View view) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    break;
                }
                Qhi(viewGroup.getChildAt(i));
                i++;
            }
        }
        if (view instanceof Tgh) {
            ((Tgh) view).cJ();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public int ac() {
        return this.cJ instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm ? 3 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(com.bytedance.sdk.component.adexpress.dynamic.ac.hm hmVar) {
        if (hmVar == null) {
            this.Qhi.Qhi(this.cJ instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm ? 123 : 113, "layoutUnit is null");
            return;
        }
        this.Tgh.fl().CJ(ac());
        try {
            this.Qhi.Qhi(hmVar, ac());
        } catch (Exception e2) {
            this.Qhi.Qhi(this.cJ instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm ? 128 : 118, "exception is " + e2.getMessage());
        }
    }

    public DynamicRootView CJ() {
        return this.Qhi;
    }

    public void Qhi(hm hmVar) {
        this.fl = hmVar;
    }

    private boolean ROR() {
        DynamicRootView dynamicRootView = this.Qhi;
        return (dynamicRootView == null || dynamicRootView.getChildCount() == 0) ? false : true;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.zc
    public void Qhi(pA pAVar) {
        if (this.Sf.get()) {
            return;
        }
        this.Sf.set(true);
        if (pAVar.ac() && ROR()) {
            this.Qhi.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.CJ.Qhi(fl(), pAVar);
            return;
        }
        this.CJ.Qhi(pAVar.Gm(), pAVar.WAv());
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.zc
    public void Qhi(View view, int i, ac acVar) {
        hm hmVar = this.fl;
        if (hmVar != null) {
            hmVar.Qhi(view, i, acVar);
        }
    }

    /* compiled from: DynamicRender.java */
    /* renamed from: com.bytedance.sdk.component.adexpress.dynamic.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class RunnableC0191Qhi implements Runnable {
        private int cJ;

        public RunnableC0191Qhi(int i) {
            this.cJ = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cJ == 2) {
                Qhi.this.Qhi.Qhi(Qhi.this.cJ instanceof com.bytedance.sdk.component.adexpress.dynamic.CJ.hm ? 127 : 117, (String) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sf() {
        try {
            ScheduledFuture<?> scheduledFuture = this.ROR;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.ROR.cancel(false);
            this.ROR = null;
        } catch (Throwable unused) {
        }
    }
}
