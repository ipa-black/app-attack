package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayDeque<a> f2756a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2757b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final MediaCodec f2758c;

    /* renamed from: d  reason: collision with root package name */
    private final HandlerThread f2759d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f2760e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference<RuntimeException> f2761f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.g f2762g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f2763h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f2765a;

        /* renamed from: b  reason: collision with root package name */
        public int f2766b;

        /* renamed from: c  reason: collision with root package name */
        public int f2767c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f2768d = new MediaCodec.CryptoInfo();

        /* renamed from: e  reason: collision with root package name */
        public long f2769e;

        /* renamed from: f  reason: collision with root package name */
        public int f2770f;

        a() {
        }

        public void a(int i, int i2, int i3, long j, int i4) {
            this.f2765a = i;
            this.f2766b = i2;
            this.f2767c = i3;
            this.f2769e = j;
            this.f2770f = i4;
        }
    }

    public b(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z) {
        this(mediaCodec, handlerThread, z, new com.applovin.exoplayer2.l.g());
    }

    b(MediaCodec mediaCodec, HandlerThread handlerThread, boolean z, com.applovin.exoplayer2.l.g gVar) {
        this.f2758c = mediaCodec;
        this.f2759d = handlerThread;
        this.f2762g = gVar;
        this.f2761f = new AtomicReference<>();
        this.f2763h = z || i();
    }

    private void a(int i, int i2, MediaCodec.CryptoInfo cryptoInfo, long j, int i3) {
        try {
            if (this.f2763h) {
                synchronized (f2757b) {
                    this.f2758c.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
                }
            } else {
                this.f2758c.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
            }
        } catch (RuntimeException e2) {
            a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Message message) {
        a aVar;
        int i = message.what;
        if (i == 0) {
            aVar = (a) message.obj;
            b(aVar.f2765a, aVar.f2766b, aVar.f2767c, aVar.f2769e, aVar.f2770f);
        } else if (i != 1) {
            if (i != 2) {
                a(new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.f2762g.a();
            }
            aVar = null;
        } else {
            aVar = (a) message.obj;
            a(aVar.f2765a, aVar.f2766b, aVar.f2768d, aVar.f2769e, aVar.f2770f);
        }
        if (aVar != null) {
            a(aVar);
        }
    }

    private static void a(com.applovin.exoplayer2.c.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f1661f;
        cryptoInfo.numBytesOfClearData = a(cVar.f1659d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = a(cVar.f1660e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.applovin.exoplayer2.l.a.b(a(cVar.f1657b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.applovin.exoplayer2.l.a.b(a(cVar.f1656a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f1658c;
        if (ai.f3781a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f1662g, cVar.f1663h));
        }
    }

    private static void a(a aVar) {
        ArrayDeque<a> arrayDeque = f2756a;
        synchronized (arrayDeque) {
            arrayDeque.add(aVar);
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static int[] a(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    private void b(int i, int i2, int i3, long j, int i4) {
        try {
            this.f2758c.queueInputBuffer(i, i2, i3, j, i4);
        } catch (RuntimeException e2) {
            a(e2);
        }
    }

    private void e() {
        RuntimeException andSet = this.f2761f.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    private void f() throws InterruptedException {
        ((Handler) ai.a(this.f2760e)).removeCallbacksAndMessages(null);
        g();
        e();
    }

    private void g() throws InterruptedException {
        this.f2762g.b();
        ((Handler) ai.a(this.f2760e)).obtainMessage(2).sendToTarget();
        this.f2762g.c();
    }

    private static a h() {
        ArrayDeque<a> arrayDeque = f2756a;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new a();
            }
            return arrayDeque.removeFirst();
        }
    }

    private static boolean i() {
        String lowerCase = Ascii.toLowerCase(ai.f3783c);
        return lowerCase.contains("samsung") || lowerCase.contains("motorola");
    }

    public void a() {
        if (this.i) {
            return;
        }
        this.f2759d.start();
        this.f2760e = new Handler(this.f2759d.getLooper()) { // from class: com.applovin.exoplayer2.f.b.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                b.this.a(message);
            }
        };
        this.i = true;
    }

    public void a(int i, int i2, int i3, long j, int i4) {
        e();
        a h2 = h();
        h2.a(i, i2, i3, j, i4);
        ((Handler) ai.a(this.f2760e)).obtainMessage(0, h2).sendToTarget();
    }

    public void a(int i, int i2, com.applovin.exoplayer2.c.c cVar, long j, int i3) {
        e();
        a h2 = h();
        h2.a(i, i2, 0, j, i3);
        a(cVar, h2.f2768d);
        ((Handler) ai.a(this.f2760e)).obtainMessage(1, h2).sendToTarget();
    }

    void a(RuntimeException runtimeException) {
        this.f2761f.set(runtimeException);
    }

    public void b() {
        if (this.i) {
            try {
                f();
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e2);
            }
        }
    }

    public void c() {
        if (this.i) {
            b();
            this.f2759d.quit();
        }
        this.i = false;
    }

    public void d() throws InterruptedException {
        g();
    }
}
