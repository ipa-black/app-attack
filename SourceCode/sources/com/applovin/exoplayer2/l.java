package com.applovin.exoplayer2;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DefaultLoadControl;
/* loaded from: classes.dex */
public class l implements aa {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.exoplayer2.k.m f3753a;

    /* renamed from: b  reason: collision with root package name */
    private final long f3754b;

    /* renamed from: c  reason: collision with root package name */
    private final long f3755c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3756d;

    /* renamed from: e  reason: collision with root package name */
    private final long f3757e;

    /* renamed from: f  reason: collision with root package name */
    private final int f3758f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f3759g;

    /* renamed from: h  reason: collision with root package name */
    private final long f3760h;
    private final boolean i;
    private int j;
    private boolean k;

    public l() {
        this(new com.applovin.exoplayer2.k.m(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    protected l(com.applovin.exoplayer2.k.m mVar, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        a(i3, 0, "bufferForPlaybackMs", "0");
        a(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i, "maxBufferMs", "minBufferMs");
        a(i6, 0, "backBufferDurationMs", "0");
        this.f3753a = mVar;
        this.f3754b = h.b(i);
        this.f3755c = h.b(i2);
        this.f3756d = h.b(i3);
        this.f3757e = h.b(i4);
        this.f3758f = i5;
        this.j = i5 == -1 ? 13107200 : i5;
        this.f3759g = z;
        this.f3760h = h.b(i6);
        this.i = z2;
    }

    private static int a(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                return DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    private static void a(int i, int i2, String str, String str2) {
        com.applovin.exoplayer2.l.a.a(i >= i2, str + " cannot be less than " + str2);
    }

    private void a(boolean z) {
        int i = this.f3758f;
        if (i == -1) {
            i = 13107200;
        }
        this.j = i;
        this.k = false;
        if (z) {
            this.f3753a.d();
        }
    }

    protected int a(ar[] arVarArr, com.applovin.exoplayer2.j.d[] dVarArr) {
        int i = 0;
        for (int i2 = 0; i2 < arVarArr.length; i2++) {
            if (dVarArr[i2] != null) {
                i += a(arVarArr[i2].a());
            }
        }
        return Math.max(13107200, i);
    }

    @Override // com.applovin.exoplayer2.aa
    public void a() {
        a(false);
    }

    @Override // com.applovin.exoplayer2.aa
    public void a(ar[] arVarArr, com.applovin.exoplayer2.h.ad adVar, com.applovin.exoplayer2.j.d[] dVarArr) {
        int i = this.f3758f;
        if (i == -1) {
            i = a(arVarArr, dVarArr);
        }
        this.j = i;
        this.f3753a.a(i);
    }

    @Override // com.applovin.exoplayer2.aa
    public boolean a(long j, float f2, boolean z, long j2) {
        long b2 = com.applovin.exoplayer2.l.ai.b(j, f2);
        long j3 = z ? this.f3757e : this.f3756d;
        if (j2 != C.TIME_UNSET) {
            j3 = Math.min(j2 / 2, j3);
        }
        return j3 <= 0 || b2 >= j3 || (!this.f3759g && this.f3753a.e() >= this.j);
    }

    @Override // com.applovin.exoplayer2.aa
    public boolean a(long j, long j2, float f2) {
        boolean z = true;
        boolean z2 = this.f3753a.e() >= this.j;
        long j3 = this.f3754b;
        if (f2 > 1.0f) {
            j3 = Math.min(com.applovin.exoplayer2.l.ai.a(j3, f2), this.f3755c);
        }
        if (j2 < Math.max(j3, 500000L)) {
            if (!this.f3759g && z2) {
                z = false;
            }
            this.k = z;
            if (!z && j2 < 500000) {
                com.applovin.exoplayer2.l.q.c("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.f3755c || z2) {
            this.k = false;
        }
        return this.k;
    }

    @Override // com.applovin.exoplayer2.aa
    public void b() {
        a(true);
    }

    @Override // com.applovin.exoplayer2.aa
    public void c() {
        a(true);
    }

    @Override // com.applovin.exoplayer2.aa
    public com.applovin.exoplayer2.k.b d() {
        return this.f3753a;
    }

    @Override // com.applovin.exoplayer2.aa
    public long e() {
        return this.f3760h;
    }

    @Override // com.applovin.exoplayer2.aa
    public boolean f() {
        return this.i;
    }
}
