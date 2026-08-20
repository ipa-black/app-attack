package com.bytedance.sdk.openadsdk.core;

import android.app.Application;
import android.content.Context;
import com.bytedance.sdk.openadsdk.ApmHelper;
/* compiled from: InitLifecycleHelper.java */
/* loaded from: classes2.dex */
public class pA {
    private final com.bytedance.sdk.openadsdk.utils.Qhi Qhi = new com.bytedance.sdk.openadsdk.utils.Qhi();
    private boolean cJ;

    public static pA Qhi() {
        return Qhi.Qhi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InitLifecycleHelper.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private static final pA Qhi = new pA();
    }

    public void cJ() {
        try {
            Context Qhi2 = HzH.Qhi();
            if (Qhi2 instanceof Application) {
                ((Application) Qhi2).registerActivityLifecycleCallbacks(this.Qhi);
                this.cJ = true;
            } else if (Qhi2 == null || Qhi2.getApplicationContext() == null) {
            } else {
                ((Application) Qhi2.getApplicationContext()).registerActivityLifecycleCallbacks(this.Qhi);
                this.cJ = true;
            }
        } catch (Throwable th) {
            ApmHelper.reportCustomError("registerActivityLifecycleError", "registerActivityLifecycle", th);
        }
    }

    public boolean ac() {
        return this.cJ;
    }

    public boolean CJ() {
        return this.Qhi.Qhi();
    }

    public boolean Qhi(boolean z) {
        return this.Qhi.Qhi(z);
    }

    public com.bytedance.sdk.openadsdk.utils.Qhi fl() {
        return this.Qhi;
    }
}
