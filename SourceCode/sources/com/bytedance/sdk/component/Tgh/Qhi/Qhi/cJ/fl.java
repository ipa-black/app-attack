package com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ;

import com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* compiled from: EventMemoryCacheManager.java */
/* loaded from: classes2.dex */
public abstract class fl<T extends com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> {
    private String CJ;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Qhi;
    private Queue<String> ac;
    private Queue<T> cJ = new ConcurrentLinkedQueue();

    public fl(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar, Queue<String> queue, String str) {
        this.Qhi = acVar;
        this.ac = queue;
        this.CJ = str;
    }

    public void Qhi(T t) {
        Queue<T> queue = this.cJ;
        if (queue == null || t == null) {
            return;
        }
        queue.offer(t);
    }

    public synchronized List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(int i, int i2) {
        if (cJ(i, i2)) {
            ArrayList arrayList = new ArrayList(this.Qhi.Qhi());
            do {
                T poll = this.cJ.poll();
                if (poll == null) {
                    break;
                }
                arrayList.add(poll);
            } while (arrayList.size() != this.Qhi.cJ());
            return arrayList;
        }
        return null;
    }

    public synchronized void Qhi(int i, List<T> list) {
        if (i == -1 || i == 200 || i == 509) {
            this.cJ.size();
        } else {
            this.cJ.addAll(list);
        }
    }

    public synchronized boolean cJ(int i, int i2) {
        int size = this.cJ.size();
        int Qhi = this.Qhi.Qhi();
        return (i == 2 || i == 1) ? com.bytedance.sdk.component.Tgh.Qhi.ac.Qhi.ac() ? size > 0 : size >= Qhi : size >= Qhi;
    }
}
