package com.bytedance.adsdk.lottie;

import java.util.Arrays;
/* compiled from: LottieResult.java */
/* loaded from: classes2.dex */
public final class zc<V> {
    private final V Qhi;
    private final Throwable cJ;

    public zc(V v) {
        this.Qhi = v;
        this.cJ = null;
    }

    public zc(Throwable th) {
        this.cJ = th;
        this.Qhi = null;
    }

    public V Qhi() {
        return this.Qhi;
    }

    public Throwable cJ() {
        return this.cJ;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zc) {
            zc zcVar = (zc) obj;
            if (Qhi() == null || !Qhi().equals(zcVar.Qhi())) {
                if (cJ() == null || zcVar.cJ() == null) {
                    return false;
                }
                return cJ().toString().equals(cJ().toString());
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Qhi(), cJ()});
    }
}
