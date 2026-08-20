package com.bytedance.sdk.openadsdk.core.model;
/* compiled from: LoadingInfo.java */
/* loaded from: classes2.dex */
public class kYc {
    private long Qhi = 10000;
    private long cJ = 10000;
    private long ac = 10;
    private long CJ = 20;
    private String fl = "";

    public long Qhi() {
        return this.Qhi;
    }

    public void Qhi(long j) {
        if (j <= 0) {
            this.Qhi = 10L;
        } else {
            this.Qhi = j;
        }
    }

    public long cJ() {
        return this.cJ;
    }

    public void cJ(long j) {
        if (j < 0) {
            this.cJ = 20L;
        } else {
            this.cJ = j;
        }
    }

    public long ac() {
        return this.ac;
    }

    public void ac(long j) {
        if (j <= 0) {
            this.ac = 10L;
        } else {
            this.ac = j;
        }
    }

    public long CJ() {
        return this.CJ;
    }

    public void CJ(long j) {
        if (j < 0) {
            this.CJ = 20L;
        } else {
            this.CJ = j;
        }
    }

    public String fl() {
        return this.fl;
    }

    public void Qhi(String str) {
        this.fl = str;
    }
}
