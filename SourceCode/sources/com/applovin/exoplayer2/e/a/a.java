package com.applovin.exoplayer2.e.a;

import com.applovin.exoplayer2.e.d;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.k.g;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class a implements h {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f2072c;

    /* renamed from: f  reason: collision with root package name */
    private static final int f2075f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f2076g;

    /* renamed from: h  reason: collision with root package name */
    private final int f2077h;
    private boolean i;
    private long j;
    private int k;
    private int l;
    private boolean m;
    private long n;
    private int o;
    private int p;
    private long q;
    private j r;
    private x s;
    private v t;
    private boolean u;

    /* renamed from: a  reason: collision with root package name */
    public static final l f2070a = new l() { // from class: com.applovin.exoplayer2.e.a.a$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] d2;
            d2 = a.d();
            return d2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2071b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f2073d = ai.c("#!AMR\n");

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f2074e = ai.c("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f2072c = iArr;
        f2075f = iArr[8];
    }

    public a() {
        this(0);
    }

    public a(int i) {
        this.f2077h = (i & 2) != 0 ? i | 1 : i;
        this.f2076g = new byte[1];
        this.o = -1;
    }

    private int a(int i) throws com.applovin.exoplayer2.ai {
        if (b(i)) {
            return this.i ? f2072c[i] : f2071b[i];
        }
        throw com.applovin.exoplayer2.ai.b("Illegal AMR " + (this.i ? "WB" : "NB") + " frame type " + i, null);
    }

    private static int a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private v a(long j, boolean z) {
        return new d(j, this.n, a(this.o, 20000L), this.o, z);
    }

    private void a() {
        if (this.u) {
            return;
        }
        this.u = true;
        boolean z = this.i;
        this.s.a(new v.a().f(z ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB).f(f2075f).k(1).l(z ? AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND : 8000).a());
    }

    private void a(long j, int i) {
        com.applovin.exoplayer2.e.v bVar;
        int i2;
        if (this.m) {
            return;
        }
        int i3 = this.f2077h;
        if ((i3 & 1) == 0 || j == -1 || !((i2 = this.o) == -1 || i2 == this.k)) {
            bVar = new v.b(C.TIME_UNSET);
        } else if (this.p < 20 && i != -1) {
            return;
        } else {
            bVar = a(j, (i3 & 2) != 0);
        }
        this.t = bVar;
        this.r.a(bVar);
        this.m = true;
    }

    private static boolean a(i iVar, byte[] bArr) throws IOException {
        iVar.a();
        byte[] bArr2 = new byte[bArr.length];
        iVar.d(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private void b() {
        com.applovin.exoplayer2.l.a.a(this.s);
        ai.a(this.r);
    }

    private boolean b(int i) {
        return i >= 0 && i <= 15 && (c(i) || d(i));
    }

    private boolean b(i iVar) throws IOException {
        int length;
        byte[] bArr = f2073d;
        if (a(iVar, bArr)) {
            this.i = false;
            length = bArr.length;
        } else {
            byte[] bArr2 = f2074e;
            if (!a(iVar, bArr2)) {
                return false;
            }
            this.i = true;
            length = bArr2.length;
        }
        iVar.b(length);
        return true;
    }

    private int c(i iVar) throws IOException {
        if (this.l == 0) {
            try {
                int d2 = d(iVar);
                this.k = d2;
                this.l = d2;
                if (this.o == -1) {
                    this.n = iVar.c();
                    this.o = this.k;
                }
                if (this.o == this.k) {
                    this.p++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int a2 = this.s.a((g) iVar, this.l, true);
        if (a2 == -1) {
            return -1;
        }
        int i = this.l - a2;
        this.l = i;
        if (i > 0) {
            return 0;
        }
        this.s.a(this.q + this.j, 1, this.k, 0, null);
        this.j += 20000;
        return 0;
    }

    private boolean c(int i) {
        return this.i && (i < 10 || i > 13);
    }

    private int d(i iVar) throws IOException {
        iVar.a();
        iVar.d(this.f2076g, 0, 1);
        byte b2 = this.f2076g[0];
        if ((b2 & 131) <= 0) {
            return a((b2 >> 3) & 15);
        }
        throw com.applovin.exoplayer2.ai.b("Invalid padding bits for frame header " + ((int) b2), null);
    }

    private boolean d(int i) {
        return !this.i && (i < 12 || i > 14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] d() {
        return new h[]{new a()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(i iVar, u uVar) throws IOException {
        b();
        if (iVar.c() != 0 || b(iVar)) {
            a();
            int c2 = c(iVar);
            a(iVar.d(), c2);
            return c2;
        }
        throw com.applovin.exoplayer2.ai.b("Could not find AMR header.", null);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        this.j = 0L;
        this.k = 0;
        this.l = 0;
        if (j != 0) {
            com.applovin.exoplayer2.e.v vVar = this.t;
            if (vVar instanceof d) {
                this.q = ((d) vVar).b(j);
                return;
            }
        }
        this.q = 0L;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.r = jVar;
        this.s = jVar.a(0, 1);
        jVar.a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        return b(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
