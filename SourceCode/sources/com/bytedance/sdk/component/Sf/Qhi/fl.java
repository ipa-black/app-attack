package com.bytedance.sdk.component.Sf.Qhi;

import com.bytedance.sdk.component.Sf.Qhi.ac;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: RecyclePool.java */
/* loaded from: classes2.dex */
public class fl<T extends ac> {
    private int Qhi;
    private BlockingQueue<T> cJ = new LinkedBlockingQueue();

    public static fl Qhi(int i) {
        return new fl(i);
    }

    private fl(int i) {
        this.Qhi = i;
    }

    public T Qhi() {
        return this.cJ.poll();
    }

    public boolean Qhi(T t) {
        if (t == null) {
            return false;
        }
        t.Qhi();
        if (this.cJ.size() >= this.Qhi) {
            return false;
        }
        return this.cJ.offer(t);
    }
}
