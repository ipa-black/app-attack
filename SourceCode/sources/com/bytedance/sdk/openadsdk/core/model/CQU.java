package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.utils.Jma;
/* compiled from: TTAppOpenAdReportModel.java */
/* loaded from: classes2.dex */
public class CQU {
    private int Gm;
    public boolean Qhi;
    private long ROR;
    private long Sf;
    private long Tgh;
    private long WAv;
    public long cJ;
    private long fl;
    private long hm;
    private Jma ac = Jma.cJ();
    private Jma CJ = Jma.cJ();

    public void Qhi(Jma jma, Jma jma2, int i, Jma jma3) {
        this.fl = jma.Qhi(this.ac);
        this.Tgh = jma2.Qhi(jma);
        this.ROR = i;
        this.Sf = jma3.Qhi(jma2);
    }

    public void Qhi(Jma jma) {
        this.ac = jma;
    }

    public void cJ(Jma jma) {
        this.CJ = jma;
        this.hm = jma.Qhi(this.ac);
    }

    public Jma Qhi() {
        return this.ac;
    }

    public long cJ() {
        return this.fl;
    }

    public long ac() {
        return this.Tgh;
    }

    public long CJ() {
        return this.ROR;
    }

    public long fl() {
        return this.Sf;
    }

    public long Tgh() {
        return this.hm;
    }

    public long ROR() {
        return this.WAv;
    }

    public void Qhi(long j) {
        this.WAv = j;
    }

    public int Sf() {
        return this.Gm;
    }

    public void Qhi(int i) {
        this.Gm = i;
    }
}
