package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.applovin.exoplayer2.common.base.Supplier;
import com.applovin.exoplayer2.f.a;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.l.ah;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f2745a;

    /* renamed from: b  reason: collision with root package name */
    private final c f2746b;

    /* renamed from: c  reason: collision with root package name */
    private final b f2747c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f2748d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2749e;

    /* renamed from: f  reason: collision with root package name */
    private int f2750f;

    /* renamed from: g  reason: collision with root package name */
    private Surface f2751g;

    /* renamed from: com.applovin.exoplayer2.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0041a implements g.b {

        /* renamed from: b  reason: collision with root package name */
        private final Supplier<HandlerThread> f2752b;

        /* renamed from: c  reason: collision with root package name */
        private final Supplier<HandlerThread> f2753c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f2754d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f2755e;

        public C0041a(final int i, boolean z, boolean z2) {
            this(new Supplier() { // from class: com.applovin.exoplayer2.f.a$a$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    HandlerThread b2;
                    b2 = a.C0041a.b(i);
                    return b2;
                }
            }, new Supplier() { // from class: com.applovin.exoplayer2.f.a$a$$ExternalSyntheticLambda1
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    HandlerThread a2;
                    a2 = a.C0041a.a(i);
                    return a2;
                }
            }, z, z2);
        }

        C0041a(Supplier<HandlerThread> supplier, Supplier<HandlerThread> supplier2, boolean z, boolean z2) {
            this.f2752b = supplier;
            this.f2753c = supplier2;
            this.f2754d = z;
            this.f2755e = z2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread a(int i) {
            return new HandlerThread(a.g(i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread b(int i) {
            return new HandlerThread(a.f(i));
        }

        @Override // com.applovin.exoplayer2.f.g.b
        /* renamed from: a */
        public a b(g.a aVar) throws IOException {
            MediaCodec mediaCodec;
            a aVar2;
            String str = aVar.f2790a.f2800a;
            a aVar3 = null;
            try {
                ah.a("createCodec:" + str);
                mediaCodec = MediaCodec.createByCodecName(str);
                try {
                    aVar2 = new a(mediaCodec, this.f2752b.get(), this.f2753c.get(), this.f2754d, this.f2755e);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                mediaCodec = null;
            }
            try {
                ah.a();
                aVar2.a(aVar.f2791b, aVar.f2793d, aVar.f2794e, aVar.f2795f, aVar.f2796g);
                return aVar2;
            } catch (Exception e4) {
                e = e4;
                aVar3 = aVar2;
                if (aVar3 != null) {
                    aVar3.e();
                } else if (mediaCodec != null) {
                    mediaCodec.release();
                }
                throw e;
            }
        }
    }

    private a(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z, boolean z2) {
        this.f2745a = mediaCodec;
        this.f2746b = new c(handlerThread);
        this.f2747c = new b(mediaCodec, handlerThread2, z);
        this.f2748d = z2;
        this.f2750f = 0;
    }

    private static String a(int i, String str) {
        String str2;
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            str2 = "Audio";
        } else if (i != 2) {
            sb.append("Unknown(").append(i).append(")");
            return sb.toString();
        } else {
            str2 = "Video";
        }
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
        this.f2746b.a(this.f2745a);
        ah.a("configureCodec");
        this.f2745a.configure(mediaFormat, surface, mediaCrypto, i);
        ah.a();
        if (z) {
            this.f2751g = this.f2745a.createInputSurface();
        }
        this.f2747c.a();
        ah.a("startCodec");
        this.f2745a.start();
        ah.a();
        this.f2750f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g.c cVar, MediaCodec mediaCodec, long j, long j2) {
        cVar.a(this, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(int i) {
        return a(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    private void f() {
        if (this.f2748d) {
            try {
                this.f2747c.d();
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(int i) {
        return a(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    @Override // com.applovin.exoplayer2.f.g
    public int a(MediaCodec.BufferInfo bufferInfo) {
        return this.f2746b.a(bufferInfo);
    }

    @Override // com.applovin.exoplayer2.f.g
    public ByteBuffer a(int i) {
        return this.f2745a.getInputBuffer(i);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, int i2, int i3, long j, int i4) {
        this.f2747c.a(i, i2, i3, j, i4);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, int i2, com.applovin.exoplayer2.c.c cVar, long j, int i3) {
        this.f2747c.a(i, i2, cVar, j, i3);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, long j) {
        this.f2745a.releaseOutputBuffer(i, j);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(int i, boolean z) {
        this.f2745a.releaseOutputBuffer(i, z);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(Bundle bundle) {
        f();
        this.f2745a.setParameters(bundle);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(Surface surface) {
        f();
        this.f2745a.setOutputSurface(surface);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void a(final g.c cVar, Handler handler) {
        f();
        this.f2745a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.applovin.exoplayer2.f.a$$ExternalSyntheticLambda1
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
                a.this.a(cVar, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.applovin.exoplayer2.f.g
    public boolean a() {
        return false;
    }

    @Override // com.applovin.exoplayer2.f.g
    public int b() {
        return this.f2746b.b();
    }

    @Override // com.applovin.exoplayer2.f.g
    public ByteBuffer b(int i) {
        return this.f2745a.getOutputBuffer(i);
    }

    @Override // com.applovin.exoplayer2.f.g
    public MediaFormat c() {
        return this.f2746b.c();
    }

    @Override // com.applovin.exoplayer2.f.g
    public void c(int i) {
        f();
        this.f2745a.setVideoScalingMode(i);
    }

    @Override // com.applovin.exoplayer2.f.g
    public void d() {
        this.f2747c.b();
        this.f2745a.flush();
        c cVar = this.f2746b;
        final MediaCodec mediaCodec = this.f2745a;
        Objects.requireNonNull(mediaCodec);
        cVar.a(new Runnable() { // from class: com.applovin.exoplayer2.f.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodec.start();
            }
        });
    }

    @Override // com.applovin.exoplayer2.f.g
    public void e() {
        try {
            if (this.f2750f == 1) {
                this.f2747c.c();
                this.f2746b.a();
            }
            this.f2750f = 2;
        } finally {
            Surface surface = this.f2751g;
            if (surface != null) {
                surface.release();
            }
            if (!this.f2749e) {
                this.f2745a.release();
                this.f2749e = true;
            }
        }
    }
}
