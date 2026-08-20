package com.bytedance.sdk.component.cJ.Qhi;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* compiled from: OkHttpClient.java */
/* loaded from: classes2.dex */
public abstract class zc implements Cloneable {
    public long CJ;
    public List<hm> Qhi;
    public TimeUnit ROR;
    public long Tgh;
    public TimeUnit ac;
    public long cJ;
    public TimeUnit fl;

    public abstract cJ Qhi(iMK imk);

    public abstract fl Qhi();

    public zc(Qhi qhi) {
        this.cJ = qhi.cJ;
        this.CJ = qhi.CJ;
        this.Tgh = qhi.Tgh;
        this.Qhi = qhi.Qhi;
        this.ac = qhi.ac;
        this.fl = qhi.fl;
        this.ROR = qhi.ROR;
        this.Qhi = qhi.Qhi;
    }

    /* compiled from: OkHttpClient.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        public long CJ;
        public final List<hm> Qhi;
        public TimeUnit ROR;
        public long Tgh;
        public TimeUnit ac;
        public long cJ;
        public TimeUnit fl;

        public Qhi() {
            this.Qhi = new ArrayList();
            this.cJ = 10000L;
            this.ac = TimeUnit.MILLISECONDS;
            this.CJ = 10000L;
            this.fl = TimeUnit.MILLISECONDS;
            this.Tgh = 10000L;
            this.ROR = TimeUnit.MILLISECONDS;
        }

        public Qhi(String str) {
            this.Qhi = new ArrayList();
            this.cJ = 10000L;
            this.ac = TimeUnit.MILLISECONDS;
            this.CJ = 10000L;
            this.fl = TimeUnit.MILLISECONDS;
            this.Tgh = 10000L;
            this.ROR = TimeUnit.MILLISECONDS;
        }

        public Qhi(zc zcVar) {
            this.Qhi = new ArrayList();
            this.cJ = 10000L;
            this.ac = TimeUnit.MILLISECONDS;
            this.CJ = 10000L;
            this.fl = TimeUnit.MILLISECONDS;
            this.Tgh = 10000L;
            this.ROR = TimeUnit.MILLISECONDS;
            this.cJ = zcVar.cJ;
            this.ac = zcVar.ac;
            this.CJ = zcVar.CJ;
            this.fl = zcVar.fl;
            this.Tgh = zcVar.Tgh;
            this.ROR = zcVar.ROR;
        }

        public Qhi Qhi(long j, TimeUnit timeUnit) {
            this.cJ = j;
            this.ac = timeUnit;
            return this;
        }

        public Qhi cJ(long j, TimeUnit timeUnit) {
            this.CJ = j;
            this.fl = timeUnit;
            return this;
        }

        public Qhi ac(long j, TimeUnit timeUnit) {
            this.Tgh = j;
            this.ROR = timeUnit;
            return this;
        }

        public Qhi Qhi(hm hmVar) {
            this.Qhi.add(hmVar);
            return this;
        }

        public zc Qhi() {
            return com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.Qhi(this);
        }
    }

    public Qhi cJ() {
        return new Qhi(this);
    }
}
