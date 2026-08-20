package com.bytedance.sdk.openadsdk.cJ.Qhi;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* compiled from: TrackUrlStrategy.java */
/* loaded from: classes2.dex */
public class pA {
    public static pA Qhi = new pA();
    private volatile boolean CJ;
    private final Map<String, Qhi> ac = new HashMap();
    private Qhi cJ;

    private int cJ() {
        Qhi qhi = this.cJ;
        if (qhi != null) {
            return qhi.Qhi();
        }
        return 3;
    }

    private int ac() {
        Qhi qhi = this.cJ;
        if (qhi != null) {
            return qhi.cJ();
        }
        return 30;
    }

    public void Qhi(Qhi qhi) {
        this.cJ = qhi;
    }

    public void Qhi(String str, Qhi qhi) {
        if (TextUtils.isEmpty(str) || qhi == null) {
            return;
        }
        this.ac.put(str, qhi);
    }

    public int Qhi(String str) {
        if (Qhi()) {
            Qhi qhi = this.ac.get(str);
            if (qhi == null) {
                return cJ();
            }
            return qhi.Qhi();
        }
        return 4;
    }

    public int cJ(String str) {
        Qhi qhi = this.ac.get(str);
        if (qhi == null) {
            return ac();
        }
        return qhi.cJ();
    }

    public boolean Qhi() {
        return this.CJ;
    }

    public void Qhi(boolean z) {
        this.CJ = z;
    }

    /* compiled from: TrackUrlStrategy.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private final int Qhi;
        private final int cJ;

        public Qhi(int i, int i2) {
            this.Qhi = (i < 0 || i > 5) ? 3 : 3;
            this.cJ = i2 < 10 ? 30 : i2;
        }

        public int Qhi() {
            return this.Qhi;
        }

        public int cJ() {
            return this.cJ;
        }
    }
}
