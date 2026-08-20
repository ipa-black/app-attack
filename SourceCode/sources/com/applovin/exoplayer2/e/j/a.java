package com.applovin.exoplayer2.e.j;

import android.util.Pair;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.k.g;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;
/* loaded from: classes.dex */
public final class a implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f2647a = new l() { // from class: com.applovin.exoplayer2.e.j.a$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            h[] b2;
            b2 = a.b();
            return b2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private j f2648b;

    /* renamed from: c  reason: collision with root package name */
    private x f2649c;

    /* renamed from: d  reason: collision with root package name */
    private b f2650d;

    /* renamed from: e  reason: collision with root package name */
    private int f2651e = -1;

    /* renamed from: f  reason: collision with root package name */
    private long f2652f = -1;

    /* renamed from: com.applovin.exoplayer2.e.j.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0040a implements b {

        /* renamed from: a  reason: collision with root package name */
        private static final int[] f2653a = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: b  reason: collision with root package name */
        private static final int[] f2654b = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 143, 157, 173, 190, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, IronSourceError.ERROR_DO_RV_LOAD_MISSING_ACTIVITY, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: c  reason: collision with root package name */
        private final j f2655c;

        /* renamed from: d  reason: collision with root package name */
        private final x f2656d;

        /* renamed from: e  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.j.b f2657e;

        /* renamed from: f  reason: collision with root package name */
        private final int f2658f;

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f2659g;

        /* renamed from: h  reason: collision with root package name */
        private final y f2660h;
        private final int i;
        private final v j;
        private int k;
        private long l;
        private int m;
        private long n;

        public C0040a(j jVar, x xVar, com.applovin.exoplayer2.e.j.b bVar) throws ai {
            this.f2655c = jVar;
            this.f2656d = xVar;
            this.f2657e = bVar;
            int max = Math.max(1, bVar.f2671c / 10);
            this.i = max;
            y yVar = new y(bVar.f2675g);
            yVar.j();
            int j = yVar.j();
            this.f2658f = j;
            int i = bVar.f2670b;
            int i2 = (((bVar.f2673e - (i * 4)) * 8) / (bVar.f2674f * i)) + 1;
            if (j != i2) {
                throw ai.b("Expected frames per block: " + i2 + "; got: " + j, null);
            }
            int a2 = com.applovin.exoplayer2.l.ai.a(max, j);
            this.f2659g = new byte[bVar.f2673e * a2];
            this.f2660h = new y(a2 * a(j, i));
            int i3 = ((bVar.f2671c * bVar.f2673e) * 8) / j;
            this.j = new v.a().f(MimeTypes.AUDIO_RAW).d(i3).e(i3).f(a(max, i)).k(bVar.f2670b).l(bVar.f2671c).m(2).a();
        }

        private static int a(int i, int i2) {
            return i * 2 * i2;
        }

        private void a(int i) {
            long d2 = this.l + com.applovin.exoplayer2.l.ai.d(this.n, 1000000L, this.f2657e.f2671c);
            int c2 = c(i);
            this.f2656d.a(d2, 1, c2, this.m - c2, null);
            this.n += i;
            this.m -= c2;
        }

        private void a(byte[] bArr, int i, int i2, byte[] bArr2) {
            int i3 = this.f2657e.f2673e;
            int i4 = this.f2657e.f2670b;
            int i5 = (i * i3) + (i2 * 4);
            int i6 = (i4 * 4) + i5;
            int i7 = (i3 / i4) - 4;
            int i8 = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int min = Math.min(bArr[i5 + 2] & 255, 88);
            int i9 = f2654b[min];
            int i10 = ((i * this.f2658f * i4) + i2) * 2;
            bArr2[i10] = (byte) (i8 & 255);
            bArr2[i10 + 1] = (byte) (i8 >> 8);
            for (int i11 = 0; i11 < i7 * 2; i11++) {
                byte b2 = bArr[((i11 / 8) * i4 * 4) + i6 + ((i11 / 2) % 4)];
                int i12 = i11 % 2 == 0 ? b2 & 15 : (b2 & 255) >> 4;
                int i13 = ((((i12 & 7) * 2) + 1) * i9) >> 3;
                if ((i12 & 8) != 0) {
                    i13 = -i13;
                }
                i8 = com.applovin.exoplayer2.l.ai.a(i8 + i13, -32768, 32767);
                i10 += i4 * 2;
                bArr2[i10] = (byte) (i8 & 255);
                bArr2[i10 + 1] = (byte) (i8 >> 8);
                int i14 = min + f2653a[i12];
                int[] iArr = f2654b;
                min = com.applovin.exoplayer2.l.ai.a(i14, 0, iArr.length - 1);
                i9 = iArr[min];
            }
        }

