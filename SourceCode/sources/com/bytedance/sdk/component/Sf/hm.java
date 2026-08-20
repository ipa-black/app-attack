package com.bytedance.sdk.component.Sf;
/* compiled from: TTRunnable.java */
/* loaded from: classes2.dex */
public abstract class hm implements Comparable<hm>, Runnable {
    private int Qhi;
    private String cJ;

    public hm(String str, int i) {
        this.Qhi = 0;
        this.Qhi = i == 0 ? 5 : i;
        this.cJ = str;
    }

    public hm(String str) {
        this.Qhi = 5;
        this.cJ = str;
    }

    public void setPriority(int i) {
        this.Qhi = i;
    }

    public int getPriority() {
        return this.Qhi;
    }

    @Override // java.lang.Comparable
    public int compareTo(hm hmVar) {
        if (getPriority() < hmVar.getPriority()) {
            return 1;
        }
        return getPriority() >= hmVar.getPriority() ? -1 : 0;
    }

    public String getName() {
        return this.cJ;
    }
}
