package com.applovin.exoplayer2.m;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.m.e f3993a = new com.applovin.exoplayer2.m.e();

    /* renamed from: b  reason: collision with root package name */
    private final b f3994b;

    /* renamed from: c  reason: collision with root package name */
    private final e f3995c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3996d;

    /* renamed from: e  reason: collision with root package name */
    private Surface f3997e;

    /* renamed from: f  reason: collision with root package name */
    private float f3998f;

    /* renamed from: g  reason: collision with root package name */
    private float f3999g;

    /* renamed from: h  reason: collision with root package name */
    private float f4000h;
    private float i;
    private int j;
    private long k;
    private long l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static void a(Surface surface, float f2) {
            try {
                surface.setFrameRate(f2, f2 == 0.0f ? 0 : 1);
            } catch (IllegalStateException e2) {
                q.c("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {

        /* loaded from: classes.dex */
        public interface a {
            void onDefaultDisplayChanged(Display display);
        }

        void a();

        void a(a aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final WindowManager f4001a;

        private c(WindowManager windowManager) {
            this.f4001a = windowManager;
        }

        public static b a(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void a() {
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void a(b.a aVar) {
            aVar.onDefaultDisplayChanged(this.f4001a.getDefaultDisplay());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements DisplayManager.DisplayListener, b {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f4002a;

        /* renamed from: b  reason: collision with root package name */
        private b.a f4003b;

        private d(DisplayManager displayManager) {
            this.f4002a = displayManager;
        }

        public static b a(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        private Display b() {
            return this.f4002a.getDisplay(0);
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void a() {
            this.f4002a.unregisterDisplayListener(this);
            this.f4003b = null;
        }

        @Override // com.applovin.exoplayer2.m.m.b
        public void a(b.a aVar) {
            this.f4003b = aVar;
            this.f4002a.registerDisplayListener(this, ai.a());
            aVar.onDefaultDisplayChanged(b());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            b.a aVar = this.f4003b;
            if (aVar == null || i != 0) {
                return;
            }
            aVar.onDefaultDisplayChanged(b());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements Handler.Callback, Choreographer.FrameCallback {

        /* renamed from: b  reason: collision with root package name */
        private static final e f4004b = new e();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f4005a = C.TIME_UNSET;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f4006c;

        /* renamed from: d  reason: collision with root package name */
        private final HandlerThread f4007d;

        /* renamed from: e  reason: collision with root package name */
        private Choreographer f4008e;

        /* renamed from: f  reason: collision with root package name */
        private int f4009f;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f4007d = handlerThread;
            handlerThread.start();
            Handler a2 = ai.a(handlerThread.getLooper(), (Handler.Callback) this);
            this.f4006c = a2;
            a2.sendEmptyMessage(0);
        }

        public static e a() {
            return f4004b;
        }

        private void d() {
            this.f4008e = Choreographer.getInstance();
        }

        private void e() {
            int i = this.f4009f + 1;
            this.f4009f = i;
            if (i == 1) {
                ((Choreographer) com.applovin.exoplayer2.l.a.b(this.f4008e)).postFrameCallback(this);
            }
        }

        private void f() {
            int i = this.f4009f - 1;
            this.f4009f = i;
            if (i == 0) {
                ((Choreographer) com.applovin.exoplayer2.l.a.b(this.f4008e)).removeFrameCallback(this);
                this.f4005a = C.TIME_UNSET;
            }
        }

        public void b() {
            this.f4006c.sendEmptyMessage(1);
        }

        public void c() {
            this.f4006c.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.f4005a = j;
            ((Choreographer) com.applovin.exoplayer2.l.a.b(this.f4008e)).postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                d();
                return true;
            } else if (i == 1) {
                e();
                return true;
            } else if (i != 2) {
                return false;
            } else {
                f();
                return true;
            }
        }
    }

    public m(Context context) {
        b a2 = a(context);
        this.f3994b = a2;
        this.f3995c = a2 != null ? e.a() : null;
        this.k = C.TIME_UNSET;
        this.l = C.TIME_UNSET;
        this.f3998f = -1.0f;
        this.i = 1.0f;
        this.j = 0;
    }

    private static long a(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (((j - j2) / j3) * j3);
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j5 = j3 + j5;
            j4 = j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    private static b a(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            b a2 = ai.f3781a >= 17 ? d.a(applicationContext) : null;
            return a2 == null ? c.a(applicationContext) : a2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Display display) {
        long j;
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.k = refreshRate;
            j = (refreshRate * 80) / 100;
        } else {
            q.c("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            j = C.TIME_UNSET;
            this.k = C.TIME_UNSET;
        }
        this.l = j;
    }

    private void a(boolean z) {
        Surface surface;
        float f2;
        if (ai.f3781a < 30 || (surface = this.f3997e) == null || this.j == Integer.MIN_VALUE) {
            return;
        }
        if (this.f3996d) {
            float f3 = this.f3999g;
            if (f3 != -1.0f) {
                f2 = f3 * this.i;
                if (z && this.f4000h == f2) {
                    return;
                }
                this.f4000h = f2;
                a.a(surface, f2);
            }
        }
        f2 = 0.0f;
        if (z) {
        }
        this.f4000h = f2;
        a.a(surface, f2);
    }

    private static boolean a(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    private void f() {
        this.m = 0L;
        this.p = -1L;
        this.n = -1L;
    }

    private void g() {
        if (ai.f3781a < 30 || this.f3997e == null) {
            return;
        }
        float f2 = this.f3993a.b() ? this.f3993a.f() : this.f3998f;
        float f3 = this.f3999g;
        if (f2 == f3) {
            return;
        }
        int i = (f2 > (-1.0f) ? 1 : (f2 == (-1.0f) ? 0 : -1));
        if (i != 0 && f3 != -1.0f) {
            if (Math.abs(f2 - this.f3999g) < ((!this.f3993a.b() || this.f3993a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (i == 0 && this.f3993a.c() < 30) {
            return;
        }
        this.f3999g = f2;
        a(false);
    }

    private void h() {
        Surface surface;
        if (ai.f3781a < 30 || (surface = this.f3997e) == null || this.j == Integer.MIN_VALUE || this.f4000h == 0.0f) {
            return;
        }
        this.f4000h = 0.0f;
        a.a(surface, 0.0f);
    }

    public void a() {
        if (this.f3994b != null) {
            ((e) com.applovin.exoplayer2.l.a.b(this.f3995c)).b();
            this.f3994b.a(new b.a() { // from class: com.applovin.exoplayer2.m.m$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.m.m.b.a
                public final void onDefaultDisplayChanged(Display display) {
                    m.this.a(display);
                }
            });
        }
    }

    public void a(float f2) {
        this.i = f2;
        f();
        a(false);
    }

    public void a(int i) {
        if (this.j == i) {
            return;
        }
        this.j = i;
        a(true);
    }

    public void a(long j) {
        long j2 = this.n;
        if (j2 != -1) {
            this.p = j2;
            this.q = this.o;
        }
        this.m++;
        this.f3993a.a(j * 1000);
        g();
    }

    public void a(Surface surface) {
        if (surface instanceof com.applovin.exoplayer2.m.d) {
            surface = null;
        }
        if (this.f3997e == surface) {
            return;
        }
        h();
        this.f3997e = surface;
        a(true);
    }

    public long b(long j) {
        long j2;
        e eVar;
        if (this.p != -1 && this.f3993a.b()) {
            long e2 = this.q + (((float) (this.f3993a.e() * (this.m - this.p))) / this.i);
            if (a(j, e2)) {
                j2 = e2;
                this.n = this.m;
                this.o = j2;
                eVar = this.f3995c;
                if (eVar != null || this.k == C.TIME_UNSET) {
                    return j2;
                }
                long j3 = eVar.f4005a;
                return j3 == C.TIME_UNSET ? j2 : a(j2, j3, this.k) - this.l;
            }
            f();
        }
        j2 = j;
        this.n = this.m;
        this.o = j2;
        eVar = this.f3995c;
        if (eVar != null) {
        }
        return j2;
    }

    public void b() {
        this.f3996d = true;
        f();
        a(false);
    }

    public void b(float f2) {
        this.f3998f = f2;
        this.f3993a.a();
        g();
    }

    public void c() {
        f();
    }

    public void d() {
        this.f3996d = false;
        h();
    }

    public void e() {
        b bVar = this.f3994b;
        if (bVar != null) {
            bVar.a();
            ((e) com.applovin.exoplayer2.l.a.b(this.f3995c)).c();
        }
    }
}
