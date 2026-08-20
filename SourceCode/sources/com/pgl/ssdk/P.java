package com.pgl.ssdk;

import com.pgl.ssdk.O;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: RecyclePool.java */
/* loaded from: classes3.dex */
public class P<T extends O> {

    /* renamed from: a  reason: collision with root package name */
    private BlockingQueue<T> f12187a = new LinkedBlockingQueue();

    private P(int i) {
    }

    public static P a(int i) {
        return new P(i);
    }

    public T a() {
        return this.f12187a.poll();
    }
}
