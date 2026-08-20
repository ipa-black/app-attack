package com.bytedance.adsdk.lottie;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* compiled from: LottieTask.java */
/* loaded from: classes2.dex */
public class ABk<T> {
    public static Executor Qhi = Executors.newCachedThreadPool();
    private final Handler CJ;
    private final Set<Gm<Throwable>> ac;
    private final Set<Gm<T>> cJ;
    private volatile zc<T> fl;

    public ABk(Callable<zc<T>> callable) {
        this(callable, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ABk(Callable<zc<T>> callable, boolean z) {
        this.cJ = new LinkedHashSet(1);
        this.ac = new LinkedHashSet(1);
        this.CJ = new Handler(Looper.getMainLooper());
        this.fl = null;
        if (z) {
            try {
                Qhi((zc) callable.call());
                return;
            } catch (Throwable th) {
                Qhi((zc) new zc<>(th));
                return;
            }
        }
        Qhi.execute(new Qhi(callable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(zc<T> zcVar) {
        if (this.fl != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.fl = zcVar;
        Qhi();
    }

    public synchronized ABk<T> Qhi(Gm<T> gm) {
        zc<T> zcVar = this.fl;
        if (zcVar != null && zcVar.Qhi() != null) {
            gm.Qhi(zcVar.Qhi());
        }
        this.cJ.add(gm);
        return this;
    }

    public synchronized ABk<T> cJ(Gm<T> gm) {
        this.cJ.remove(gm);
        return this;
    }

    public synchronized ABk<T> ac(Gm<Throwable> gm) {
        zc<T> zcVar = this.fl;
        if (zcVar != null && zcVar.cJ() != null) {
            gm.Qhi(zcVar.cJ());
        }
        this.ac.add(gm);
        return this;
    }

    public synchronized ABk<T> CJ(Gm<Throwable> gm) {
        this.ac.remove(gm);
        return this;
    }

    private void Qhi() {
        this.CJ.post(new Runnable() { // from class: com.bytedance.adsdk.lottie.ABk.1
            @Override // java.lang.Runnable
            public void run() {
                zc zcVar = ABk.this.fl;
                if (zcVar == null) {
                    return;
                }
                if (zcVar.Qhi() != null) {
                    ABk.this.Qhi((ABk) zcVar.Qhi());
                } else {
                    ABk.this.Qhi(zcVar.cJ());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Qhi(T t) {
        for (Gm gm : new ArrayList(this.cJ)) {
            gm.Qhi(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void Qhi(Throwable th) {
        ArrayList<Gm> arrayList = new ArrayList(this.ac);
        if (arrayList.isEmpty()) {
            return;
        }
        for (Gm gm : arrayList) {
            gm.Qhi(th);
        }
    }

    /* compiled from: LottieTask.java */
    /* loaded from: classes2.dex */
    private class Qhi extends FutureTask<zc<T>> {
        Qhi(Callable<zc<T>> callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            if (isCancelled()) {
                return;
            }
            try {
                ABk.this.Qhi((zc) get());
            } catch (InterruptedException | ExecutionException e2) {
                ABk.this.Qhi(new zc(e2));
            }
        }
    }
}
