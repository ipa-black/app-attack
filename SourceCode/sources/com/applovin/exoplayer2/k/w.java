package com.applovin.exoplayer2.k;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3713a = a(false, (long) C.TIME_UNSET);

    /* renamed from: b  reason: collision with root package name */
    public static final b f3714b = a(true, (long) C.TIME_UNSET);

    /* renamed from: c  reason: collision with root package name */
    public static final b f3715c = new b(2, C.TIME_UNSET);

    /* renamed from: d  reason: collision with root package name */
    public static final b f3716d = new b(3, C.TIME_UNSET);

    /* renamed from: e  reason: collision with root package name */
    private final ExecutorService f3717e;

    /* renamed from: f  reason: collision with root package name */
    private c<? extends d> f3718f;

    /* renamed from: g  reason: collision with root package name */
    private IOException f3719g;

    /* loaded from: classes.dex */
    public interface a<T extends d> {
        b a(T t, long j, long j2, IOException iOException, int i);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3720a;

        /* renamed from: b  reason: collision with root package name */
        private final long f3721b;

        private b(int i, long j) {
            this.f3720a = i;
            this.f3721b = j;
        }

        public boolean a() {
            int i = this.f3720a;
            return i == 0 || i == 1;
        }
    }

    /* loaded from: classes.dex */
    private final class c<T extends d> extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f3722a;

        /* renamed from: c  reason: collision with root package name */
        private final T f3724c;

        /* renamed from: d  reason: collision with root package name */
        private final long f3725d;

        /* renamed from: e  reason: collision with root package name */
        private a<T> f3726e;

        /* renamed from: f  reason: collision with root package name */
        private IOException f3727f;

        /* renamed from: g  reason: collision with root package name */
        private int f3728g;

        /* renamed from: h  reason: collision with root package name */
        private Thread f3729h;
        private boolean i;
        private volatile boolean j;

        public c(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.f3724c = t;
            this.f3726e = aVar;
            this.f3722a = i;
            this.f3725d = j;
        }

        private void a() {
            this.f3727f = null;
            w.this.f3717e.execute((Runnable) com.applovin.exoplayer2.l.a.b(w.this.f3718f));
        }

        private void b() {
            w.this.f3718f = null;
        }

        private long c() {
            return Math.min((this.f3728g - 1) * 1000, 5000);
        }

        public void a(int i) throws IOException {
            IOException iOException = this.f3727f;
            if (iOException != null && this.f3728g > i) {
                throw iOException;
            }
        }

        public void a(long j) {
            com.applovin.exoplayer2.l.a.b(w.this.f3718f == null);
            w.this.f3718f = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                a();
            }
        }

        public void a(boolean z) {
            this.j = z;
            this.f3727f = null;
            if (hasMessages(0)) {
                this.i = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.i = true;
                    this.f3724c.a();
                    Thread thread = this.f3729h;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((a) com.applovin.exoplayer2.l.a.b(this.f3726e)).a(this.f3724c, elapsedRealtime, elapsedRealtime - this.f3725d, true);
                this.f3726e = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.j) {
                return;
            }
            if (message.what == 0) {
                a();
            } else if (message.what == 3) {
                throw ((Error) message.obj);
            } else {
                b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f3725d;
                a aVar = (a) com.applovin.exoplayer2.l.a.b(this.f3726e);
                if (this.i) {
                    aVar.a(this.f3724c, elapsedRealtime, j, false);
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    try {
                        aVar.a(this.f3724c, elapsedRealtime, j);
                    } catch (RuntimeException e2) {
                        com.applovin.exoplayer2.l.q.c("LoadTask", "Unexpected exception handling load completed", e2);
                        w.this.f3719g = new g(e2);
                    }
                } else if (i != 2) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f3727f = iOException;
                    int i2 = this.f3728g + 1;
                    this.f3728g = i2;
                    b a2 = aVar.a(this.f3724c, elapsedRealtime, j, iOException, i2);
                    if (a2.f3720a == 3) {
                        w.this.f3719g = this.f3727f;
                    } else if (a2.f3720a != 2) {
                        if (a2.f3720a == 1) {
                            this.f3728g = 1;
                        }
                        a(a2.f3721b != C.TIME_UNSET ? a2.f3721b : c());
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar;
            Message obtainMessage;
            boolean z;
            try {
                synchronized (this) {
                    z = !this.i;
                    this.f3729h = Thread.currentThread();
                }
                if (z) {
                    ah.a("load:" + this.f3724c.getClass().getSimpleName());
                    try {
                        this.f3724c.b();
                        ah.a();
                    } catch (Throwable th) {
                        ah.a();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.f3729h = null;
                    Thread.interrupted();
                }
                if (this.j) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e2) {
                if (this.j) {
                    return;
                }
                obtainMessage = obtainMessage(2, e2);
                obtainMessage.sendToTarget();
            } catch (Error e3) {
                if (!this.j) {
                    com.applovin.exoplayer2.l.q.c("LoadTask", "Unexpected error loading stream", e3);
                    obtainMessage(3, e3).sendToTarget();
                }
                throw e3;
            } catch (Exception e4) {
                if (this.j) {
                    return;
                }
                com.applovin.exoplayer2.l.q.c("LoadTask", "Unexpected exception loading stream", e4);
                gVar = new g(e4);
                obtainMessage = obtainMessage(2, gVar);
                obtainMessage.sendToTarget();
            } catch (OutOfMemoryError e5) {
                if (this.j) {
                    return;
                }
                com.applovin.exoplayer2.l.q.c("LoadTask", "OutOfMemory error loading stream", e5);
                gVar = new g(e5);
                obtainMessage = obtainMessage(2, gVar);
                obtainMessage.sendToTarget();
            }
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a();

        void b() throws IOException;
    }

    /* loaded from: classes.dex */
    public interface e {
        void h();
    }

    /* loaded from: classes.dex */
    private static final class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final e f3730a;

        public f(e eVar) {
            this.f3730a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3730a.h();
        }
    }

    /* loaded from: classes.dex */
    public static final class g extends IOException {
        public g(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    public w(String str) {
        this.f3717e = ai.a("ExoPlayer:Loader:" + str);
    }

    public static b a(boolean z, long j) {
        return new b(z ? 1 : 0, j);
    }

    public <T extends d> long a(T t, a<T> aVar, int i) {
        this.f3719g = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new c((Looper) com.applovin.exoplayer2.l.a.a(Looper.myLooper()), t, aVar, i, elapsedRealtime).a(0L);
        return elapsedRealtime;
    }

    public void a(int i) throws IOException {
        IOException iOException = this.f3719g;
        if (iOException != null) {
            throw iOException;
        }
        c<? extends d> cVar = this.f3718f;
        if (cVar != null) {
            if (i == Integer.MIN_VALUE) {
                i = cVar.f3722a;
            }
            cVar.a(i);
        }
    }

    public void a(e eVar) {
        c<? extends d> cVar = this.f3718f;
        if (cVar != null) {
            cVar.a(true);
        }
        if (eVar != null) {
            this.f3717e.execute(new f(eVar));
        }
        this.f3717e.shutdown();
    }

    public boolean a() {
        return this.f3719g != null;
    }

    public void b() {
        this.f3719g = null;
    }

    public boolean c() {
        return this.f3718f != null;
    }

    public void d() {
        ((c) com.applovin.exoplayer2.l.a.a(this.f3718f)).a(false);
    }
}
