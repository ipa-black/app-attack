package com.adcolony.sdk;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.adcolony.sdk.e0;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.bidmachine.utils.IabUtils;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a1 extends TextureView implements MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnSeekCompleteListener, TextureView.SurfaceTextureListener {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private String E;
    private String F;
    private FileInputStream G;
    private h0 H;
    private com.adcolony.sdk.c I;
    private Surface J;
    private SurfaceTexture K;
    private RectF L;
    private j M;
    private ProgressBar N;
    private MediaPlayer O;
    private f1 P;
    private ExecutorService Q;
    private h0 R;

    /* renamed from: a  reason: collision with root package name */
    private float f140a;

    /* renamed from: b  reason: collision with root package name */
    private float f141b;

    /* renamed from: c  reason: collision with root package name */
    private float f142c;

    /* renamed from: d  reason: collision with root package name */
    private float f143d;

    /* renamed from: e  reason: collision with root package name */
    private float f144e;

    /* renamed from: f  reason: collision with root package name */
    private float f145f;

    /* renamed from: g  reason: collision with root package name */
    private int f146g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f147h;
    private Paint i;
    private Paint j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private double r;
    private double s;
    private long t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a1.this.a(h0Var)) {
                a1.this.i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {
        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a1.this.a(h0Var)) {
                a1.this.c(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {
        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a1.this.a(h0Var)) {
                a1.this.d(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements j0 {
        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a1.this.a(h0Var)) {
                a1.this.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a1.this.a(h0Var)) {
                a1.this.b(h0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements j0 {
        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            if (a1.this.a(h0Var)) {
                a1.this.e(h0Var);
            }
        }
    }

    /* loaded from: classes.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(150L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            if (a1.this.R != null) {
                f1 b2 = c0.b();
                c0.b(b2, "id", a1.this.o);
                c0.a(b2, "ad_session_id", a1.this.F);
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
                a1.this.R.a(b2).c();
                a1.this.R = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.this.t = 0L;
            while (!a1.this.u && !a1.this.x && com.adcolony.sdk.a.c()) {
                Context a2 = com.adcolony.sdk.a.a();
                if (a1.this.u || a1.this.z || a2 == null || !(a2 instanceof Activity)) {
                    return;
                }
                if (a1.this.O.isPlaying()) {
                    if (a1.this.t == 0 && com.adcolony.sdk.a.f127d) {
                        a1.this.t = System.currentTimeMillis();
                    }
                    a1.this.w = true;
                    a1 a1Var = a1.this;
                    a1Var.r = a1Var.O.getCurrentPosition() / 1000.0d;
                    a1 a1Var2 = a1.this;
                    a1Var2.s = a1Var2.O.getDuration() / 1000.0d;
                    if (System.currentTimeMillis() - a1.this.t > 1000 && !a1.this.C && com.adcolony.sdk.a.f127d) {
                        if (a1.this.r != 0.0d) {
                            a1.this.C = true;
                        } else {
                            new e0.a().a("getCurrentPosition() not working, firing ").a("AdSession.on_error").a(e0.i);
                            a1.this.g();
                        }
                    }
                    if (a1.this.B) {
                        a1.this.e();
                    }
                }
                if (a1.this.w && !a1.this.u && !a1.this.x) {
                    c0.b(a1.this.P, "id", a1.this.o);
                    c0.b(a1.this.P, "container_id", a1.this.I.c());
                    c0.a(a1.this.P, "ad_session_id", a1.this.F);
                    c0.a(a1.this.P, "elapsed", a1.this.r);
                    c0.a(a1.this.P, "duration", a1.this.s);
                    new h0("VideoView.on_progress", a1.this.I.k(), a1.this.P).c();
                }
                if (a1.this.v || ((Activity) a2).isFinishing()) {
                    a1.this.v = false;
                    a1.this.j();
                    return;
                }
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException unused) {
                    a1.this.g();
                    new e0.a().a("InterruptedException in ADCVideoView's update thread.").a(e0.f297h);
                }
            }
            if (a1.this.v) {
                a1.this.j();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f156a;

        i(Context context) {
            this.f156a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            a1.this.M = new j(this.f156a);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (a1.this.f142c * 4.0f), (int) (a1.this.f142c * 4.0f));
            layoutParams.setMargins(0, a1.this.I.b() - ((int) (a1.this.f142c * 4.0f)), 0, 0);
            layoutParams.gravity = 0;
            a1.this.I.addView(a1.this.M, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class j extends View {
        j(Context context) {
            super(context);
            setWillNotDraw(false);
            try {
                j.class.getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(this, 1, null);
            } catch (Exception unused) {
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            canvas.drawArc(a1.this.L, 270.0f, a1.this.f143d, false, a1.this.i);
            canvas.drawText("" + a1.this.f146g, a1.this.L.centerX(), (float) (a1.this.L.centerY() + (a1.this.j.getFontMetrics().bottom * 1.35d)), a1.this.j);
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a1(Context context, h0 h0Var, int i2, com.adcolony.sdk.c cVar) {
        super(context);
        this.f147h = true;
        this.i = new Paint();
        this.j = new Paint(1);
        this.L = new RectF();
        this.P = c0.b();
        this.Q = Executors.newSingleThreadExecutor();
        this.I = cVar;
        this.H = h0Var;
        this.o = i2;
        setSurfaceTextureListener(this);
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.u = true;
        this.r = this.s;
        c0.b(this.P, "id", this.o);
        c0.b(this.P, "container_id", this.I.c());
        c0.a(this.P, "ad_session_id", this.F);
        c0.a(this.P, "elapsed", this.r);
        c0.a(this.P, "duration", this.s);
        new h0("VideoView.on_progress", this.I.k(), this.P).c();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        g();
        new e0.a().a("MediaPlayer error: " + i2 + "," + i3).a(e0.f297h);
        return true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        l();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.y = true;
        if (this.D) {
            this.I.removeView(this.N);
        }
        if (this.A) {
            this.p = mediaPlayer.getVideoWidth();
            this.q = mediaPlayer.getVideoHeight();
            l();
            new e0.a().a("MediaPlayer getVideoWidth = ").a(mediaPlayer.getVideoWidth()).a(e0.f294e);
            new e0.a().a("MediaPlayer getVideoHeight = ").a(mediaPlayer.getVideoHeight()).a(e0.f294e);
        }
        f1 b2 = c0.b();
        c0.b(b2, "id", this.o);
        c0.b(b2, "container_id", this.I.c());
        c0.a(b2, "ad_session_id", this.F);
        new h0("VideoView.on_ready", this.I.k(), b2).c();
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        ExecutorService executorService = this.Q;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        try {
            this.Q.submit(new g());
        } catch (RejectedExecutionException unused) {
            g();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        if (surfaceTexture != null && !this.z) {
            Surface surface = new Surface(surfaceTexture);
            this.J = surface;
            try {
                this.O.setSurface(surface);
            } catch (IllegalStateException unused) {
                new e0.a().a("IllegalStateException thrown when calling MediaPlayer.setSurface()").a(e0.f297h);
                g();
            }
            this.K = surfaceTexture;
            return;
        }
        new e0.a().a("Null texture provided by system's onSurfaceTextureAvailable or ").a("MediaPlayer has been destroyed.").a(e0.i);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.K = surfaceTexture;
        if (this.z) {
            surfaceTexture.release();
            return true;
        }
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.K = surfaceTexture;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.K = surfaceTexture;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        k b2 = com.adcolony.sdk.a.b();
        com.adcolony.sdk.d c2 = b2.c();
        int action = motionEvent.getAction() & 255;
        if (action == 0 || action == 1 || action == 3 || action == 2 || action == 5 || action == 6) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            f1 b3 = c0.b();
            c0.b(b3, "view_id", this.o);
            c0.a(b3, "ad_session_id", this.F);
            c0.b(b3, "container_x", this.k + x);
            c0.b(b3, "container_y", this.l + y);
            c0.b(b3, "view_x", x);
            c0.b(b3, "view_y", y);
            c0.b(b3, "id", this.I.c());
            if (action == 0) {
                new h0("AdContainer.on_touch_began", this.I.k(), b3).c();
            } else if (action == 1) {
                if (!this.I.p()) {
                    b2.a(c2.d().get(this.F));
                }
                new h0("AdContainer.on_touch_ended", this.I.k(), b3).c();
            } else if (action == 2) {
                new h0("AdContainer.on_touch_moved", this.I.k(), b3).c();
            } else if (action == 3) {
                new h0("AdContainer.on_touch_cancelled", this.I.k(), b3).c();
            } else if (action == 5) {
                int action2 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", ((int) motionEvent.getX(action2)) + this.k);
                c0.b(b3, "container_y", ((int) motionEvent.getY(action2)) + this.l);
                c0.b(b3, "view_x", (int) motionEvent.getX(action2));
                c0.b(b3, "view_y", (int) motionEvent.getY(action2));
                new h0("AdContainer.on_touch_began", this.I.k(), b3).c();
            } else if (action == 6) {
                int action3 = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                c0.b(b3, "container_x", ((int) motionEvent.getX(action3)) + this.k);
                c0.b(b3, "container_y", ((int) motionEvent.getY(action3)) + this.l);
                c0.b(b3, "view_x", (int) motionEvent.getX(action3));
                c0.b(b3, "view_y", (int) motionEvent.getY(action3));
                if (!this.I.p()) {
                    b2.a(c2.d().get(this.F));
                }
                new h0("AdContainer.on_touch_ended", this.I.k(), b3).c();
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        f1 b2 = c0.b();
        c0.a(b2, "id", this.F);
        new h0("AdSession.on_error", this.I.k(), b2).c();
        this.u = true;
    }

    private void l() {
        double min = Math.min(this.m / this.p, this.n / this.q);
        int i2 = (int) (this.p * min);
        int i3 = (int) (this.q * min);
        new e0.a().a("setMeasuredDimension to ").a(i2).a(" by ").a(i3).a(e0.f294e);
        setMeasuredDimension(i2, i3);
        if (this.A) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams.width = i2;
            layoutParams.height = i3;
            layoutParams.gravity = 17;
            layoutParams.setMargins(0, 0, 0, 0);
            setLayoutParams(layoutParams);
        }
    }

    private void m() {
        try {
            this.Q.submit(new h());
        } catch (RejectedExecutionException unused) {
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        if (!this.y) {
            new e0.a().a("ADCVideoView pause() called while MediaPlayer is not prepared.").a(e0.f296g);
            return false;
        } else if (this.w) {
            this.O.getCurrentPosition();
            this.s = this.O.getDuration();
            this.O.pause();
            this.x = true;
            return true;
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        if (this.y) {
            if (!this.x && com.adcolony.sdk.a.f127d) {
                this.O.start();
                m();
            } else if (!this.u && com.adcolony.sdk.a.f127d) {
                this.O.start();
                this.x = false;
                if (!this.Q.isShutdown()) {
                    m();
                }
                j jVar = this.M;
                if (jVar != null) {
                    jVar.invalidate();
                }
            }
            setWillNotDraw(false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        new e0.a().a("MediaPlayer stopped and released.").a(e0.f294e);
        try {
            if (!this.u && this.y && this.O.isPlaying()) {
                this.O.stop();
            }
        } catch (IllegalStateException unused) {
            new e0.a().a("Caught IllegalStateException when calling stop on MediaPlayer").a(e0.f296g);
        }
        ProgressBar progressBar = this.N;
        if (progressBar != null) {
            this.I.removeView(progressBar);
        }
        this.u = true;
        this.y = false;
        this.O.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        this.v = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        Context a2;
        f1 a3 = this.H.a();
        this.F = c0.h(a3, "ad_session_id");
        this.k = c0.d(a3, "x");
        this.l = c0.d(a3, "y");
        this.m = c0.d(a3, IabUtils.KEY_WIDTH);
        this.n = c0.d(a3, IabUtils.KEY_HEIGHT);
        this.B = c0.b(a3, "enable_timer");
        this.D = c0.b(a3, "enable_progress");
        this.E = c0.h(a3, "filepath");
        this.p = c0.d(a3, "video_width");
        this.q = c0.d(a3, "video_height");
        this.f145f = com.adcolony.sdk.a.b().n().s();
        new e0.a().a("Original video dimensions = ").a(this.p).a("x").a(this.q).a(e0.f292c);
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.m, this.n);
        layoutParams.setMargins(this.k, this.l, 0, 0);
        layoutParams.gravity = 0;
        this.I.addView(this, layoutParams);
        if (this.D && (a2 = com.adcolony.sdk.a.a()) != null) {
            ProgressBar progressBar = new ProgressBar(a2);
            this.N = progressBar;
            com.adcolony.sdk.c cVar = this.I;
            int i2 = (int) (this.f145f * 100.0f);
            cVar.addView(progressBar, new FrameLayout.LayoutParams(i2, i2, 17));
        }
        this.O = new MediaPlayer();
        this.y = false;
        try {
            if (!this.E.startsWith("http")) {
                FileInputStream fileInputStream = new FileInputStream(this.E);
                this.G = fileInputStream;
                this.O.setDataSource(fileInputStream.getFD());
            } else {
                this.A = true;
                this.O.setDataSource(this.E);
            }
            this.O.setOnErrorListener(this);
            this.O.setOnPreparedListener(this);
            this.O.setOnCompletionListener(this);
            this.O.prepareAsync();
        } catch (IOException e2) {
            new e0.a().a("Failed to create/prepare MediaPlayer: ").a(e2.toString()).a(e0.f297h);
            g();
        }
        this.I.i().add(com.adcolony.sdk.a.a("VideoView.play", (j0) new a(), true));
        this.I.i().add(com.adcolony.sdk.a.a("VideoView.set_bounds", (j0) new b(), true));
        this.I.i().add(com.adcolony.sdk.a.a("VideoView.set_visible", (j0) new c(), true));
        this.I.i().add(com.adcolony.sdk.a.a("VideoView.pause", (j0) new d(), true));
        this.I.i().add(com.adcolony.sdk.a.a("VideoView.seek_to_time", (j0) new e(), true));
        this.I.i().add(com.adcolony.sdk.a.a("VideoView.set_volume", (j0) new f(), true));
        this.I.j().add("VideoView.play");
        this.I.j().add("VideoView.set_bounds");
        this.I.j().add("VideoView.set_visible");
        this.I.j().add("VideoView.pause");
        this.I.j().add("VideoView.seek_to_time");
        this.I.j().add("VideoView.set_volume");
    }

    void e() {
        Rect rect;
        if (this.f147h) {
            this.f144e = (float) (360.0d / this.s);
            this.j.setColor(-3355444);
            this.j.setShadowLayer((int) (this.f145f * 2.0f), 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
            this.j.setTextAlign(Paint.Align.CENTER);
            this.j.setLinearText(true);
            this.j.setTextSize(this.f145f * 12.0f);
            this.i.setStyle(Paint.Style.STROKE);
            float f2 = this.f145f * 2.0f;
            if (f2 > 6.0f) {
                f2 = 6.0f;
            }
            if (f2 < 4.0f) {
                f2 = 4.0f;
            }
            this.i.setStrokeWidth(f2);
            this.i.setShadowLayer((int) (this.f145f * 3.0f), 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
            this.i.setColor(-3355444);
            this.j.getTextBounds("0123456789", 0, 9, new Rect());
            this.f142c = rect.height();
            Context a2 = com.adcolony.sdk.a.a();
            if (a2 != null) {
                z0.b(new i(a2));
            }
            this.f147h = false;
        }
        this.f146g = (int) (this.s - this.r);
        float f3 = this.f142c;
        float f4 = (int) f3;
        this.f140a = f4;
        float f5 = (int) (3.0f * f3);
        this.f141b = f5;
        float f6 = f3 / 2.0f;
        float f7 = f3 * 2.0f;
        this.L.set(f4 - f6, f5 - f7, f4 + f7, f5 + f6);
        this.f143d = (float) (this.f144e * (this.s - this.r));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(h0 h0Var) {
        f1 a2 = h0Var.a();
        this.k = c0.d(a2, "x");
        this.l = c0.d(a2, "y");
        this.m = c0.d(a2, IabUtils.KEY_WIDTH);
        this.n = c0.d(a2, IabUtils.KEY_HEIGHT);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.k, this.l, 0, 0);
        layoutParams.width = this.m;
        layoutParams.height = this.n;
        setLayoutParams(layoutParams);
        if (!this.B || this.M == null) {
            return;
        }
        int i2 = (int) (this.f142c * 4.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
        layoutParams2.setMargins(0, this.I.b() - ((int) (this.f142c * 4.0f)), 0, 0);
        layoutParams2.gravity = 0;
        this.M.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(h0 h0Var) {
        if (this.y) {
            if (this.u) {
                this.u = false;
            }
            this.R = h0Var;
            int d2 = c0.d(h0Var.a(), "time");
            int duration = this.O.getDuration() / 1000;
            this.O.setOnSeekCompleteListener(this);
            this.O.seekTo(d2 * 1000);
            if (duration == d2) {
                this.u = true;
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.K != null) {
            this.z = true;
        }
        this.Q.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(h0 h0Var) {
        f1 a2 = h0Var.a();
        return c0.d(a2, "id") == this.o && c0.d(a2, "container_id") == this.I.c() && c0.h(a2, "ad_session_id").equals(this.I.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.O != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaPlayer b() {
        return this.O;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(h0 h0Var) {
        if (this.y) {
            float c2 = (float) c0.c(h0Var.a(), "volume");
            AdColonyInterstitial j2 = com.adcolony.sdk.a.b().j();
            if (j2 != null) {
                j2.a(((double) c2) <= 0.0d);
            }
            this.O.setVolume(c2, c2);
            f1 b2 = c0.b();
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(h0 h0Var) {
        j jVar;
        j jVar2;
        if (c0.b(h0Var.a(), "visible")) {
            setVisibility(0);
            if (!this.B || (jVar2 = this.M) == null) {
                return;
            }
            jVar2.setVisibility(0);
            return;
        }
        setVisibility(4);
        if (!this.B || (jVar = this.M) == null) {
            return;
        }
        jVar.setVisibility(4);
    }
}
