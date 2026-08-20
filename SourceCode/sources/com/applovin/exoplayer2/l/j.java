package com.applovin.exoplayer2.l;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
/* loaded from: classes.dex */
public final class j implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3803a = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: b  reason: collision with root package name */
    private final Handler f3804b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f3805c;

    /* renamed from: d  reason: collision with root package name */
    private final b f3806d;

    /* renamed from: e  reason: collision with root package name */
    private EGLDisplay f3807e;

    /* renamed from: f  reason: collision with root package name */
    private EGLContext f3808f;

    /* renamed from: g  reason: collision with root package name */
    private EGLSurface f3809g;

    /* renamed from: h  reason: collision with root package name */
    private SurfaceTexture f3810h;

    /* loaded from: classes.dex */
    public static final class a extends RuntimeException {
        private a(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();
    }

    public j(Handler handler) {
        this(handler, null);
    }

    public j(Handler handler, b bVar) {
        this.f3804b = handler;
        this.f3806d = bVar;
        this.f3805c = new int[1];
    }

    private static EGLConfig a(EGLDisplay eGLDisplay) {
        EGLConfig eGLConfig;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f3803a, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || (eGLConfig = eGLConfigArr[0]) == null) {
            throw new a(ai.a("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfig;
    }

    private static EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
        if (eglCreateContext != null) {
            return eglCreateContext;
        }
        throw new a("eglCreateContext failed");
    }

    private static EGLSurface a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i) {
        EGLSurface eglCreatePbufferSurface;
        if (i == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eglCreatePbufferSurface == null) {
                throw new a("eglCreatePbufferSurface failed");
            }
        }
        if (EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eGLContext)) {
            return eglCreatePbufferSurface;
        }
        throw new a("eglMakeCurrent failed");
    }

    private static void a(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        n.b();
    }

    private void c() {
        b bVar = this.f3806d;
        if (bVar != null) {
            bVar.a();
        }
    }

    private static EGLDisplay d() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                return eglGetDisplay;
            }
            throw new a("eglInitialize failed");
        }
        throw new a("eglGetDisplay failed");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
    public void a() {
        this.f3804b.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f3810h;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f3805c, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f3807e;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglMakeCurrent(this.f3807e, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface = this.f3809g;
            if (eGLSurface != null && !eGLSurface.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f3807e, this.f3809g);
            }
            EGLContext eGLContext = this.f3808f;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f3807e, eGLContext);
            }
            if (ai.f3781a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay2 = this.f3807e;
            if (eGLDisplay2 != null && !eGLDisplay2.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f3807e);
            }
            this.f3807e = null;
            this.f3808f = null;
            this.f3809g = null;
            this.f3810h = null;
        }
    }

    public void a(int i) {
        EGLDisplay d2 = d();
        this.f3807e = d2;
        EGLConfig a2 = a(d2);
        EGLContext a3 = a(this.f3807e, a2, i);
        this.f3808f = a3;
        this.f3809g = a(this.f3807e, a2, a3, i);
        a(this.f3805c);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f3805c[0]);
        this.f3810h = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    public SurfaceTexture b() {
        return (SurfaceTexture) com.applovin.exoplayer2.l.a.b(this.f3810h);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f3804b.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        c();
        SurfaceTexture surfaceTexture = this.f3810h;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