        private void a(byte[] bArr, int i, y yVar) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.f2657e.f2670b; i3++) {
                    a(bArr, i2, i3, yVar.d());
                }
            }
            int c2 = c(this.f2658f * i);
            yVar.d(0);
            yVar.c(c2);
        }

        private int b(int i) {
            return i / (this.f2657e.f2670b * 2);
        }

        private int c(int i) {
            return a(i, this.f2657e.f2670b);
        }

        @Override // com.applovin.exoplayer2.e.j.a.b
        public void a(int i, long j) {
            this.f2655c.a(new d(this.f2657e, this.f2658f, i, j));
            this.f2656d.a(this.j);
        }

        @Override // com.applovin.exoplayer2.e.j.a.b
        public void a(long j) {
            this.k = 0;
            this.l = j;
            this.m = 0;
            this.n = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please submit an issue!!! */
        @Override // com.applovin.exoplayer2.e.j.a.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(com.applovin.exoplayer2.e.i r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.i
                int r1 = r6.m
                int r1 = r6.b(r1)
                int r0 = r0 - r1
                int r1 = r6.f2658f
                int r0 = com.applovin.exoplayer2.l.ai.a(r0, r1)
                com.applovin.exoplayer2.e.j.b r1 = r6.f2657e
                int r1 = r1.f2673e
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.k
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f2659g
                int r5 = r6.k
                int r3 = r7.a(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.k
                int r4 = r4 + r3
                r6.k = r4
                goto L1e
            L3e:
                int r7 = r6.k
                com.applovin.exoplayer2.e.j.b r8 = r6.f2657e
                int r8 = r8.f2673e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f2659g
                com.applovin.exoplayer2.l.y r9 = r6.f2660h
                r6.a(r8, r7, r9)
                int r8 = r6.k
                com.applovin.exoplayer2.e.j.b r9 = r6.f2657e
                int r9 = r9.f2673e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.k = r8
                com.applovin.exoplayer2.l.y r7 = r6.f2660h
                int r7 = r7.b()
                com.applovin.exoplayer2.e.x r8 = r6.f2656d
                com.applovin.exoplayer2.l.y r9 = r6.f2660h
                r8.a(r9, r7)
                int r8 = r6.m
                int r8 = r8 + r7
                r6.m = r8
                int r7 = r6.b(r8)
                int r8 = r6.i
                if (r7 < r8) goto L75
                r6.a(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.m
                int r7 = r6.b(r7)
                if (r7 <= 0) goto L82
                r6.a(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.j.a.C0040a.a(com.applovin.exoplayer2.e.i, long):boolean");
        }
    }

    /* loaded from: classes.dex */
    private interface b {
        void a(int i, long j) throws ai;

        void a(long j);

        boolean a(i iVar, long j) throws IOException;
    }

    /* loaded from: classes.dex */
    private static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final j f2661a;

        /* renamed from: b  reason: collision with root package name */
        private final x f2662b;

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.exoplayer2.e.j.b f2663c;

        /* renamed from: d  reason: collision with root package name */
        private final v f2664d;

        /* renamed from: e  reason: collision with root package name */
        private final int f2665e;

        /* renamed from: f  reason: collision with root package name */
        private long f2666f;

        /* renamed from: g  reason: collision with root package name */
        private int f2667g;

        /* renamed from: h  reason: collision with root package name */
        private long f2668h;

        public c(j jVar, x xVar, com.applovin.exoplayer2.e.j.b bVar, String str, int i) throws ai {
            this.f2661a = jVar;
            this.f2662b = xVar;
            this.f2663c = bVar;
            int i2 = (bVar.f2670b * bVar.f2674f) / 8;
            if (bVar.f2673e != i2) {
                throw ai.b("Expected block size: " + i2 + "; got: " + bVar.f2673e, null);
            }
            int i3 = bVar.f2671c * i2 * 8;
            int max = Math.max(i2, (bVar.f2671c * i2) / 10);
            this.f2665e = max;
            this.f2664d = new v.a().f(str).d(i3).e(i3).f(max).k(bVar.f2670b).l(bVar.f2671c).m(i).a();
        }

        @Override // com.applovin.exoplayer2.e.j.a.b
        public void a(int i, long j) {
            this.f2661a.a(new d(this.f2663c, 1, i, j));
            this.f2662b.a(this.f2664d);
        }

        @Override // com.applovin.exoplayer2.e.j.a.b
        public void a(long j) {
            this.f2666f = j;
            this.f2667g = 0;
            this.f2668h = 0L;
        }

        @Override // com.applovin.exoplayer2.e.j.a.b
        public boolean a(i iVar, long j) throws IOException {
            int i;
            int i2;
            int i3;
            long j2 = j;
            while (true) {
                i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                if (i <= 0 || (i2 = this.f2667g) >= (i3 = this.f2665e)) {
                    break;
                }
                int a2 = this.f2662b.a((g) iVar, (int) Math.min(i3 - i2, j2), true);
                if (a2 == -1) {
                    j2 = 0;
                } else {
                    this.f2667g += a2;
                    j2 -= a2;
                }
            }
            int i4 = this.f2663c.f2673e;
            int i5 = this.f2667g / i4;
            if (i5 > 0) {
                int i6 = i5 * i4;
                int i7 = this.f2667g - i6;
                this.f2662b.a(this.f2666f + com.applovin.exoplayer2.l.ai.d(this.f2668h, 1000000L, this.f2663c.f2671c), 1, i6, i7, null);
                this.f2668h += i5;
                this.f2667g = i7;
            }
            return i <= 0;
        }
    }

    private void a() {
        com.applovin.exoplayer2.l.a.a(this.f2649c);
        com.applovin.exoplayer2.l.ai.a(this.f2648b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] b() {
        return new h[]{new a()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public int a(i iVar, u uVar) throws IOException {
        b cVar;
        a();
        if (this.f2650d == null) {
            com.applovin.exoplayer2.e.j.b a2 = com.applovin.exoplayer2.e.j.c.a(iVar);
            if (a2 == null) {
                throw ai.b("Unsupported or unrecognized wav header.", null);
            }
            if (a2.f2669a == 17) {
                cVar = new C0040a(this.f2648b, this.f2649c, a2);
            } else if (a2.f2669a == 6) {
                cVar = new c(this.f2648b, this.f2649c, a2, MimeTypes.AUDIO_ALAW, -1);
            } else if (a2.f2669a == 7) {
                cVar = new c(this.f2648b, this.f2649c, a2, MimeTypes.AUDIO_MLAW, -1);
            } else {
                int a3 = com.applovin.exoplayer2.b.y.a(a2.f2669a, a2.f2674f);
                if (a3 == 0) {
                    throw ai.a("Unsupported WAV format type: " + a2.f2669a);
                }
                cVar = new c(this.f2648b, this.f2649c, a2, MimeTypes.AUDIO_RAW, a3);
            }
            this.f2650d = cVar;
        }
        if (this.f2651e == -1) {
            Pair<Long, Long> b2 = com.applovin.exoplayer2.e.j.c.b(iVar);
            this.f2651e = ((Long) b2.first).intValue();
            long longValue = ((Long) b2.second).longValue();
            this.f2652f = longValue;
            this.f2650d.a(this.f2651e, longValue);
        } else if (iVar.c() == 0) {
            iVar.b(this.f2651e);
        }
        com.applovin.exoplayer2.l.a.b(this.f2652f != -1);
        return this.f2650d.a(iVar, this.f2652f - iVar.c()) ? -1 : 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(long j, long j2) {
        b bVar = this.f2650d;
        if (bVar != null) {
            bVar.a(j2);
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.f2648b = jVar;
        this.f2649c = jVar.a(0, 1);
        jVar.a();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        return com.applovin.exoplayer2.e.j.c.a(iVar) != null;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void c() {
    }
}
