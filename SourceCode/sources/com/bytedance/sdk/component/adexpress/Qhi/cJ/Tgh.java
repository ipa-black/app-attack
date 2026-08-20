package com.bytedance.sdk.component.adexpress.Qhi.cJ;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.adexpress.CJ.qMt;
import com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.kYc;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: TemplateManager.java */
/* loaded from: classes2.dex */
public class Tgh extends ac {
    private static File Qhi;
    private static volatile Tgh cJ;
    private AtomicBoolean ac = new AtomicBoolean(true);
    private AtomicBoolean CJ = new AtomicBoolean(false);
    private boolean fl = false;
    private AtomicBoolean Tgh = new AtomicBoolean(false);
    private AtomicInteger ROR = new AtomicInteger(0);
    private AtomicLong Sf = new AtomicLong();

    public static Tgh cJ() {
        if (cJ == null) {
            synchronized (Tgh.class) {
                if (cJ == null) {
                    cJ = new Tgh();
                }
            }
        }
        return cJ;
    }

    private Tgh() {
        WAv();
    }

    public void ac() {
        WAv();
    }

    private void WAv() {
        qMt.cJ(new com.bytedance.sdk.component.Sf.hm(Constants.INIT) { // from class: com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.1
            @Override // java.lang.Runnable
            public void run() {
                hm.Qhi();
                Tgh.this.ac.set(false);
                Tgh.this.CJ();
                Tgh.this.ROR();
                if (com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac() == null || !kYc.Qhi(com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().cJ())) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().ac().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac() != null) {
                            com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().CJ();
                        }
                    }
                });
            }
        }, 10);
    }

    public void CJ() {
        com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi cJ2 = hm.cJ();
        if (cJ2 == null || !cJ2.ROR()) {
            return;
        }
        boolean Qhi2 = Qhi(cJ2);
        if (!Qhi2) {
            hm.CJ();
        }
        this.fl = Qhi2;
    }

    public boolean Qhi(com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi qhi) {
        if (qhi == null) {
            return false;
        }
        return Qhi(qhi.Qhi()) || Qhi(qhi.fl()) || Qhi(qhi.Tgh());
    }

    public boolean fl() {
        return this.fl;
    }

    public com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi Tgh() {
        return hm.cJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.Qhi.cJ.ac
    public File Qhi() {
        return Sf();
    }

    public void ROR() {
        Qhi(false);
    }

    public void Qhi(boolean z) {
        List<Qhi.C0188Qhi> list;
        boolean z2;
        if (this.ac.get()) {
            return;
        }
        try {
            if (this.CJ.get()) {
                if (z) {
                    this.ROR.getAndIncrement();
                    return;
                }
                return;
            }
            boolean z3 = true;
            this.CJ.set(true);
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi fl = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().fl();
            com.bytedance.sdk.component.adexpress.Qhi.ac.Qhi cJ2 = hm.cJ();
            if (fl != null && fl.ROR()) {
                if (!hm.cJ(fl)) {
                    this.CJ.set(false);
                    this.Sf.set(System.currentTimeMillis());
                    return;
                }
                if (com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac() != null) {
                    com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac().ac().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.Qhi.cJ.Tgh.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().cJ();
                        }
                    });
                }
                hm.Qhi(fl);
                boolean Qhi2 = (fl.fl() == null || TextUtils.isEmpty(fl.fl().Qhi())) ? false : Qhi(fl.fl().Qhi());
                if (fl.Qhi().size() != 0) {
                    list = Qhi(fl, cJ2);
                    z2 = list != null;
                } else {
                    list = null;
                    z2 = Qhi2;
                }
                if (!Qhi2) {
                    List<Qhi.C0188Qhi> cJ3 = cJ(fl, cJ2);
                    if (list == null || cJ3 == null) {
                        list = cJ3;
                    } else {
                        list.addAll(cJ3);
                    }
                    if (cJ3 == null) {
                        z3 = false;
                    }
                    if (cJ3 == null) {
                        this.CJ.set(false);
                    }
                    z2 = z3;
                }
                if (z2 && Qhi(fl)) {
                    hm.Qhi(fl);
                    hm.ac();
                    cJ(list);
                }
                CJ();
                this.CJ.set(false);
                this.Sf.set(System.currentTimeMillis());
                Gm();
                return;
            }
            this.CJ.set(false);
            Qhi(109);
        } catch (Throwable unused) {
        }
    }

    private void Gm() {
        if (this.ROR.getAndSet(0) <= 0 || System.currentTimeMillis() - this.Sf.get() <= TTAdConstant.AD_MAX_EVENT_TIME) {
            return;
        }
        ROR();
    }

    public static File Sf() {
        if (Qhi == null) {
            try {
                File file = new File(new File(fl.Qhi(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                Qhi = file;
            } catch (Throwable th) {
                ABk.Qhi("TemplateManager", "getTemplateDir error", th);
            }
        }
        return Qhi;
    }

    public void cJ(boolean z) {
        this.Tgh.set(z);
    }

    public void hm() {
        this.Tgh.set(true);
        this.fl = false;
        this.CJ.set(false);
    }
}
