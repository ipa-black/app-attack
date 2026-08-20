package com.bytedance.sdk.component.Sf;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* compiled from: TTFutureTask.java */
/* loaded from: classes2.dex */
public class Sf<V> extends FutureTask<V> implements Comparable<Sf<V>> {
    private int Qhi;
    private int cJ;

    public Sf(Callable<V> callable, int i, int i2) {
        super(callable);
        this.Qhi = i == -1 ? 5 : i;
        this.cJ = i2;
    }

    public Sf(Runnable runnable, V v, int i, int i2) {
        super(runnable, v);
        this.Qhi = i == -1 ? 5 : i;
        this.cJ = i2;
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(Sf sf) {
        if (Qhi() < sf.Qhi()) {
            return 1;
        }
        return Qhi() > sf.Qhi() ? -1 : 0;
    }

    public int Qhi() {
        return this.Qhi;
    }
}
