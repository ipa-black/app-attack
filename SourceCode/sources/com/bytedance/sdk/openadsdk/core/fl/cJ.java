package com.bytedance.sdk.openadsdk.core.fl;

import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SecSdkHelper.java */
/* loaded from: classes2.dex */
public class cJ {
    private static com.bytedance.sdk.openadsdk.core.fl.Qhi Qhi;
    private String cJ;

    private cJ() {
        this.cJ = null;
        Qhi = new com.bytedance.sdk.openadsdk.core.fl.Qhi();
    }

    public void Qhi(String str) {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi;
        if (TextUtils.isEmpty(str) || (qhi = Qhi) == null) {
            return;
        }
        qhi.Qhi(str);
    }

    public void cJ(String str) {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi;
        if (TextUtils.isEmpty(str) || (qhi = Qhi) == null) {
            return;
        }
        qhi.cJ(str);
    }

    public void Qhi() {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi != null) {
            qhi.ac();
        }
    }

    public static cJ cJ() {
        return Qhi.Qhi;
    }

    public void ac(String str) {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi != null) {
            qhi.ac(str);
        }
    }

    public boolean ac() {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi == null) {
            return false;
        }
        return qhi.cJ();
    }

    public String CJ() {
        String CJ;
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        return (qhi == null || (CJ = qhi.CJ()) == null) ? "" : CJ;
    }

    public Map<String, String> Qhi(String str, byte[] bArr) {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi != null) {
            return qhi.Qhi(str, bArr);
        }
        return new HashMap();
    }

    public String fl() {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi != null) {
            return qhi.fl();
        }
        return "";
    }

    public int Tgh() {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi != null) {
            return qhi.Tgh();
        }
        return 1;
    }

    public void Qhi(MotionEvent motionEvent) {
        com.bytedance.sdk.openadsdk.core.fl.Qhi qhi = Qhi;
        if (qhi != null) {
            qhi.Qhi(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SecSdkHelper.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private static final cJ Qhi = new cJ();
    }
}
