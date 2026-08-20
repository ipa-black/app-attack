package com.applovin.exoplayer2.b;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.lang.reflect.Method;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* loaded from: classes.dex */
final class j {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    private final a f1511a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f1512b;

    /* renamed from: c  reason: collision with root package name */
    private AudioTrack f1513c;

    /* renamed from: d  reason: collision with root package name */
    private int f1514d;

    /* renamed from: e  reason: collision with root package name */
    private int f1515e;

    /* renamed from: f  reason: collision with root package name */
    private i f1516f;

    /* renamed from: g  reason: collision with root package name */
    private int f1517g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1518h;
    private long i;
    private float j;
    private boolean k;
    private long l;
    private long m;
    private Method n;
    private long o;
    private boolean p;
    private boolean q;
    private long r;
    private long s;
    private long t;
    private long u;
    private int v;
    private int w;
    private long x;
    private long y;
    private long z;

    /* loaded from: classes.dex */
    public interface a {
        void a(int i, long j);

        void a(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j);

        void b(long j, long j2, long j3, long j4);
    }

    public j(a aVar) {
        this.f1511a = (a) com.applovin.exoplayer2.l.a.b(aVar);
        if (ai.f3781a >= 18) {
            try {
                Class[] clsArr = null;
                this.n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f1512b = new long[10];
    }

    private void a(long j, long j2) {
        i iVar = (i) com.applovin.exoplayer2.l.a.b(this.f1516f);
        if (iVar.a(j)) {
            long e2 = iVar.e();
            long f2 = iVar.f();
            if (Math.abs(e2 - j) > 5000000) {
                this.f1511a.b(f2, e2, j, j2);
            } else if (Math.abs(h(f2) - j2) <= 5000000) {
                iVar.b();
                return;
            } else {
                this.f1511a.a(f2, e2, j, j2);
            }
            iVar.a();
        }
    }

    private static boolean a(int i) {
        return ai.f3781a < 23 && (i == 5 || i == 6);
    }

    private void e() {
        long h2 = h();
        if (h2 == 0) {
            return;
        }
        long nanoTime = System.nanoTime() / 1000;
        if (nanoTime - this.m >= 30000) {
            long[] jArr = this.f1512b;
            int i = this.v;
            jArr[i] = h2 - nanoTime;
            this.v = (i + 1) % 10;
            int i2 = this.w;
            if (i2 < 10) {
                this.w = i2 + 1;
            }
            this.m = nanoTime;
            this.l = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.w;
                if (i3 >= i4) {
                    break;
                }
                this.l += this.f1512b[i3] / i4;
                i3++;
            }
        }
        if (this.f1518h) {
            return;
        }
        a(nanoTime, h2);
        g(nanoTime);
    }

    private void f() {
        this.l = 0L;
        this.w = 0;
        this.v = 0;
        this.m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.k = false;
    }

    private void g(long j) {
        Method method;
        if (!this.q || (method = this.n) == null || j - this.r < 500000) {
            return;
        }
        try {
            long intValue = (((Integer) ai.a((Integer) method.invoke(com.applovin.exoplayer2.l.a.b(this.f1513c), new Object[0]))).intValue() * 1000) - this.i;
            this.o = intValue;
            long max = Math.max(intValue, 0L);
            this.o = max;
            if (max > 5000000) {
                this.f1511a.b(max);
                this.o = 0L;
            }
        } catch (Exception unused) {
            this.n = null;
        }
        this.r = j;
    }

    private boolean g() {
        return this.f1518h && ((AudioTrack) com.applovin.exoplayer2.l.a.b(this.f1513c)).getPlayState() == 2 && i() == 0;
    }

    private long h() {
        return h(i());
    }

    private long h(long j) {
        return (j * 1000000) / this.f1517g;
    }

    private long i() {
        AudioTrack audioTrack = (AudioTrack) com.applovin.exoplayer2.l.a.b(this.f1513c);
        if (this.x != C.TIME_UNSET) {
            return Math.min(this.A, this.z + ((((SystemClock.elapsedRealtime() * 1000) - this.x) * this.f1517g) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & ArrayUnsignedIntList.MAX_VALUE;
        if (this.f1518h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.u = this.s;
            }
            playbackHeadPosition += this.u;
        }
        if (ai.f3781a <= 29) {
            if (playbackHeadPosition == 0 && this.s > 0 && playState == 3) {
                if (this.y == C.TIME_UNSET) {
                    this.y = SystemClock.elapsedRealtime();
                }
                return this.s;
            }
            this.y = C.TIME_UNSET;
        }
        if (this.s > playbackHeadPosition) {
            this.t++;
        }
        this.s = playbackHeadPosition;
        return playbackHeadPosition + (this.t << 32);
    }

    public long a(boolean z) {
        long h2;
        if (((AudioTrack) com.applovin.exoplayer2.l.a.b(this.f1513c)).getPlayState() == 3) {
            e();
        }
        long nanoTime = System.nanoTime() / 1000;
        i iVar = (i) com.applovin.exoplayer2.l.a.b(this.f1516f);
        boolean c2 = iVar.c();
        if (c2) {
            h2 = h(iVar.f()) + ai.a(nanoTime - iVar.e(), this.j);
        } else {
            h2 = this.w == 0 ? h() : this.l + nanoTime;
            if (!z) {
                h2 = Math.max(0L, h2 - this.o);
            }
        }
        if (this.D != c2) {
            this.F = this.C;
            this.E = this.B;
        }
        long j = nanoTime - this.F;
        if (j < 1000000) {
            long j2 = (j * 1000) / 1000000;
            h2 = ((h2 * j2) + ((1000 - j2) * (this.E + ai.a(j, this.j)))) / 1000;
        }
        if (!this.k) {
            long j3 = this.B;
            if (h2 > j3) {
                this.k = true;
                this.f1511a.a(System.currentTimeMillis() - com.applovin.exoplayer2.h.a(ai.b(com.applovin.exoplayer2.h.a(h2 - j3), this.j)));
            }
        }
        this.C = nanoTime;
        this.B = h2;
        this.D = c2;
        return h2;
    }

    public void a() {
        ((i) com.applovin.exoplayer2.l.a.b(this.f1516f)).d();
    }

    public void a(float f2) {
        this.j = f2;
        i iVar = this.f1516f;
        if (iVar != null) {
            iVar.d();
        }
    }

    public void a(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.f1513c = audioTrack;
        this.f1514d = i2;
        this.f1515e = i3;
        this.f1516f = new i(audioTrack);
        this.f1517g = audioTrack.getSampleRate();
        this.f1518h = z && a(i);
        boolean d2 = ai.d(i);
        this.q = d2;
        this.i = d2 ? h(i3 / i2) : -9223372036854775807L;
        this.s = 0L;
        this.t = 0L;
        this.u = 0L;
        this.p = false;
        this.x = C.TIME_UNSET;
        this.y = C.TIME_UNSET;
        this.r = 0L;
        this.o = 0L;
        this.j = 1.0f;
    }

    public boolean a(long j) {
        int playState = ((AudioTrack) com.applovin.exoplayer2.l.a.b(this.f1513c)).getPlayState();
        if (this.f1518h) {
            if (playState == 2) {
                this.p = false;
                return false;
            } else if (playState == 1 && i() == 0) {
                return false;
            }
        }
        boolean z = this.p;
        boolean f2 = f(j);
        this.p = f2;
        if (z && !f2 && playState != 1) {
            this.f1511a.a(this.f1515e, com.applovin.exoplayer2.h.a(this.i));
        }
        return true;
    }

    public int b(long j) {
        return this.f1515e - ((int) (j - (i() * this.f1514d)));
    }

    public boolean b() {
        return ((AudioTrack) com.applovin.exoplayer2.l.a.b(this.f1513c)).getPlayState() == 3;
    }

    public long c(long j) {
        return com.applovin.exoplayer2.h.a(h(j - i()));
    }

    public boolean c() {
        f();
        if (this.x == C.TIME_UNSET) {
            ((i) com.applovin.exoplayer2.l.a.b(this.f1516f)).d();
            return true;
        }
        return false;
    }

    public void d() {
        f();
        this.f1513c = null;
        this.f1516f = null;
    }

    public boolean d(long j) {
        return this.y != C.TIME_UNSET && j > 0 && SystemClock.elapsedRealtime() - this.y >= 200;
    }

    public void e(long j) {
        this.z = i();
        this.x = SystemClock.elapsedRealtime() * 1000;
        this.A = j;
    }

    public boolean f(long j) {
        return j > i() || g();
    }
}
