package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    static final b<d, Runnable> f1167a = new b<d, Runnable>() { // from class: com.apm.insight.runtime.u.1
    };

    /* renamed from: b  reason: collision with root package name */
    static final b<Message, Runnable> f1168b = new b<Message, Runnable>() { // from class: com.apm.insight.runtime.u.2
    };

    /* renamed from: c  reason: collision with root package name */
    private final HandlerThread f1169c;

    /* renamed from: f  reason: collision with root package name */
    private volatile Handler f1172f;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<d> f1170d = new ConcurrentLinkedQueue();

    /* renamed from: e  reason: collision with root package name */
    private final Queue<Message> f1171e = new ConcurrentLinkedQueue();

    /* renamed from: g  reason: collision with root package name */
    private final Object f1173g = new Object();

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        void a() {
            while (!u.this.f1170d.isEmpty()) {
                d dVar = (d) u.this.f1170d.poll();
                if (u.this.f1172f != null) {
                    try {
                        u.this.f1172f.sendMessageAtTime(dVar.f1178a, dVar.f1179b);
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        void b() {
            while (!u.this.f1171e.isEmpty()) {
                if (u.this.f1172f != null) {
                    try {
                        u.this.f1172f.sendMessageAtFrontOfQueue((Message) u.this.f1171e.poll());
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            b();
            a();
        }
    }

    /* loaded from: classes.dex */
    public interface b<A, B> {
    }

    /* loaded from: classes.dex */
    class c extends HandlerThread {

        /* renamed from: a  reason: collision with root package name */
        volatile int f1175a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f1176b;

        c(String str) {
            super(str);
            this.f1175a = 0;
            this.f1176b = false;
        }

        @Override // android.os.HandlerThread
        protected void onLooperPrepared() {
            super.onLooperPrepared();
            synchronized (u.this.f1173g) {
                u.this.f1172f = new Handler();
            }
            u.this.f1172f.post(new a());
            while (true) {
                try {
                    Looper.loop();
                } catch (Throwable th) {
                    try {
                        com.apm.insight.b.g.a(com.apm.insight.i.g()).a().c();
                        if (this.f1175a < 5) {
                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                        } else if (!this.f1176b) {
                            this.f1176b = true;
                            com.apm.insight.c.a().a("NPTH_ERR_MAX", new RuntimeException());
                        }
                        this.f1175a++;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        Message f1178a;

        /* renamed from: b  reason: collision with root package name */
        long f1179b;

        d(Message message, long j) {
            this.f1178a = message;
            this.f1179b = j;
        }
    }

    public u(String str) {
        this.f1169c = new c(str);
    }

    private Message b(Runnable runnable) {
        return Message.obtain(this.f1172f, runnable);
    }

    public Handler a() {
        return this.f1172f;
    }

    public final boolean a(Message message, long j) {
        if (j < 0) {
            j = 0;
        }
        return b(message, SystemClock.uptimeMillis() + j);
    }

    public final boolean a(Runnable runnable) {
        return a(b(runnable), 0L);
    }

    public final boolean a(Runnable runnable, long j) {
        return a(b(runnable), j);
    }

    public void b() {
        this.f1169c.start();
    }

    public final boolean b(Message message, long j) {
        if (this.f1172f == null) {
            synchronized (this.f1173g) {
                if (this.f1172f == null) {
                    this.f1170d.add(new d(message, j));
                    return true;
                }
            }
        }
        try {
            return this.f1172f.sendMessageAtTime(message, j);
        } catch (Throwable unused) {
            return true;
        }
    }

    public HandlerThread c() {
        return this.f1169c;
    }
}
