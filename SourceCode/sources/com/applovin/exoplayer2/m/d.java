package com.applovin.exoplayer2.m;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.applovin.exoplayer2.l.q;
/* loaded from: classes.dex */
public final class d extends Surface {

    /* renamed from: b  reason: collision with root package name */
    private static int f3937b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f3938c;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f3939a;

    /* renamed from: d  reason: collision with root package name */
    private final a f3940d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3941e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private com.applovin.exoplayer2.l.j f3942a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f3943b;

        /* renamed from: c  reason: collision with root package name */
        private Error f3944c;

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f3945d;

        /* renamed from: e  reason: collision with root package name */
        private d f3946e;

        public a() {
            super("ExoPlayer:DummySurface");
        }

        private void b() {
            com.applovin.exoplayer2.l.a.b(this.f3942a);
            this.f3942a.a();
        }

        private void b(int i) {
            com.applovin.exoplayer2.l.a.b(this.f3942a);
            this.f3942a.a(i);
            this.f3946e = new d(this, this.f3942a.b(), i != 0);
        }

        public d a(int i) {
            boolean z;
            start();
            this.f3943b = new Handler(getLooper(), this);
            this.f3942a = new com.applovin.exoplayer2.l.j(this.f3943b);
            synchronized (this) {
                z = false;
                this.f3943b.obtainMessage(1, i, 0).sendToTarget();
                while (this.f3946e == null && this.f3945d == null && this.f3944c == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f3945d;
            if (runtimeException == null) {
                Error error = this.f3944c;
                if (error == null) {
                    return (d) com.applovin.exoplayer2.l.a.b(this.f3946e);
                }
                throw error;
            }
            throw runtimeException;
        }

        public void a() {
            com.applovin.exoplayer2.l.a.b(this.f3943b);
            this.f3943b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        b();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    q.c("DummySurface", "Failed to initialize dummy surface", e2);
                    this.f3944c = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e3) {
                    q.c("DummySurface", "Failed to initialize dummy surface", e3);
                    this.f3945d = e3;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }
    }

    private d(a aVar, SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.f3940d = aVar;
        this.f3939a = z;
    }

    public static d a(Context context, boolean z) {
        com.applovin.exoplayer2.l.a.b(!z || a(context));
        return new a().a(z ? f3937b : 0);
    }

    public static synchronized boolean a(Context context) {
        boolean z;
        synchronized (d.class) {
            if (!f3938c) {
                f3937b = b(context);
                f3938c = true;
            }
            z = f3937b != 0;
        }
        return z;
    }

    private static int b(Context context) {
        if (com.applovin.exoplayer2.l.n.a(context)) {
            return com.applovin.exoplayer2.l.n.a() ? 1 : 2;
        }
        return 0;
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f3940d) {
            if (!this.f3941e) {
                this.f3940d.a();
                this.f3941e = true;
            }
        }
    }
}
