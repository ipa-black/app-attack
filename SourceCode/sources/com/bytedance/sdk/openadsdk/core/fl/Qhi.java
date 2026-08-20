package com.bytedance.sdk.openadsdk.core.fl;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.Gm.Qhi.fl;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.zc;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.ces.out.PglSSManager;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MSSdkImpl.java */
/* loaded from: classes2.dex */
public class Qhi {
    private PglSSManager Qhi;
    private volatile boolean cJ;
    private volatile boolean ac = true;
    private volatile boolean CJ = false;

    public Qhi() {
        Qhi();
    }

    public synchronized void Qhi() {
        if (this.cJ) {
            return;
        }
        Context Qhi = HzH.Qhi();
        String CJ = hm.cJ().CJ();
        if (TextUtils.isEmpty(CJ)) {
            CJ = hm.Qhi(OSOutcomeConstants.APP_ID, Long.MAX_VALUE);
        }
        if (TextUtils.isEmpty(CJ)) {
            return;
        }
        PglSSManager.init(Qhi, PglSSConfig.builder().setAppId(CJ).setOVRegionType(0).setAdsdkVersionCode(BuildConfig.VERSION_CODE).build(), null, null, zc.Qhi(Qhi), com.bytedance.sdk.openadsdk.pA.Qhi.cJ.Qhi.Qhi().cJ());
        Sf();
        this.cJ = true;
        if (this.ac) {
            CJ(PglSSManager.getLoadError());
        }
    }

    public boolean cJ() {
        return this.cJ;
    }

    private boolean ROR() {
        if (!this.cJ && this.ac) {
            Qhi();
        }
        return this.cJ;
    }

    private void Sf() {
        if (this.Qhi == null) {
            this.Qhi = PglSSManager.getInstance();
        }
    }

    public void Qhi(String str) {
        if (ROR()) {
            Sf();
            PglSSManager pglSSManager = this.Qhi;
            if (pglSSManager != null) {
                pglSSManager.setGaid(str);
            }
        }
    }

    public void ac() {
        if (ROR()) {
            Sf();
            if (this.Qhi != null) {
                iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.fl.Qhi.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            HashMap hashMap = new HashMap();
                            hashMap.put(PglSSConfig.CUSTOMINFO_KEY_CHECKCLAZZ, HzH.CJ().bM());
                            Qhi.this.Qhi.setCustomInfo(hashMap);
                            new Object[]{"custom info is: ", hashMap};
                        } catch (Throwable th) {
                            qMt.cJ("MSSdkImpl", "setCustomInfo", th.getMessage());
                        }
                    }
                });
            }
        }
    }

    public void cJ(final String str) {
        if (ROR()) {
            Sf();
            if (this.Qhi != null) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    lG.cJ(new com.bytedance.sdk.component.Sf.hm("updateDid") { // from class: com.bytedance.sdk.openadsdk.core.fl.Qhi.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Qhi.this.Qhi != null) {
                                Qhi.this.Qhi.setDeviceId(str);
                            }
                        }
                    });
                } else {
                    this.Qhi.setDeviceId(str);
                }
            }
        }
    }

    public void ac(String str) {
        if (ROR()) {
            Sf();
            PglSSManager pglSSManager = this.Qhi;
            if (pglSSManager != null) {
                pglSSManager.reportNow(str);
            }
        }
    }

    public String CJ() {
        if (ROR()) {
            Sf();
            PglSSManager pglSSManager = this.Qhi;
            return pglSSManager != null ? pglSSManager.getToken() : "";
        }
        return "";
    }

    public String fl() {
        if (ROR()) {
            Sf();
            PglSSManager pglSSManager = this.Qhi;
            return pglSSManager != null ? pglSSManager.getSofChara() : "";
        }
        return "";
    }

    public void Qhi(MotionEvent motionEvent) {
        if (cJ()) {
            Sf();
            PglSSManager pglSSManager = this.Qhi;
            if (pglSSManager != null) {
                pglSSManager.checkEventVirtual(motionEvent);
            }
        }
    }

    public int Tgh() {
        if (this.ac) {
            return PglSSManager.getInitStatus();
        }
        return 5;
    }

    public Map<String, String> Qhi(String str, byte[] bArr) {
        Map<String, String> featureHash;
        return (!ROR() || (featureHash = this.Qhi.getFeatureHash(str, bArr)) == null) ? new HashMap() : featureHash;
    }

    private Class hm() {
        Class<?> cls;
        try {
            cls = Class.forName("com.pgl.ssdk.ces.out.PglSSManager");
        } catch (Throwable unused) {
            cls = null;
        }
        try {
            this.ac = true;
        } catch (Throwable unused2) {
            this.ac = false;
            return cls;
        }
        return cls;
    }

    private void CJ(final String str) {
        if (this.CJ || TextUtils.isEmpty(str)) {
            return;
        }
        HzH.fl().Qhi(new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.core.fl.Qhi.3
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                return fl.cJ().Qhi("secsdk_init_error").cJ(str);
            }
        }, false);
        this.CJ = true;
    }
}
