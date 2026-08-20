package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends MediaCodec.Callback {

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f2772b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f2773c;

    /* renamed from: h  reason: collision with root package name */
    private MediaFormat f2778h;
    private MediaFormat i;
    private MediaCodec.CodecException j;
    private long k;
    private boolean l;
    private IllegalStateException m;

    /* renamed from: a  reason: collision with root package name */
    private final Object f2771a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final f f2774d = new f();

    /* renamed from: e  reason: collision with root package name */
    private final f f2775e = new f();

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<MediaCodec.BufferInfo> f2776f = new ArrayDeque<>();

    /* renamed from: g  reason: collision with root package name */
    private final ArrayDeque<MediaFormat> f2777g = new ArrayDeque<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(HandlerThread handlerThread) {
        this.f2772b = handlerThread;
    }

    private void a(MediaFormat mediaFormat) {
        this.f2775e.a(-2);
        this.f2777g.add(mediaFormat);
    }

    private void a(IllegalStateException illegalStateException) {
        synchronized (this.f2771a) {
            this.m = illegalStateException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void d(Runnable runnable) {
        synchronized (this.f2771a) {
            c(runnable);
        }
    }

    private void c(Runnable runnable) {
        if (this.l) {
            return;
        }
        long j = this.k - 1;
        this.k = j;
        if (j > 0) {
            return;
        }
        if (j < 0) {
            a(new IllegalStateException());
            return;
        }
        d();
        try {
            runnable.run();
        } catch (IllegalStateException e2) {
            a(e2);
        } catch (Exception e3) {
            a(new IllegalStateException(e3));
        }
    }

    private void d() {
        if (!this.f2777g.isEmpty()) {
            this.i = this.f2777g.getLast();
        }
        this.f2774d.c();
        this.f2775e.c();
        this.f2776f.clear();
        this.f2777g.clear();
        this.j = null;
    }

    private boolean e() {
        return this.k > 0 || this.l;
    }

    private void f() {
        g();
        h();
    }

    private void g() {
        IllegalStateException illegalStateException = this.m;
        if (illegalStateException == null) {
            return;
        }
        this.m = null;
        throw illegalStateException;
    }

    private void h() {
        MediaCodec.CodecException codecException = this.j;
        if (codecException == null) {
            return;
        }
        this.j = null;
        throw codecException;
    }

    public int a(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f2771a) {
            if (e()) {
                return -1;
            }
            f();
            if (this.f2775e.b()) {
                return -1;
            }
            int a2 = this.f2775e.a();
            if (a2 >= 0) {
                com.applovin.exoplayer2.l.a.a(this.f2778h);
                MediaCodec.BufferInfo remove = this.f2776f.remove();
                bufferInfo.set(remove.offset, remove.size, remove.presentationTimeUs, remove.flags);
            } else if (a2 == -2) {
                this.f2778h = this.f2777g.remove();
            }
            return a2;
        }
    }

    public void a() {
        synchronized (this.f2771a) {
            this.l = true;
            this.f2772b.quit();
            d();
        }
    }

    public void a(MediaCodec mediaCodec) {
        com.applovin.exoplayer2.l.a.b(this.f2773c == null);
        this.f2772b.start();
        Handler handler = new Handler(this.f2772b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f2773c = handler;
    }

    public void a(final Runnable runnable) {
        synchronized (this.f2771a) {
            this.k++;
            ((Handler) ai.a(this.f2773c)).post(new Runnable() { // from class: com.applovin.exoplayer2.f.c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.d(runnable);
                }
            });
        }
    }

    public int b() {
        synchronized (this.f2771a) {
            int i = -1;
            if (e()) {
                return -1;
            }
            f();
            if (!this.f2774d.b()) {
                i = this.f2774d.a();
            }
            return i;
        }
    }

    public MediaFormat c() {
        MediaFormat mediaFormat;
        synchronized (this.f2771a) {
            mediaFormat = this.f2778h;
            if (mediaFormat == null) {
                throw new IllegalStateException();
            }
        }
        return mediaFormat;
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f2771a) {
            this.j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.f2771a) {
            this.f2774d.a(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f2771a) {
            MediaFormat mediaFormat = this.i;
            if (mediaFormat != null) {
                a(mediaFormat);
                this.i = null;
            }
            this.f2775e.a(i);
            this.f2776f.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f2771a) {
            a(mediaFormat);
            this.i = null;
        }
    }
}
