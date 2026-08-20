package com.bytedance.sdk.component.Tgh.Qhi;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: LogInternalManager.java */
/* loaded from: classes2.dex */
public class hm {
    private static hm ABk;
    private static volatile com.bytedance.sdk.component.Tgh.Qhi.fl.Qhi WAv;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac CJ;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.cJ.ac Gm;
    private volatile Context Qhi;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh ROR;
    private volatile boolean Sf;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Tgh;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ac;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac cJ;
    private volatile com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac fl;
    private volatile Tgh hm;
    private final AtomicBoolean iMK = new AtomicBoolean(false);
    private long pA;
    private volatile Map<Integer, com.bytedance.sdk.component.Tgh.Qhi.cJ.ac> zc;

    public boolean Qhi() {
        return this.iMK.get();
    }

    public void Qhi(boolean z) {
        this.iMK.set(z);
    }

    public boolean cJ() {
        return this.Sf;
    }

    public void cJ(boolean z) {
        this.Sf = z;
    }

    public Map<Integer, com.bytedance.sdk.component.Tgh.Qhi.cJ.ac> ac() {
        return this.zc;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh CJ() {
        return this.ROR;
    }

    public static com.bytedance.sdk.component.Tgh.Qhi.fl.Qhi fl() {
        if (WAv == null) {
            synchronized (hm.class) {
                if (WAv == null) {
                    WAv = new com.bytedance.sdk.component.Tgh.Qhi.fl.cJ();
                }
            }
        }
        return WAv;
    }

    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh tgh) {
        this.ROR = tgh;
    }

    public Context Tgh() {
        return this.Qhi;
    }

    public void Qhi(Context context) {
        this.Qhi = context;
    }

    private hm() {
    }

    public static synchronized hm ROR() {
        hm hmVar;
        synchronized (hm.class) {
            if (ABk == null) {
                ABk = new hm();
            }
            hmVar = ABk;
        }
        return hmVar;
    }

    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.ac acVar) {
        this.Gm = acVar;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.cJ.ac Sf() {
        return this.Gm;
    }

    public void hm() {
        com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.cJ();
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac WAv() {
        return this.Tgh;
    }

    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        this.Tgh = acVar;
    }

    public void Gm() {
        com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.ac();
    }

    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh) {
        if (tgh == null) {
            return;
        }
        tgh.Qhi(System.currentTimeMillis());
        com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.Qhi.Qhi(tgh, tgh.CJ());
    }

    public void Qhi(String str, boolean z) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh.Qhi.Qhi().Qhi(str, z);
    }

    public void Qhi(String str, List<String> list, boolean z, Map<String, String> map, int i, String str2) {
        com.bytedance.sdk.component.Tgh.Qhi.Tgh.Qhi.Qhi().Qhi(str, list, z, map, i, str2);
    }

    public void cJ(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        this.cJ = acVar;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac zc() {
        return this.cJ;
    }

    public void ac(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        this.ac = acVar;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ABk() {
        return this.ac;
    }

    public void CJ(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        this.CJ = acVar;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac iMK() {
        return this.CJ;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac pA() {
        return this.fl;
    }

    public void fl(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
        this.fl = acVar;
    }

    public void Qhi(Tgh tgh) {
        this.hm = tgh;
    }

    public Tgh hpZ() {
        return this.hm;
    }

    public void Qhi(long j) {
        this.pA = j;
    }

    public long HzH() {
        return this.pA * Constants.MILLIS_IN_DAY;
    }
}
