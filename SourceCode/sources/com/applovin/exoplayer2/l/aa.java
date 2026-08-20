package com.applovin.exoplayer2.l;

import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes.dex */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3761a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final PriorityQueue<Integer> f3762b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    private int f3763c = Integer.MIN_VALUE;

    public void a(int i) {
        synchronized (this.f3761a) {
            this.f3762b.add(Integer.valueOf(i));
            this.f3763c = Math.max(this.f3763c, i);
        }
    }

    public void b(int i) {
        synchronized (this.f3761a) {
            this.f3762b.remove(Integer.valueOf(i));
            this.f3763c = this.f3762b.isEmpty() ? Integer.MIN_VALUE : ((Integer) ai.a(this.f3762b.peek())).intValue();
            this.f3761a.notifyAll();
        }
    }
}
