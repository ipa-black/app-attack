package com.adcolony.sdk;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
class q0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<Callable<T>> f505a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f506b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a<T> extends Callable<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Callable<T> callable) {
        if (this.f506b) {
            return;
        }
        this.f505a.add(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f505a.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<T> a() {
        return a(-1L);
    }

    List<T> a(long j) {
        List<Future<T>> invokeAll;
        this.f506b = true;
        ArrayList arrayList = new ArrayList();
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(this.f505a.size());
        ArrayList arrayList2 = new ArrayList();
        try {
            if (j > 0) {
                invokeAll = newFixedThreadPool.invokeAll(this.f505a, j, TimeUnit.MILLISECONDS);
            } else {
                invokeAll = newFixedThreadPool.invokeAll(this.f505a);
            }
            arrayList2.addAll(invokeAll);
            newFixedThreadPool.shutdownNow();
        } catch (Exception unused) {
        }
        for (int i = 0; i < arrayList2.size(); i++) {
            Future future = (Future) arrayList2.get(i);
            if (!future.isCancelled()) {
                try {
                    arrayList.add(future.get());
                } catch (Exception unused2) {
                }
            } else if (this.f505a.get(i) instanceof a) {
                arrayList.add(((a) this.f505a.get(i)).a());
            }
        }
        return arrayList;
    }
}
