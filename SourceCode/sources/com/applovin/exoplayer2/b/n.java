package com.applovin.exoplayer2.b;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.b.f;
import com.applovin.exoplayer2.b.h;
import com.applovin.exoplayer2.b.j;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.audio.Ac4Util;
import com.google.android.exoplayer2.audio.DtsUtil;
import com.google.android.exoplayer2.audio.MpegAudioUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class n implements com.applovin.exoplayer2.b.h {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f1530a = false;
    private long A;
    private long B;
    private long C;
    private long D;
    private int E;
    private boolean F;
    private boolean G;
    private long H;
    private float I;
    private com.applovin.exoplayer2.b.f[] J;
    private ByteBuffer[] K;
    private ByteBuffer L;
    private int M;
    private ByteBuffer N;
    private byte[] O;
    private int P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private int V;
    private k W;
    private boolean X;
    private long Y;
    private boolean Z;
    private boolean aa;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.exoplayer2.b.e f1531b;

    /* renamed from: c  reason: collision with root package name */
    private final a f1532c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f1533d;

    /* renamed from: e  reason: collision with root package name */
    private final m f1534e;

    /* renamed from: f  reason: collision with root package name */
    private final x f1535f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.b.f[] f1536g;

    /* renamed from: h  reason: collision with root package name */
    private final com.applovin.exoplayer2.b.f[] f1537h;
    private final ConditionVariable i;
    private final j j;
    private final ArrayDeque<e> k;
    private final boolean l;
    private final int m;
    private h n;
    private final f<h.b> o;
    private final f<h.e> p;
    private h.c q;
    private b r;
    private b s;
    private AudioTrack t;
    private com.applovin.exoplayer2.b.d u;
    private e v;
    private e w;
    private am x;
    private ByteBuffer y;
    private int z;

    /* loaded from: classes.dex */
    public interface a {
        long a(long j);

        am a(am amVar);

        boolean a(boolean z);

        com.applovin.exoplayer2.b.f[] a();

        long b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.applovin.exoplayer2.v f1540a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1541b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1542c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1543d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1544e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1545f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1546g;

        /* renamed from: h  reason: collision with root package name */
        public final int f1547h;
        public final com.applovin.exoplayer2.b.f[] i;

        public b(com.applovin.exoplayer2.v vVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, com.applovin.exoplayer2.b.f[] fVarArr) {
            this.f1540a = vVar;
            this.f1541b = i;
            this.f1542c = i2;
            this.f1543d = i3;
            this.f1544e = i4;
            this.f1545f = i5;
            this.f1546g = i6;
            this.i = fVarArr;
            this.f1547h = a(i7, z);
        }

        private int a(float f2) {
            int minBufferSize = AudioTrack.getMinBufferSize(this.f1544e, this.f1545f, this.f1546g);
            com.applovin.exoplayer2.l.a.b(minBufferSize != -2);
            int a2 = ai.a(minBufferSize * 4, ((int) c(250000L)) * this.f1543d, Math.max(minBufferSize, ((int) c(750000L)) * this.f1543d));
            return f2 != 1.0f ? Math.round(a2 * f2) : a2;
        }

        private int a(int i, boolean z) {
            long j;
            if (i != 0) {
                return i;
            }
            int i2 = this.f1542c;
            if (i2 == 0) {
                return a(z ? 8.0f : 1.0f);
            }
            if (i2 == 1) {
                j = 50000000;
            } else if (i2 != 2) {
                throw new IllegalStateException();
            } else {
                j = 250000;
            }
            return d(j);
        }

        private static AudioAttributes a(com.applovin.exoplayer2.b.d dVar, boolean z) {
            return z ? b() : dVar.a();
        }

        private AudioTrack a(com.applovin.exoplayer2.b.d dVar, int i) {
            int g2 = ai.g(dVar.f1471d);
            int i2 = this.f1544e;
            int i3 = this.f1545f;
            int i4 = this.f1546g;
            int i5 = this.f1547h;
            return i == 0 ? new AudioTrack(g2, i2, i3, i4, i5, 1) : new AudioTrack(g2, i2, i3, i4, i5, 1, i);
        }

        private static AudioAttributes b() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        private AudioTrack b(boolean z, com.applovin.exoplayer2.b.d dVar, int i) {
            return ai.f3781a >= 29 ? c(z, dVar, i) : ai.f3781a >= 21 ? d(z, dVar, i) : a(dVar, i);
        }

        private AudioTrack c(boolean z, com.applovin.exoplayer2.b.d dVar, int i) {
            return new AudioTrack.Builder().setAudioAttributes(a(dVar, z)).setAudioFormat(n.b(this.f1544e, this.f1545f, this.f1546g)).setTransferMode(1).setBufferSizeInBytes(this.f1547h).setSessionId(i).setOffloadedPlayback(this.f1542c == 1).build();
        }

        private int d(long j) {
            int f2 = n.f(this.f1546g);
            if (this.f1546g == 5) {
                f2 *= 2;
            }
            return (int) ((j * f2) / 1000000);
        }

        private AudioTrack d(boolean z, com.applovin.exoplayer2.b.d dVar, int i) {
            return new AudioTrack(a(dVar, z), n.b(this.f1544e, this.f1545f, this.f1546g), this.f1547h, 1, i);
        }

        public long a(long j) {
            return (j * 1000000) / this.f1540a.z;
        }

        public AudioTrack a(boolean z, com.applovin.exoplayer2.b.d dVar, int i) throws h.b {
            try {
                AudioTrack b2 = b(z, dVar, i);
                int state = b2.getState();
                if (state == 1) {
                    return b2;
                }
                try {
                    b2.release();
                } catch (Exception unused) {
                }
                throw new h.b(state, this.f1544e, this.f1545f, this.f1547h, this.f1540a, a(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e2) {
                throw new h.b(0, this.f1544e, this.f1545f, this.f1547h, this.f1540a, a(), e2);
            }
        }

        public boolean a() {
            return this.f1542c == 1;
        }

        public boolean a(b bVar) {
            return bVar.f1542c == this.f1542c && bVar.f1546g == this.f1546g && bVar.f1544e == this.f1544e && bVar.f1545f == this.f1545f && bVar.f1543d == this.f1543d;
        }

        public long b(long j) {
            return (j * 1000000) / this.f1544e;
        }

        public long c(long j) {
            return (j * this.f1544e) / 1000000;
        }
    }

    /* loaded from: classes.dex */
    public static class c implements a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.exoplayer2.b.f[] f1548a;

        /* renamed from: b  reason: collision with root package name */
        private final u f1549b;

        /* renamed from: c  reason: collision with root package name */
        private final w f1550c;

        public c(com.applovin.exoplayer2.b.f... fVarArr) {
            this(fVarArr, new u(), new w());
        }

        public c(com.applovin.exoplayer2.b.f[] fVarArr, u uVar, w wVar) {
            com.applovin.exoplayer2.b.f[] fVarArr2 = new com.applovin.exoplayer2.b.f[fVarArr.length + 2];
            this.f1548a = fVarArr2;
            System.arraycopy(fVarArr, 0, fVarArr2, 0, fVarArr.length);
            this.f1549b = uVar;
            this.f1550c = wVar;
            fVarArr2[fVarArr.length] = uVar;
            fVarArr2[fVarArr.length + 1] = wVar;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public long a(long j) {
            return this.f1550c.a(j);
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public am a(am amVar) {
            this.f1550c.a(amVar.f1362b);
            this.f1550c.b(amVar.f1363c);
            return amVar;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public boolean a(boolean z) {
            this.f1549b.a(z);
            return z;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public com.applovin.exoplayer2.b.f[] a() {
            return this.f1548a;
        }

        @Override // com.applovin.exoplayer2.b.n.a
        public long b() {
            return this.f1549b.k();
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends RuntimeException {
        private d(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final am f1551a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1552b;

        /* renamed from: c  reason: collision with root package name */
        public final long f1553c;

        /* renamed from: d  reason: collision with root package name */
        public final long f1554d;

        private e(am amVar, boolean z, long j, long j2) {
            this.f1551a = amVar;
            this.f1552b = z;
            this.f1553c = j;
            this.f1554d = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f<T extends Exception> {

        /* renamed from: a  reason: collision with root package name */
        private final long f1555a;

        /* renamed from: b  reason: collision with root package name */
        private T f1556b;

        /* renamed from: c  reason: collision with root package name */
        private long f1557c;

        public f(long j) {
            this.f1555a = j;
        }

        public void a() {
            this.f1556b = null;
        }

        public void a(T t) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f1556b == null) {
                this.f1556b = t;
                this.f1557c = this.f1555a + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f1557c) {
                T t2 = this.f1556b;
                if (t2 != t) {
                    t2.addSuppressed(t);
                }
                T t3 = this.f1556b;
                a();
                throw t3;
            }
        }
    }

    /* loaded from: classes.dex */
    private final class g implements j.a {
        private g() {
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void a(int i, long j) {
            if (n.this.q != null) {
                n.this.q.a(i, j, SystemClock.elapsedRealtime() - n.this.Y);
            }
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void a(long j) {
            if (n.this.q != null) {
                n.this.q.a(j);
            }
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + n.this.z() + ", " + n.this.A();
            if (n.f1530a) {
                throw new d(str);
            }
            com.applovin.exoplayer2.l.q.c("DefaultAudioSink", str);
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void b(long j) {
            com.applovin.exoplayer2.l.q.c("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
        }

        @Override // com.applovin.exoplayer2.b.j.a
        public void b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + n.this.z() + ", " + n.this.A();
            if (n.f1530a) {
                throw new d(str);
            }
            com.applovin.exoplayer2.l.q.c("DefaultAudioSink", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class h {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f1560b = new Handler();

        /* renamed from: c  reason: collision with root package name */
        private final AudioTrack.StreamEventCallback f1561c;

        public h() {
            this.f1561c = new AudioTrack.StreamEventCallback() { // from class: com.applovin.exoplayer2.b.n.h.1
                @Override // android.media.AudioTrack.StreamEventCallback
                public void onDataRequest(AudioTrack audioTrack, int i) {
                    com.applovin.exoplayer2.l.a.b(audioTrack == n.this.t);
                    if (n.this.q == null || !n.this.T) {
                        return;
                    }
                    n.this.q.b();
                }

                @Override // android.media.AudioTrack.StreamEventCallback
                public void onTearDown(AudioTrack audioTrack) {
                    com.applovin.exoplayer2.l.a.b(audioTrack == n.this.t);
                    if (n.this.q == null || !n.this.T) {
                        return;
                    }
                    n.this.q.b();
                }
            };
        }

        public void a(AudioTrack audioTrack) {
            final Handler handler = this.f1560b;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new Executor() { // from class: com.applovin.exoplayer2.b.n$h$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.f1561c);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f1561c);
            this.f1560b.removeCallbacksAndMessages(null);
        }
    }

    public n(com.applovin.exoplayer2.b.e eVar, a aVar, boolean z, boolean z2, int i) {
        this.f1531b = eVar;
        this.f1532c = (a) com.applovin.exoplayer2.l.a.b(aVar);
        this.f1533d = ai.f3781a >= 21 && z;
        this.l = ai.f3781a >= 23 && z2;
        this.m = ai.f3781a >= 29 ? i : 0;
        this.i = new ConditionVariable(true);
        this.j = new j(new g());
        m mVar = new m();
        this.f1534e = mVar;
        x xVar = new x();
        this.f1535f = xVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new t(), mVar, xVar);
        Collections.addAll(arrayList, aVar.a());
        this.f1536g = (com.applovin.exoplayer2.b.f[]) arrayList.toArray(new com.applovin.exoplayer2.b.f[0]);
        this.f1537h = new com.applovin.exoplayer2.b.f[]{new p()};
        this.I = 1.0f;
        this.u = com.applovin.exoplayer2.b.d.f1467a;
        this.V = 0;
        this.W = new k(0, 0.0f);
        this.w = new e(am.f1360a, false, 0L, 0L);
        this.x = am.f1360a;
        this.Q = -1;
        this.J = new com.applovin.exoplayer2.b.f[0];
        this.K = new ByteBuffer[0];
        this.k = new ArrayDeque<>();
        this.o = new f<>(100L);
        this.p = new f<>(100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A() {
        return this.s.f1542c == 0 ? this.C / this.s.f1543d : this.D;
    }

    private void B() {
        if (this.S) {
            return;
        }
        this.S = true;
        this.j.e(A());
        this.t.stop();
        this.z = 0;
    }

    private static int a(int i, int i2) {
        AudioAttributes build = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();
        for (int i3 = 8; i3 > 0; i3--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(ai.f(i3)).build(), build)) {
                return i3;
            }
        }
        return 0;
    }

    private static int a(int i, ByteBuffer byteBuffer) {
        switch (i) {
            case 5:
            case 6:
            case 18:
                return com.applovin.exoplayer2.b.b.a(byteBuffer);
            case 7:
            case 8:
                return o.a(byteBuffer);
            case 9:
                int b2 = r.b(ai.a(byteBuffer, byteBuffer.position()));
                if (b2 != -1) {
                    return b2;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i);
            case 14:
                int b3 = com.applovin.exoplayer2.b.b.b(byteBuffer);
                if (b3 == -1) {
                    return 0;
                }
                return com.applovin.exoplayer2.b.b.a(byteBuffer, b3) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.applovin.exoplayer2.b.c.a(byteBuffer);
        }
    }

    private int a(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        if (ai.f3781a >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (ai.f3781a == 30 && ai.f3784d.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    private static int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (ai.f3781a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.y == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.y = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.y.putInt(1431633921);
        }
        if (this.z == 0) {
            this.y.putInt(4, i);
            this.y.putLong(8, j * 1000);
            this.y.position(0);
            this.z = i;
        }
        int remaining = this.y.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.y, remaining, 1);
            if (write < 0) {
                this.z = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int a2 = a(audioTrack, byteBuffer, i);
        if (a2 < 0) {
            this.z = 0;
            return a2;
        }
        this.z -= a2;
        return a2;
    }

    private void a(long j) throws h.e {
        ByteBuffer byteBuffer;
        int length = this.J.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.K[i - 1];
            } else {
                byteBuffer = this.L;
                if (byteBuffer == null) {
                    byteBuffer = com.applovin.exoplayer2.b.f.f1483a;
                }
            }
            if (i == length) {
                a(byteBuffer, j);
            } else {
                com.applovin.exoplayer2.b.f fVar = this.J[i];
                if (i > this.Q) {
                    fVar.a(byteBuffer);
                }
                ByteBuffer c2 = fVar.c();
                this.K[i] = c2;
                if (c2.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private void a(AudioTrack audioTrack) {
        if (this.n == null) {
            this.n = new h();
        }
        this.n.a(audioTrack);
    }

    private static void a(AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }

    private void a(am amVar, boolean z) {
        e w = w();
        if (amVar.equals(w.f1551a) && z == w.f1552b) {
            return;
        }
        e eVar = new e(amVar, z, C.TIME_UNSET, C.TIME_UNSET);
        if (y()) {
            this.v = eVar;
        } else {
            this.w = eVar;
        }
    }

    private void a(ByteBuffer byteBuffer, long j) throws h.e {
        int a2;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.N;
            if (byteBuffer2 != null) {
                com.applovin.exoplayer2.l.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.N = byteBuffer;
                if (ai.f3781a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.O;
                    if (bArr == null || bArr.length < remaining) {
                        this.O = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.O, 0, remaining);
                    byteBuffer.position(position);
                    this.P = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (ai.f3781a < 21) {
                int b2 = this.j.b(this.C);
                if (b2 > 0) {
                    a2 = this.t.write(this.O, this.P, Math.min(remaining2, b2));
                    if (a2 > 0) {
                        this.P += a2;
                        byteBuffer.position(byteBuffer.position() + a2);
                    }
                } else {
                    a2 = 0;
                }
            } else if (this.X) {
                com.applovin.exoplayer2.l.a.b(j != C.TIME_UNSET);
                a2 = a(this.t, byteBuffer, remaining2, j);
            } else {
                a2 = a(this.t, byteBuffer, remaining2);
            }
            this.Y = SystemClock.elapsedRealtime();
            if (a2 < 0) {
                boolean c2 = c(a2);
                if (c2) {
                    r();
                }
                h.e eVar = new h.e(a2, this.s.f1540a, c2);
                h.c cVar = this.q;
                if (cVar != null) {
                    cVar.a(eVar);
                }
                if (eVar.f1498b) {
                    throw eVar;
                }
                this.p.a(eVar);
                return;
            }
            this.p.a();
            if (b(this.t)) {
                long j2 = this.D;
                if (j2 > 0) {
                    this.aa = false;
                }
                if (this.T && this.q != null && a2 < remaining2 && !this.aa) {
                    this.q.b(this.j.c(j2));
                }
            }
            if (this.s.f1542c == 0) {
                this.C += a2;
            }
            if (a2 == remaining2) {
                if (this.s.f1542c != 0) {
                    com.applovin.exoplayer2.l.a.b(byteBuffer == this.L);
                    this.D += this.E * this.M;
                }
                this.N = null;
            }
        }
    }

    private boolean a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.b.d dVar) {
        int b2;
        int f2;
        int a2;
        if (ai.f3781a < 29 || this.m == 0 || (b2 = com.applovin.exoplayer2.l.u.b((String) com.applovin.exoplayer2.l.a.b(vVar.l), vVar.i)) == 0 || (f2 = ai.f(vVar.y)) == 0 || (a2 = a(b(vVar.z, f2, b2), dVar.a())) == 0) {
            return false;
        }
        if (a2 == 1) {
            return ((vVar.B != 0 || vVar.C != 0) && (this.m == 1)) ? false : true;
        } else if (a2 == 2) {
            return true;
        } else {
            throw new IllegalStateException();
        }
    }

    private static boolean a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.b.e eVar) {
        return b(vVar, eVar) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AudioFormat b(int i, int i2, int i3) {
        return new AudioFormat.Builder().setSampleRate(i).setChannelMask(i2).setEncoding(i3).build();
    }

    private static Pair<Integer, Integer> b(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.b.e eVar) {
        if (eVar == null) {
            return null;
        }
        int b2 = com.applovin.exoplayer2.l.u.b((String) com.applovin.exoplayer2.l.a.b(vVar.l), vVar.i);
        int i = 6;
        if (b2 == 5 || b2 == 6 || b2 == 18 || b2 == 17 || b2 == 7 || b2 == 8 || b2 == 14) {
            if (b2 == 18 && !eVar.a(18)) {
                b2 = 6;
            } else if (b2 == 8 && !eVar.a(8)) {
                b2 = 7;
            }
            if (eVar.a(b2)) {
                if (b2 != 18) {
                    i = vVar.y;
                    if (i > eVar.a()) {
                        return null;
                    }
                } else if (ai.f3781a >= 29 && (i = a(18, vVar.z)) == 0) {
                    com.applovin.exoplayer2.l.q.c("DefaultAudioSink", "E-AC3 JOC encoding supported but no channel count supported");
                    return null;
                }
                int e2 = e(i);
                if (e2 == 0) {
                    return null;
                }
                return Pair.create(Integer.valueOf(b2), Integer.valueOf(e2));
            }
            return null;
        }
        return null;
    }

    private void b(long j) {
        am a2 = x() ? this.f1532c.a(v()) : am.f1360a;
        boolean a3 = x() ? this.f1532c.a(m()) : false;
        this.k.add(new e(a2, a3, Math.max(0L, j), this.s.b(A())));
        n();
        h.c cVar = this.q;
        if (cVar != null) {
            cVar.a(a3);
        }
    }

    private static void b(AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    private void b(am amVar) {
        if (y()) {
            try {
                this.t.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(amVar.f1362b).setPitch(amVar.f1363c).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                com.applovin.exoplayer2.l.q.b("DefaultAudioSink", "Failed to set playback params", e2);
            }
            amVar = new am(this.t.getPlaybackParams().getSpeed(), this.t.getPlaybackParams().getPitch());
            this.j.a(amVar.f1362b);
        }
        this.x = amVar;
    }

    private static boolean b(AudioTrack audioTrack) {
        return ai.f3781a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private long c(long j) {
        while (!this.k.isEmpty() && j >= this.k.getFirst().f1554d) {
            this.w = this.k.remove();
        }
        long j2 = j - this.w.f1554d;
        if (this.w.f1551a.equals(am.f1360a)) {
            return this.w.f1553c + j2;
        }
        if (this.k.isEmpty()) {
            return this.w.f1553c + this.f1532c.a(j2);
        }
        e first = this.k.getFirst();
        return first.f1553c - ai.a(first.f1554d - j, this.w.f1551a.f1362b);
    }

    private static boolean c(int i) {
        return (ai.f3781a >= 24 && i == -6) || i == -32;
    }

    private long d(long j) {
        return j + this.s.b(this.f1532c.b());
    }

    private boolean d(int i) {
        return this.f1533d && ai.e(i);
    }

    private static int e(int i) {
        if (ai.f3781a <= 28) {
            if (i == 7) {
                i = 8;
            } else if (i == 3 || i == 4 || i == 5) {
                i = 6;
            }
        }
        if (ai.f3781a <= 26 && "fugu".equals(ai.f3782b) && i == 1) {
            i = 2;
        }
        return ai.f(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i) {
        switch (i) {
            case 5:
                return Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
            case 6:
            case 18:
                return Ac3Util.E_AC3_MAX_RATE_BYTES_PER_SECOND;
            case 7:
                return DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
            case 8:
                return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
            case 9:
                return MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            case 10:
                return 100000;
            case 11:
                return AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
            case 12:
                return AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND;
            case 13:
            default:
                throw new IllegalArgumentException();
            case 14:
                return Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
            case 15:
                return 8000;
            case 16:
                return AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
            case 17:
                return Ac4Util.MAX_RATE_BYTES_PER_SECOND;
        }
    }

    private void n() {
        com.applovin.exoplayer2.b.f[] fVarArr = this.s.i;
        ArrayList arrayList = new ArrayList();
        for (com.applovin.exoplayer2.b.f fVar : fVarArr) {
            if (fVar.a()) {
                arrayList.add(fVar);
            } else {
                fVar.e();
            }
        }
        int size = arrayList.size();
        this.J = (com.applovin.exoplayer2.b.f[]) arrayList.toArray(new com.applovin.exoplayer2.b.f[size]);
        this.K = new ByteBuffer[size];
        o();
    }

    private void o() {
        int i = 0;
        while (true) {
            com.applovin.exoplayer2.b.f[] fVarArr = this.J;
            if (i >= fVarArr.length) {
                return;
            }
            com.applovin.exoplayer2.b.f fVar = fVarArr[i];
            fVar.e();
            this.K[i] = fVar.c();
            i++;
        }
    }

    private void p() throws h.b {
        this.i.block();
        AudioTrack q = q();
        this.t = q;
        if (b(q)) {
            a(this.t);
            if (this.m != 3) {
                this.t.setOffloadDelayPadding(this.s.f1540a.B, this.s.f1540a.C);
            }
        }
        this.V = this.t.getAudioSessionId();
        this.j.a(this.t, this.s.f1542c == 2, this.s.f1546g, this.s.f1543d, this.s.f1547h);
        t();
        if (this.W.f1519a != 0) {
            this.t.attachAuxEffect(this.W.f1519a);
            this.t.setAuxEffectSendLevel(this.W.f1520b);
        }
        this.G = true;
    }

    private AudioTrack q() throws h.b {
        try {
            return ((b) com.applovin.exoplayer2.l.a.b(this.s)).a(this.X, this.u, this.V);
        } catch (h.b e2) {
            r();
            h.c cVar = this.q;
            if (cVar != null) {
                cVar.a(e2);
            }
            throw e2;
        }
    }

    private void r() {
        if (this.s.a()) {
            this.Z = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean s() throws com.applovin.exoplayer2.b.h.e {
        /*
            r9 = this;
            int r0 = r9.Q
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.Q = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.Q
            com.applovin.exoplayer2.b.f[] r5 = r9.J
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.b()
        L1f:
            r9.a(r7)
            boolean r0 = r4.d()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.Q
            int r0 = r0 + r1
            r9.Q = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.N
            if (r0 == 0) goto L3b
            r9.a(r0, r7)
            java.nio.ByteBuffer r0 = r9.N
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.Q = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.b.n.s():boolean");
    }

    private void t() {
        if (y()) {
            if (ai.f3781a >= 21) {
                a(this.t, this.I);
            } else {
                b(this.t, this.I);
            }
        }
    }

    private void u() {
        this.A = 0L;
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.aa = false;
        this.E = 0;
        this.w = new e(v(), m(), 0L, 0L);
        this.H = 0L;
        this.v = null;
        this.k.clear();
        this.L = null;
        this.M = 0;
        this.N = null;
        this.S = false;
        this.R = false;
        this.Q = -1;
        this.y = null;
        this.z = 0;
        this.f1535f.k();
        o();
    }

    private am v() {
        return w().f1551a;
    }

    private e w() {
        e eVar = this.v;
        return eVar != null ? eVar : !this.k.isEmpty() ? this.k.getLast() : this.w;
    }

    private boolean x() {
        return (this.X || !MimeTypes.AUDIO_RAW.equals(this.s.f1540a.l) || d(this.s.f1540a.A)) ? false : true;
    }

    private boolean y() {
        return this.t != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long z() {
        return this.s.f1542c == 0 ? this.A / this.s.f1541b : this.B;
    }

    @Override // com.applovin.exoplayer2.b.h
    public long a(boolean z) {
        if (!y() || this.G) {
            return Long.MIN_VALUE;
        }
        return d(c(Math.min(this.j.a(z), this.s.b(A()))));
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a() {
        this.T = true;
        if (y()) {
            this.j.a();
            this.t.play();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(float f2) {
        if (this.I != f2) {
            this.I = f2;
            t();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(int i) {
        if (this.V != i) {
            this.V = i;
            this.U = i != 0;
            j();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(am amVar) {
        am amVar2 = new am(ai.a(amVar.f1362b, 0.1f, 8.0f), ai.a(amVar.f1363c, 0.1f, 8.0f));
        if (!this.l || ai.f3781a < 23) {
            a(amVar2, m());
        } else {
            b(amVar2);
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(com.applovin.exoplayer2.b.d dVar) {
        if (this.u.equals(dVar)) {
            return;
        }
        this.u = dVar;
        if (this.X) {
            return;
        }
        j();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(h.c cVar) {
        this.q = cVar;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(k kVar) {
        if (this.W.equals(kVar)) {
            return;
        }
        int i = kVar.f1519a;
        float f2 = kVar.f1520b;
        if (this.t != null) {
            if (this.W.f1519a != i) {
                this.t.attachAuxEffect(i);
            }
            if (i != 0) {
                this.t.setAuxEffectSendLevel(f2);
            }
        }
        this.W = kVar;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void a(com.applovin.exoplayer2.v vVar, int i, int[] iArr) throws h.a {
        int i2;
        com.applovin.exoplayer2.b.f[] fVarArr;
        int intValue;
        int i3;
        int i4;
        int intValue2;
        int i5;
        int[] iArr2;
        if (MimeTypes.AUDIO_RAW.equals(vVar.l)) {
            com.applovin.exoplayer2.l.a.a(ai.d(vVar.A));
            int c2 = ai.c(vVar.A, vVar.y);
            com.applovin.exoplayer2.b.f[] fVarArr2 = d(vVar.A) ? this.f1537h : this.f1536g;
            this.f1535f.a(vVar.B, vVar.C);
            if (ai.f3781a < 21 && vVar.y == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i6 = 0; i6 < 6; i6++) {
                    iArr2[i6] = i6;
                }
            } else {
                iArr2 = iArr;
            }
            this.f1534e.a(iArr2);
            f.a aVar = new f.a(vVar.z, vVar.y, vVar.A);
            for (com.applovin.exoplayer2.b.f fVar : fVarArr2) {
                try {
                    f.a a2 = fVar.a(aVar);
                    if (fVar.a()) {
                        aVar = a2;
                    }
                } catch (f.b e2) {
                    throw new h.a(e2, vVar);
                }
            }
            int i7 = aVar.f1487d;
            i3 = aVar.f1485b;
            intValue2 = ai.f(aVar.f1486c);
            fVarArr = fVarArr2;
            intValue = i7;
            i4 = c2;
            i2 = ai.c(i7, aVar.f1486c);
            i5 = 0;
        } else {
            com.applovin.exoplayer2.b.f[] fVarArr3 = new com.applovin.exoplayer2.b.f[0];
            int i8 = vVar.z;
            i2 = -1;
            if (a(vVar, this.u)) {
                fVarArr = fVarArr3;
                intValue = com.applovin.exoplayer2.l.u.b((String) com.applovin.exoplayer2.l.a.b(vVar.l), vVar.i);
                i5 = 1;
                intValue2 = ai.f(vVar.y);
                i3 = i8;
                i4 = -1;
            } else {
                Pair<Integer, Integer> b2 = b(vVar, this.f1531b);
                if (b2 == null) {
                    throw new h.a("Unable to configure passthrough for: " + vVar, vVar);
                }
                fVarArr = fVarArr3;
                intValue = ((Integer) b2.first).intValue();
                i3 = i8;
                i4 = -1;
                intValue2 = ((Integer) b2.second).intValue();
                i5 = 2;
            }
        }
        if (intValue == 0) {
            throw new h.a("Invalid output encoding (mode=" + i5 + ") for: " + vVar, vVar);
        }
        if (intValue2 == 0) {
            throw new h.a("Invalid output channel config (mode=" + i5 + ") for: " + vVar, vVar);
        }
        this.Z = false;
        b bVar = new b(vVar, i4, i5, i2, i3, intValue2, intValue, i, this.l, fVarArr);
        if (y()) {
            this.r = bVar;
        } else {
            this.s = bVar;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean a(com.applovin.exoplayer2.v vVar) {
        return b(vVar) != 0;
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean a(ByteBuffer byteBuffer, long j, int i) throws h.b, h.e {
        ByteBuffer byteBuffer2 = this.L;
        com.applovin.exoplayer2.l.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.r != null) {
            if (!s()) {
                return false;
            }
            if (this.r.a(this.s)) {
                this.s = this.r;
                this.r = null;
                if (b(this.t) && this.m != 3) {
                    this.t.setOffloadEndOfStream();
                    this.t.setOffloadDelayPadding(this.s.f1540a.B, this.s.f1540a.C);
                    this.aa = true;
                }
            } else {
                B();
                if (e()) {
                    return false;
                }
                j();
            }
            b(j);
        }
        if (!y()) {
            try {
                p();
            } catch (h.b e2) {
                if (e2.f1493b) {
                    throw e2;
                }
                this.o.a(e2);
                return false;
            }
        }
        this.o.a();
        if (this.G) {
            this.H = Math.max(0L, j);
            this.F = false;
            this.G = false;
            if (this.l && ai.f3781a >= 23) {
                b(this.x);
            }
            b(j);
            if (this.T) {
                a();
            }
        }
        if (this.j.a(A())) {
            if (this.L == null) {
                com.applovin.exoplayer2.l.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
                if (!byteBuffer.hasRemaining()) {
                    return true;
                }
                if (this.s.f1542c != 0 && this.E == 0) {
                    int a2 = a(this.s.f1546g, byteBuffer);
                    this.E = a2;
                    if (a2 == 0) {
                        return true;
                    }
                }
                if (this.v != null) {
                    if (!s()) {
                        return false;
                    }
                    b(j);
                    this.v = null;
                }
                long a3 = this.H + this.s.a(z() - this.f1535f.l());
                if (!this.F && Math.abs(a3 - j) > 200000) {
                    this.q.a(new h.d(j, a3));
                    this.F = true;
                }
                if (this.F) {
                    if (!s()) {
                        return false;
                    }
                    long j2 = j - a3;
                    this.H += j2;
                    this.F = false;
                    b(j);
                    h.c cVar = this.q;
                    if (cVar != null && j2 != 0) {
                        cVar.a();
                    }
                }
                if (this.s.f1542c == 0) {
                    this.A += byteBuffer.remaining();
                } else {
                    this.B += this.E * i;
                }
                this.L = byteBuffer;
                this.M = i;
            }
            a(j);
            if (!this.L.hasRemaining()) {
                this.L = null;
                this.M = 0;
                return true;
            } else if (this.j.d(A())) {
                com.applovin.exoplayer2.l.q.c("DefaultAudioSink", "Resetting stalled audio track");
                j();
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    @Override // com.applovin.exoplayer2.b.h
    public int b(com.applovin.exoplayer2.v vVar) {
        if (!MimeTypes.AUDIO_RAW.equals(vVar.l)) {
            return ((this.Z || !a(vVar, this.u)) && !a(vVar, this.f1531b)) ? 0 : 2;
        } else if (ai.d(vVar.A)) {
            return (vVar.A == 2 || (this.f1533d && vVar.A == 4)) ? 2 : 1;
        } else {
            com.applovin.exoplayer2.l.q.c("DefaultAudioSink", "Invalid PCM encoding: " + vVar.A);
            return 0;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void b() {
        this.F = true;
    }

    @Override // com.applovin.exoplayer2.b.h
    public void b(boolean z) {
        a(v(), z);
    }

    @Override // com.applovin.exoplayer2.b.h
    public void c() throws h.e {
        if (!this.R && y() && s()) {
            B();
            this.R = true;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean d() {
        return !y() || (this.R && !e());
    }

    @Override // com.applovin.exoplayer2.b.h
    public boolean e() {
        return y() && this.j.f(A());
    }

    @Override // com.applovin.exoplayer2.b.h
    public am f() {
        return this.l ? this.x : v();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void g() {
        com.applovin.exoplayer2.l.a.b(ai.f3781a >= 21);
        com.applovin.exoplayer2.l.a.b(this.U);
        if (this.X) {
            return;
        }
        this.X = true;
        j();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void h() {
        if (this.X) {
            this.X = false;
            j();
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void i() {
        this.T = false;
        if (y() && this.j.c()) {
            this.t.pause();
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.applovin.exoplayer2.b.n$1] */
    @Override // com.applovin.exoplayer2.b.h
    public void j() {
        if (y()) {
            u();
            if (this.j.b()) {
                this.t.pause();
            }
            if (b(this.t)) {
                ((h) com.applovin.exoplayer2.l.a.b(this.n)).b(this.t);
            }
            final AudioTrack audioTrack = this.t;
            this.t = null;
            if (ai.f3781a < 21 && !this.U) {
                this.V = 0;
            }
            b bVar = this.r;
            if (bVar != null) {
                this.s = bVar;
                this.r = null;
            }
            this.j.d();
            this.i.close();
            new Thread("ExoPlayer:AudioTrackReleaseThread") { // from class: com.applovin.exoplayer2.b.n.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        n.this.i.open();
                    }
                }
            }.start();
        }
        this.p.a();
        this.o.a();
    }

    @Override // com.applovin.exoplayer2.b.h
    public void k() {
        if (ai.f3781a < 25) {
            j();
            return;
        }
        this.p.a();
        this.o.a();
        if (y()) {
            u();
            if (this.j.b()) {
                this.t.pause();
            }
            this.t.flush();
            this.j.d();
            this.j.a(this.t, this.s.f1542c == 2, this.s.f1546g, this.s.f1543d, this.s.f1547h);
            this.G = true;
        }
    }

    @Override // com.applovin.exoplayer2.b.h
    public void l() {
        j();
        for (com.applovin.exoplayer2.b.f fVar : this.f1536g) {
            fVar.f();
        }
        for (com.applovin.exoplayer2.b.f fVar2 : this.f1537h) {
            fVar2.f();
        }
        this.T = false;
        this.Z = false;
    }

    public boolean m() {
        return w().f1552b;
    }
}
