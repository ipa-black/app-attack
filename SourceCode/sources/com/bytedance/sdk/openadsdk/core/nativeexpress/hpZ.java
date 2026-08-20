package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: UGenLoadTemplateListenerImpl.java */
/* loaded from: classes2.dex */
public class hpZ implements com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh {
    private long Qhi = 0;
    private long cJ = 0;
    private int ac = 0;
    private String CJ = null;
    private String fl = null;
    private final AtomicBoolean Tgh = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
    public void Qhi() {
        this.Qhi = SystemClock.elapsedRealtime();
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
    public void Qhi(int i, String str, String str2) {
        this.ac = i;
        this.CJ = str;
        this.fl = str2;
        this.cJ = SystemClock.elapsedRealtime();
        this.Tgh.set(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
    public void Qhi(String str) {
        this.fl = str;
        this.cJ = SystemClock.elapsedRealtime();
        this.Tgh.set(true);
    }

    public void Qhi(tP tPVar, String str) {
        if (this.Tgh.get()) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, false, str, FirebaseAnalytics.Param.SUCCESS, this.cJ - this.Qhi, this.fl, "ad", 0, null);
        } else {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(tPVar, false, str, "fail", this.cJ - this.Qhi, this.fl, "ad", this.ac, this.CJ);
        }
    }
}
