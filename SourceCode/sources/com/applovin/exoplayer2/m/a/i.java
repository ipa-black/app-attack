package com.applovin.exoplayer2.m.a;

import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.view.Surface;
import com.applovin.exoplayer2.m.l;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class i extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    private final CopyOnWriteArrayList<a> f3920a;

    /* renamed from: b  reason: collision with root package name */
    private final SensorManager f3921b;

    /* renamed from: c  reason: collision with root package name */
    private final Sensor f3922c;

    /* renamed from: d  reason: collision with root package name */
    private final d f3923d;

    /* renamed from: e  reason: collision with root package name */
    private final Handler f3924e;

    /* renamed from: f  reason: collision with root package name */
    private final h f3925f;

    /* renamed from: g  reason: collision with root package name */
    private SurfaceTexture f3926g;

    /* renamed from: h  reason: collision with root package name */
    private Surface f3927h;
    private boolean i;
    private boolean j;
    private boolean k;

    /* loaded from: classes.dex */
    public interface a {
        void a(Surface surface);
    }

    private void a() {
        boolean z = this.i && this.j;
        Sensor sensor = this.f3922c;
        if (sensor == null || z == this.k) {
            return;
        }
        if (z) {
            this.f3921b.registerListener(this.f3923d, sensor, 0);
        } else {
            this.f3921b.unregisterListener(this.f3923d);
        }
        this.k = z;
    }

    private static void a(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        Surface surface = this.f3927h;
        if (surface != null) {
            Iterator<a> it = this.f3920a.iterator();
            while (it.hasNext()) {
                it.next().a(surface);
            }
        }
        a(this.f3926g, surface);
        this.f3926g = null;
        this.f3927h = null;
    }

    public void a(a aVar) {
        this.f3920a.add(aVar);
    }

    public void b(a aVar) {
        this.f3920a.remove(aVar);
    }

    public com.applovin.exoplayer2.m.a.a getCameraMotionListener() {
        return this.f3925f;
    }

    public l getVideoFrameMetadataListener() {
        return this.f3925f;
    }

    public Surface getVideoSurface() {
        return this.f3927h;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3924e.post(new Runnable() { // from class: com.applovin.exoplayer2.m.a.i$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                i.this.b();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.j = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.j = true;
        a();
    }

    public void setDefaultStereoMode(int i) {
        this.f3925f.a(i);
    }

    public void setUseSensorRotation(boolean z) {
        this.i = z;
        a();
    }
}
