package com.bytedance.sdk.component.Sf.ac;
/* compiled from: PagRunnable.java */
/* loaded from: classes2.dex */
public abstract class cJ implements Comparable<cJ>, Runnable {
    private long CJ;
    private int Qhi;
    private long Tgh;
    private Runnable ac;
    private String cJ;
    private long fl;

    public cJ(String str) {
        this.Qhi = 5;
        this.cJ = str;
    }

    public cJ(int i, String str) {
        this.Qhi = i;
        this.cJ = str;
    }

    public cJ(String str, Runnable runnable) {
        this.Qhi = 5;
        this.cJ = str;
        this.ac = runnable;
    }

    public void Qhi(int i) {
        this.Qhi = i;
    }

    public int Qhi() {
        return this.Qhi;
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(cJ cJVar) {
        if (Qhi() < cJVar.Qhi()) {
            return 1;
        }
        return Qhi() >= cJVar.Qhi() ? -1 : 0;
    }

    public String cJ() {
        return this.cJ;
    }

    public long ac() {
        return this.CJ;
    }

    public void Qhi(long j) {
        this.CJ = j;
    }

    public long CJ() {
        return this.fl;
    }

    public void cJ(long j) {
        this.fl = j;
    }

    public long fl() {
        return this.Tgh;
    }

    public void ac(long j) {
        this.Tgh = j;
    }

    public long Tgh() {
        return this.fl - this.CJ;
    }

    public long ROR() {
        return this.Tgh - this.fl;
    }

    public Runnable Sf() {
        return this.ac;
    }
}
