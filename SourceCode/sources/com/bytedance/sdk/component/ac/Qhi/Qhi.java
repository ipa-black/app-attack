package com.bytedance.sdk.component.ac.Qhi;

import android.os.SystemClock;
/* compiled from: RequestHttpTime.java */
/* loaded from: classes2.dex */
public class Qhi {
    long CJ;
    long Qhi = SystemClock.elapsedRealtime();
    long ROR;
    long Sf;
    long Tgh;
    long ac;
    long cJ;
    long fl;

    public void Qhi() {
        this.ac = SystemClock.elapsedRealtime();
    }

    public void cJ() {
        this.CJ = SystemClock.elapsedRealtime();
    }

    public void ac() {
        this.fl = SystemClock.elapsedRealtime();
    }

    public long CJ() {
        return this.Qhi;
    }

    public void fl() {
        this.Tgh = SystemClock.elapsedRealtime();
    }

    public long Tgh() {
        return this.Tgh;
    }

    public long ROR() {
        return this.ac;
    }

    public long Sf() {
        return this.CJ;
    }

    public long hm() {
        return this.fl;
    }

    public long WAv() {
        return this.ROR;
    }

    public void Gm() {
        this.ROR = SystemClock.elapsedRealtime();
    }

    public long zc() {
        return this.Sf;
    }

    public void ABk() {
        this.Sf = SystemClock.elapsedRealtime();
    }

    public long iMK() {
        return this.cJ;
    }

    public void pA() {
        this.cJ = SystemClock.elapsedRealtime();
    }

    public String toString() {
        return "RequestHttpTime{requestBuildTs=" + this.Qhi + ", asyncCallExecTs=" + this.cJ + ", requestStartExecTs=" + this.ac + ", requestConnectStartTs=" + this.CJ + ", requestConnectFinishTs=" + this.fl + ", reqCallServerStartTs=" + this.ROR + ", reqCallServerFinishTs=" + this.Sf + '}';
    }
}
