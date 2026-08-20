package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.impl.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes5.dex */
public class NetworkCore extends com.yandex.metrica.networktasks.impl.c {

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue f16237b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f16238c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f16239d;

    /* renamed from: e  reason: collision with root package name */
    private volatile c f16240e;

    /* renamed from: f  reason: collision with root package name */
    private final e f16241f;

    public NetworkCore() {
        this(new e());
    }

    NetworkCore(e eVar) {
        this.f16237b = new LinkedBlockingQueue();
        this.f16238c = new Object();
        this.f16239d = new Object();
        this.f16241f = eVar;
    }

    public void onDestroy() {
        synchronized (this.f16239d) {
            c cVar = this.f16240e;
            if (cVar != null) {
                cVar.f16269a.onTaskRemoved();
            }
            ArrayList arrayList = new ArrayList(this.f16237b.size());
            this.f16237b.drainTo(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((c) it.next()).f16269a.onTaskRemoved();
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        NetworkTask networkTask = null;
        while (isRunning()) {
            try {
                synchronized (this.f16239d) {
                }
                this.f16240e = (c) this.f16237b.take();
                networkTask = this.f16240e.f16269a;
                networkTask.getExecutor().execute(this.f16241f.a(networkTask, this));
                synchronized (this.f16239d) {
                    this.f16240e = null;
                    networkTask.onTaskFinished();
                    networkTask.onTaskRemoved();
                }
            } catch (InterruptedException unused) {
                synchronized (this.f16239d) {
                    this.f16240e = null;
                    if (networkTask != null) {
                        networkTask.onTaskFinished();
                        networkTask.onTaskRemoved();
                    }
                }
            } catch (Throwable th) {
                synchronized (this.f16239d) {
                    this.f16240e = null;
                    if (networkTask != null) {
                        networkTask.onTaskFinished();
                        networkTask.onTaskRemoved();
                    }
                    throw th;
                }
            }
        }
    }

    public void startTask(NetworkTask networkTask) {
        synchronized (this.f16238c) {
            c cVar = new c(networkTask);
            if (isRunning() && !this.f16237b.contains(cVar) && !cVar.equals(this.f16240e) && cVar.f16269a.onTaskAdded()) {
                this.f16237b.offer(cVar);
            }
        }
    }
}
