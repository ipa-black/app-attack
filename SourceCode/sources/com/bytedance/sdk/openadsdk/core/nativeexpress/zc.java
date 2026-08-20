package com.bytedance.sdk.openadsdk.core.nativeexpress;

import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
import org.json.JSONObject;
/* compiled from: ExpressRenderEventMonitor.java */
/* loaded from: classes2.dex */
public class zc implements com.bytedance.adsdk.ugeno.core.HzH, com.bytedance.sdk.component.adexpress.cJ.WAv {
    private final String CJ;
    private final com.bytedance.sdk.openadsdk.cJ.ac.Tgh Qhi;
    private final tP ac;
    private final String cJ;
    private long fl;

    public zc(com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh, String str, tP tPVar, String str2) {
        this.Qhi = tgh;
        this.cJ = str;
        this.CJ = str2;
        this.ac = tPVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void CJ() {
        this.Qhi.Qhi();
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Qhi(boolean z) {
        this.Qhi.Qhi(z ? 1 : 0);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void fl() {
        this.Qhi.cJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Qhi(int i, String str) {
        this.Qhi.Qhi(i, null);
        WAv.Qhi("Web", i, str, this.cJ, this.CJ, this.ac);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Qhi(int i) {
        this.fl = System.currentTimeMillis();
        if (i == 3) {
            this.Qhi.ac("dynamic_render2_start");
        } else {
            this.Qhi.ac("dynamic_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void cJ(int i) {
        if (i == 3) {
            this.Qhi.CJ("dynamic_sub_analysis2_start");
        } else {
            this.Qhi.CJ("dynamic_sub_analysis_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void ac(int i) {
        if (i == 3) {
            this.Qhi.CJ("dynamic_sub_analysis2_end");
        } else {
            this.Qhi.CJ("dynamic_sub_analysis_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void CJ(int i) {
        if (i == 3) {
            this.Qhi.CJ("dynamic_sub_render2_start");
        } else {
            this.Qhi.CJ("dynamic_sub_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void fl(int i) {
        if (i == 3) {
            this.Qhi.CJ("dynamic_sub_render2_end");
        } else {
            this.Qhi.CJ("dynamic_sub_render_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Tgh(int i) {
        final String str;
        System.currentTimeMillis();
        if (i == 3) {
            this.Qhi.ROR("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.Qhi.ROR("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.Qhi.Qhi(true);
        lG.cJ(new com.bytedance.sdk.component.Sf.hm("dynamic_success") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.zc.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(zc.this.ac, zc.this.cJ, str, (JSONObject) null);
            }
        }, 10);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Qhi(int i, int i2, String str, boolean z) {
        if (!z) {
            this.Qhi.Qhi(true);
        }
        if (i == 3) {
            this.Qhi.cJ(i2, "dynamic_render2_error");
        } else {
            this.Qhi.cJ(i2, "dynamic_render_error");
        }
        WAv.Qhi("NDR", i2, str, this.cJ, this.CJ, this.ac);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Tgh() {
        this.Qhi.ac();
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void ROR() {
        this.Qhi.Qhi(true);
        this.Qhi.ABk();
        lG.cJ(new com.bytedance.sdk.component.Sf.hm("native_success") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.zc.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(zc.this.ac, zc.this.cJ, "dynamic_backup_render", (JSONObject) null);
            }
        }, 10);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void Sf() {
        this.Qhi.iMK();
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void hm() {
        this.Qhi.pA();
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.WAv
    public void WAv() {
        this.Qhi.cJ();
    }

    public void Gm() {
        this.Qhi.Gm();
        this.Qhi.zc();
    }

    @Override // com.bytedance.adsdk.ugeno.core.HzH
    public void Qhi() {
        this.Qhi.fl("ugen_render_start");
        this.Qhi.fl("ugen_sub_analysis_start");
    }

    @Override // com.bytedance.adsdk.ugeno.core.HzH
    public void cJ() {
        this.Qhi.fl("ugen_sub_analysis_end");
    }

    @Override // com.bytedance.adsdk.ugeno.core.HzH
    public void ac() {
        this.Qhi.fl("ugen_sub_render_start");
    }

    @Override // com.bytedance.adsdk.ugeno.core.HzH
    public void Qhi(com.bytedance.adsdk.ugeno.core.hpZ hpz) {
        if (hpz.Qhi() == 0) {
            this.Qhi.fl("ugen_sub_render_end");
            this.Qhi.Tgh("ugen_render_success");
        } else {
            this.Qhi.ac(hpz.Qhi(), "ugen_render_error");
            WAv.Qhi("UGen", hpz.Qhi(), hpz.cJ(), this.cJ, this.CJ, this.ac);
        }
        this.Qhi.Qhi(true);
    }
}
