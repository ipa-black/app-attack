package com.bytedance.sdk.component.Tgh.Qhi.fl;

import java.util.UUID;
/* compiled from: TTRunnable.java */
/* loaded from: classes2.dex */
public abstract class Tgh implements Comparable<Tgh>, Runnable {
    private String ac;
    private int Qhi = 5;
    private String cJ = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public Tgh(String str) {
        this.ac = str;
    }

    public void Qhi(int i) {
        this.Qhi = i;
    }

    public int Qhi() {
        return this.Qhi;
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(Tgh tgh) {
        if (Qhi() < tgh.Qhi()) {
            return 1;
        }
        return Qhi() >= tgh.Qhi() ? -1 : 0;
    }
}
