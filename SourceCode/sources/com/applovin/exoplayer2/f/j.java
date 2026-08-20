package com.applovin.exoplayer2.f;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.applovin.exoplayer2.c.g;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.n;
import com.applovin.exoplayer2.f.a;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.af;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.p;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.w;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.util.MimeTypes;
import io.bidmachine.utils.IabUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class j extends com.applovin.exoplayer2.e {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f2808b = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private v A;
    private MediaFormat B;
    private boolean C;
    private float D;
    private ArrayDeque<i> E;
    private a F;
    private i G;
    private int H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private e S;
    private long T;
    private int U;
    private int V;
    private ByteBuffer W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* renamed from: a  reason: collision with root package name */
    protected com.applovin.exoplayer2.c.e f2809a;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private int ad;
    private int ae;
    private int af;
    private boolean ag;
    private boolean ah;
    private boolean ai;
    private long aj;
    private long ak;
    private boolean al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private boolean ap;
    private boolean aq;
    private boolean ar;
    private p as;
    private long at;
    private long au;
    private int av;

    /* renamed from: c  reason: collision with root package name */
    private final g.b f2810c;

    /* renamed from: d  reason: collision with root package name */
    private final k f2811d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f2812e;

    /* renamed from: f  reason: collision with root package name */
    private final float f2813f;

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.exoplayer2.c.g f2814g;

    /* renamed from: h  reason: collision with root package name */
    private final com.applovin.exoplayer2.c.g f2815h;
    private final com.applovin.exoplayer2.c.g i;
    private final d j;
    private final af<v> k;
    private final ArrayList<Long> l;
    private final MediaCodec.BufferInfo m;
    private final long[] n;
    private final long[] o;
    private final long[] p;
    private v q;
    private v r;
    private com.applovin.exoplayer2.d.f s;
    private com.applovin.exoplayer2.d.f t;
    private MediaCrypto u;
    private boolean v;
    private long w;
    private float x;
    private float y;
    private g z;

    /* loaded from: classes.dex */
    public static class a extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final String f2816a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f2817b;

        /* renamed from: c  reason: collision with root package name */
        public final i f2818c;

        /* renamed from: d  reason: collision with root package name */
        public final String f2819d;

        /* renamed from: e  reason: collision with root package name */
        public final a f2820e;

        public a(v vVar, Throwable th, boolean z, int i) {
            this("Decoder init failed: [" + i + "], " + vVar, th, vVar.l, z, null, a(i), null);
        }

        public a(v vVar, Throwable th, boolean z, i iVar) {
            this("Decoder init failed: " + iVar.f2800a + ", " + vVar, th, vVar.l, z, iVar, ai.f3781a >= 21 ? a(th) : null, null);
        }

        private a(String str, Throwable th, String str2, boolean z, i iVar, String str3, a aVar) {
            super(str, th);
            this.f2816a = str2;
            this.f2817b = z;
            this.f2818c = iVar;
            this.f2819d = str3;
            this.f2820e = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public a a(a aVar) {
            return new a(getMessage(), getCause(), this.f2816a, this.f2817b, this.f2818c, this.f2819d, aVar);
        }

        private static String a(int i) {
            return "com.applovin.exoplayer2.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        private static String a(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    public j(int i, g.b bVar, k kVar, boolean z, float f2) {
        super(i);
        this.f2810c = bVar;
        this.f2811d = (k) com.applovin.exoplayer2.l.a.b(kVar);
        this.f2812e = z;
        this.f2813f = f2;
        this.f2814g = com.applovin.exoplayer2.c.g.f();
        this.f2815h = new com.applovin.exoplayer2.c.g(0);
        this.i = new com.applovin.exoplayer2.c.g(2);
        d dVar = new d();
        this.j = dVar;
        this.k = new af<>();
        this.l = new ArrayList<>();
        this.m = new MediaCodec.BufferInfo();
        this.x = 1.0f;
        this.y = 1.0f;
        this.w = C.TIME_UNSET;
        this.n = new long[10];
        this.o = new long[10];
        this.p = new long[10];
        this.at = C.TIME_UNSET;
        this.au = C.TIME_UNSET;
        dVar.f(0);
        dVar.f1675b.order(ByteOrder.nativeOrder());
        this.D = -1.0f;
        this.H = 0;
        this.ad = 0;
        this.U = -1;
        this.V = -1;
        this.T = C.TIME_UNSET;
        this.aj = C.TIME_UNSET;
        this.ak = C.TIME_UNSET;
        this.ae = 0;
        this.af = 0;
    }

    private void B() {
        this.ab = false;
        this.j.a();
        this.i.a();
        this.aa = false;
        this.Z = false;
    }

    private void R() {
        try {
            this.z.d();
        } finally {
            M();
        }
    }

    private boolean S() {
        return this.V >= 0;
    }

    private void T() {
        this.U = -1;
        this.f2815h.f1675b = null;
    }

    private void U() {
        this.V = -1;
        this.W = null;
    }

    private boolean V() throws p {
        g gVar = this.z;
        if (gVar == null || this.ae == 2 || this.al) {
            return false;
        }
        if (this.U < 0) {
            int b2 = gVar.b();
            this.U = b2;
            if (b2 < 0) {
                return false;
            }
            this.f2815h.f1675b = this.z.a(b2);
            this.f2815h.a();
        }
        if (this.ae == 1) {
            if (!this.R) {
                this.ah = true;
                this.z.a(this.U, 0, 0, 0L, 4);
                T();
            }
            this.ae = 2;
            return false;
        } else if (this.P) {
            this.P = false;
            ByteBuffer byteBuffer = this.f2815h.f1675b;
            byte[] bArr = f2808b;
            byteBuffer.put(bArr);
            this.z.a(this.U, 0, bArr.length, 0L, 0);
            T();
            this.ag = true;
            return true;
        } else {
            if (this.ad == 1) {
                for (int i = 0; i < this.A.n.size(); i++) {
                    this.f2815h.f1675b.put(this.A.n.get(i));
                }
                this.ad = 2;
            }
            int position = this.f2815h.f1675b.position();
            w t = t();
            try {
                int a2 = a(t, this.f2815h, 0);
                if (g()) {
                    this.ak = this.aj;
                }
                if (a2 == -3) {
                    return false;
                }
                if (a2 == -5) {
                    if (this.ad == 2) {
                        this.f2815h.a();
                        this.ad = 1;
                    }
                    a(t);
                    return true;
                } else if (this.f2815h.c()) {
                    if (this.ad == 2) {
                        this.f2815h.a();
                        this.ad = 1;
                    }
                    this.al = true;
                    if (!this.ag) {
                        aa();
                        return false;
                    }
                    try {
                        if (!this.R) {
                            this.ah = true;
                            this.z.a(this.U, 0, 0, 0L, 4);
                            T();
                        }
                        return false;
                    } catch (MediaCodec.CryptoException e2) {
                        throw a(e2, this.q, com.applovin.exoplayer2.h.b(e2.getErrorCode()));
                    }
                } else if (!this.ag && !this.f2815h.d()) {
                    this.f2815h.a();
                    if (this.ad == 2) {
                        this.ad = 1;
                    }
                    return true;
                } else {
                    boolean g2 = this.f2815h.g();
                    if (g2) {
                        this.f2815h.f1674a.a(position);
                    }
                    if (this.I && !g2) {
                        com.applovin.exoplayer2.l.v.a(this.f2815h.f1675b);
                        if (this.f2815h.f1675b.position() == 0) {
                            return true;
                        }
                        this.I = false;
                    }
                    long j = this.f2815h.f1677d;
                    e eVar = this.S;
                    if (eVar != null) {
                        j = eVar.a(this.q, this.f2815h);
                        this.aj = Math.max(this.aj, this.S.a(this.q));
                    }
                    long j2 = j;
                    if (this.f2815h.b()) {
                        this.l.add(Long.valueOf(j2));
                    }
                    if (this.an) {
                        this.k.a(j2, (long) this.q);
                        this.an = false;
                    }
                    this.aj = Math.max(this.aj, j2);
                    this.f2815h.h();
                    if (this.f2815h.e()) {
                        b(this.f2815h);
                    }
                    a(this.f2815h);
                    try {
                        if (g2) {
                            this.z.a(this.U, 0, this.f2815h.f1674a, j2, 0);
                        } else {
                            this.z.a(this.U, 0, this.f2815h.f1675b.limit(), j2, 0);
                        }
                        T();
                        this.ag = true;
                        this.ad = 0;
                        this.f2809a.f1668c++;
                        return true;
                    } catch (MediaCodec.CryptoException e3) {
                        throw a(e3, this.q, com.applovin.exoplayer2.h.b(e3.getErrorCode()));
                    }
                }
            } catch (g.a e4) {
                a(e4);
                e(0);
                R();
                return true;
            }
        }
    }

    private boolean W() {
        if (this.ag) {
            this.ae = 1;
            if (this.J || this.L) {
                this.af = 3;
                return false;
            }
            this.af = 1;
        }
        return true;
    }

    private boolean X() throws p {
        if (this.ag) {
            this.ae = 1;
            if (this.J || this.L) {
                this.af = 3;
                return false;
            }
            this.af = 2;
        } else {
            ac();
        }
        return true;
    }

    private void Y() throws p {
        if (!this.ag) {
            ab();
            return;
        }
        this.ae = 1;
        this.af = 3;
    }

    private void Z() {
        this.ai = true;
        MediaFormat c2 = this.z.c();
        if (this.H != 0 && c2.getInteger(IabUtils.KEY_WIDTH) == 32 && c2.getInteger(IabUtils.KEY_HEIGHT) == 32) {
            this.Q = true;
            return;
        }
        if (this.O) {
            c2.setInteger("channel-count", 1);
        }
        this.B = c2;
        this.C = true;
    }

    private void a(MediaCrypto mediaCrypto, boolean z) throws a {
        if (this.E == null) {
            try {
                List<i> d2 = d(z);
                ArrayDeque<i> arrayDeque = new ArrayDeque<>();
                this.E = arrayDeque;
                if (this.f2812e) {
                    arrayDeque.addAll(d2);
                } else if (!d2.isEmpty()) {
                    this.E.add(d2.get(0));
                }
                this.F = null;
            } catch (l.b e2) {
                throw new a(this.q, e2, z, -49998);
            }
        }
        if (this.E.isEmpty()) {
            throw new a(this.q, (Throwable) null, z, -49999);
        }
        while (this.z == null) {
            i peekFirst = this.E.peekFirst();
            if (!a(peekFirst)) {
                return;
            }
            try {
                a(peekFirst, mediaCrypto);
            } catch (Exception e3) {
                q.b("MediaCodecRenderer", "Failed to initialize decoder: " + peekFirst, e3);
                this.E.removeFirst();
                a aVar = new a(this.q, e3, z, peekFirst);
                a(aVar);
                if (this.F == null) {
                    this.F = aVar;
                } else {
                    this.F = this.F.a(aVar);
                }
                if (this.E.isEmpty()) {
                    throw this.F;
                }
            }
        }
        this.E = null;
    }

    private void a(com.applovin.exoplayer2.d.f fVar) {
        com.applovin.exoplayer2.d.f.a(this.t, fVar);
        this.t = fVar;
    }

    private void a(i iVar, MediaCrypto mediaCrypto) throws Exception {
        String str = iVar.f2800a;
        float a2 = ai.f3781a < 23 ? -1.0f : a(this.y, this.q, u());
        float f2 = a2 > this.f2813f ? a2 : -1.0f;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ah.a("createCodec:" + str);
        g.a a3 = a(iVar, this.q, mediaCrypto, f2);
        g b2 = (!this.ap || ai.f3781a < 23) ? this.f2810c.b(a3) : new a.C0041a(a(), this.aq, this.ar).b(a3);
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        this.z = b2;
        this.G = iVar;
        this.D = f2;
        this.A = this.q;
        this.H = c(str);
        this.I = a(str, this.A);
        this.J = b(str);
        this.K = d(str);
        this.L = e(str);
        this.M = g(str);
        this.N = f(str);
        this.O = b(str, this.A);
        this.R = b(iVar) || F();
        if (b2.a()) {
            this.ac = true;
            this.ad = 1;
            this.P = this.H != 0;
        }
        if ("c2.android.mp3.decoder".equals(iVar.f2800a)) {
            this.S = new e();
        }
        if (d_() == 2) {
            this.T = SystemClock.elapsedRealtime() + 1000;
        }
        this.f2809a.f1666a++;
        a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
    }

    private boolean a(i iVar, v vVar, com.applovin.exoplayer2.d.f fVar, com.applovin.exoplayer2.d.f fVar2) throws p {
        n c2;
        if (fVar == fVar2) {
            return false;
        }
        if (fVar2 == null || fVar == null || ai.f3781a < 23 || com.applovin.exoplayer2.h.f2972e.equals(fVar.f()) || com.applovin.exoplayer2.h.f2972e.equals(fVar2.f()) || (c2 = c(fVar2)) == null) {
            return true;
        }
        return !iVar.f2806g && (c2.f2037d ? false : fVar2.a(vVar.l));
    }

    private static boolean a(IllegalStateException illegalStateException) {
        if (ai.f3781a < 21 || !b(illegalStateException)) {
            StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
            return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
        }
        return true;
    }

    private static boolean a(String str, v vVar) {
        return ai.f3781a < 21 && vVar.n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private void aa() throws p {
        int i = this.af;
        if (i == 1) {
            R();
        } else if (i == 2) {
            R();
            ac();
        } else if (i == 3) {
            ab();
        } else {
            this.am = true;
            D();
        }
    }

    private void ab() throws p {
        J();
        E();
    }

    private void ac() throws p {
        try {
            this.u.setMediaDrmSession(c(this.t).f2036c);
            b(this.t);
            this.ae = 0;
            this.af = 0;
        } catch (MediaCryptoException e2) {
            throw a(e2, this.q, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
        }
    }

    private void ad() throws p {
        com.applovin.exoplayer2.l.a.b(!this.al);
        w t = t();
        this.i.a();
        do {
            this.i.a();
            int a2 = a(t, this.i, 0);
            if (a2 == -5) {
                a(t);
                return;
            } else if (a2 != -4) {
                if (a2 != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else if (this.i.c()) {
                this.al = true;
                return;
            } else {
                if (this.an) {
                    v vVar = (v) com.applovin.exoplayer2.l.a.b(this.q);
                    this.r = vVar;
                    a(vVar, (MediaFormat) null);
                    this.an = false;
                }
                this.i.h();
            }
        } while (this.j.a(this.i));
        this.aa = true;
    }

    private void b(com.applovin.exoplayer2.d.f fVar) {
        com.applovin.exoplayer2.d.f.a(this.s, fVar);
        this.s = fVar;
    }

    private boolean b(long j, long j2) throws p {
        boolean z;
        boolean a2;
        int a3;
        if (!S()) {
            if (this.M && this.ah) {
                try {
                    a3 = this.z.a(this.m);
                } catch (IllegalStateException unused) {
                    aa();
                    if (this.am) {
                        J();
                    }
                    return false;
                }
            } else {
                a3 = this.z.a(this.m);
            }
            if (a3 < 0) {
                if (a3 == -2) {
                    Z();
                    return true;
                }
                if (this.R && (this.al || this.ae == 2)) {
                    aa();
                }
                return false;
            } else if (this.Q) {
                this.Q = false;
                this.z.a(a3, false);
                return true;
            } else if (this.m.size == 0 && (this.m.flags & 4) != 0) {
                aa();
                return false;
            } else {
                this.V = a3;
                ByteBuffer b2 = this.z.b(a3);
                this.W = b2;
                if (b2 != null) {
                    b2.position(this.m.offset);
                    this.W.limit(this.m.offset + this.m.size);
                }
                if (this.N && this.m.presentationTimeUs == 0 && (this.m.flags & 4) != 0) {
                    long j3 = this.aj;
                    if (j3 != C.TIME_UNSET) {
                        this.m.presentationTimeUs = j3;
                    }
                }
                this.X = f(this.m.presentationTimeUs);
                this.Y = this.ak == this.m.presentationTimeUs;
                c(this.m.presentationTimeUs);
            }
        }
        if (this.M && this.ah) {
            try {
                z = false;
            } catch (IllegalStateException unused2) {
                z = false;
            }
            try {
                a2 = a(j, j2, this.z, this.W, this.V, this.m.flags, 1, this.m.presentationTimeUs, this.X, this.Y, this.r);
            } catch (IllegalStateException unused3) {
                aa();
                if (this.am) {
                    J();
                }
                return z;
            }
        } else {
            z = false;
            a2 = a(j, j2, this.z, this.W, this.V, this.m.flags, 1, this.m.presentationTimeUs, this.X, this.Y, this.r);
        }
        if (a2) {
            d(this.m.presentationTimeUs);
            boolean z2 = (this.m.flags & 4) != 0 ? true : z;
            U();
            if (!z2) {
                return true;
            }
            aa();
        }
        return z;
    }

    private static boolean b(i iVar) {
        String str = iVar.f2800a;
        return (ai.f3781a <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (ai.f3781a <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((ai.f3781a <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(ai.f3783c) && "AFTS".equals(ai.f3784d) && iVar.f2806g));
    }

    private static boolean b(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    private static boolean b(String str) {
        return ai.f3781a < 18 || (ai.f3781a == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (ai.f3781a == 19 && ai.f3784d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private static boolean b(String str, v vVar) {
        return ai.f3781a <= 18 && vVar.y == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private int c(String str) {
        if (ai.f3781a <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (ai.f3784d.startsWith("SM-T585") || ai.f3784d.startsWith("SM-A510") || ai.f3784d.startsWith("SM-A520") || ai.f3784d.startsWith("SM-J700"))) {
            return 2;
        }
        if (ai.f3781a < 24) {
            if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
                return ("flounder".equals(ai.f3782b) || "flounder_lte".equals(ai.f3782b) || "grouper".equals(ai.f3782b) || "tilapia".equals(ai.f3782b)) ? 1 : 0;
            }
            return 0;
        }
        return 0;
    }

    private n c(com.applovin.exoplayer2.d.f fVar) throws p {
        com.applovin.exoplayer2.c.b g2 = fVar.g();
        if (g2 == null || (g2 instanceof n)) {
            return (n) g2;
        }
        throw a(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + g2), this.q, 6001);
    }

    private boolean c(long j, long j2) throws p {
        boolean z;
        com.applovin.exoplayer2.l.a.b(!this.am);
        if (!this.j.l()) {
            z = false;
        } else if (!a(j, j2, null, this.j.f1675b, this.V, 0, this.j.k(), this.j.i(), this.j.b(), this.j.c(), this.r)) {
            return false;
        } else {
            d(this.j.j());
            this.j.a();
            z = false;
        }
        if (this.al) {
            this.am = true;
            return z;
        }
        if (this.aa) {
            com.applovin.exoplayer2.l.a.b(this.j.a(this.i));
            this.aa = z;
        }
        if (this.ab) {
            if (this.j.l()) {
                return true;
            }
            B();
            this.ab = z;
            E();
            if (!this.Z) {
                return z;
            }
        }
        ad();
        if (this.j.l()) {
            this.j.h();
        }
        if (this.j.l() || this.al || this.ab) {
            return true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean c(v vVar) {
        return vVar.E == 0 || vVar.E == 2;
    }

    private static boolean c(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    private List<i> d(boolean z) throws l.b {
        List<i> a2 = a(this.f2811d, this.q, z);
        if (a2.isEmpty() && z) {
            a2 = a(this.f2811d, this.q, false);
            if (!a2.isEmpty()) {
                q.c("MediaCodecRenderer", "Drm session requires secure decoder for " + this.q.l + ", but no secure decoder available. Trying to proceed with " + a2 + ".");
            }
        }
        return a2;
    }

    private void d(v vVar) {
        B();
        String str = vVar.l;
        if (MimeTypes.AUDIO_AAC.equals(str) || MimeTypes.AUDIO_MPEG.equals(str) || MimeTypes.AUDIO_OPUS.equals(str)) {
            this.j.g(32);
        } else {
            this.j.g(1);
        }
        this.Z = true;
    }

    private static boolean d(String str) {
        return ai.f3781a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private boolean e(int i) throws p {
        w t = t();
        this.f2814g.a();
        int a2 = a(t, this.f2814g, i | 4);
        if (a2 == -5) {
            a(t);
            return true;
        } else if (a2 == -4 && this.f2814g.c()) {
            this.al = true;
            aa();
            return false;
        } else {
            return false;
        }
    }

    private boolean e(long j) {
        return this.w == C.TIME_UNSET || SystemClock.elapsedRealtime() - j < this.w;
    }

    private boolean e(v vVar) throws p {
        if (ai.f3781a >= 23 && this.z != null && this.af != 3 && d_() != 0) {
            float a2 = a(this.y, vVar, u());
            float f2 = this.D;
            if (f2 == a2) {
                return true;
            }
            if (a2 == -1.0f) {
                Y();
                return false;
            } else if (f2 == -1.0f && a2 <= this.f2813f) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", a2);
                this.z.a(bundle);
                this.D = a2;
            }
        }
        return true;
    }

    private static boolean e(String str) {
        return (ai.f3781a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (ai.f3781a <= 19 && (("hb2000".equals(ai.f3782b) || "stvm8".equals(ai.f3782b)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
    }

    private boolean f(long j) {
        int size = this.l.size();
        for (int i = 0; i < size; i++) {
            if (this.l.get(i).longValue() == j) {
                this.l.remove(i);
                return true;
            }
        }
        return false;
    }

    private static boolean f(String str) {
        return ai.f3781a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(ai.f3783c) && (ai.f3782b.startsWith("baffin") || ai.f3782b.startsWith("grand") || ai.f3782b.startsWith("fortuna") || ai.f3782b.startsWith("gprimelte") || ai.f3782b.startsWith("j2y18lte") || ai.f3782b.startsWith("ms01"));
    }

    private static boolean g(String str) {
        return ai.f3781a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean A() {
        return this.am;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C() {
    }

    protected void D() throws p {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void E() throws p {
        v vVar;
        if (this.z != null || this.Z || (vVar = this.q) == null) {
            return;
        }
        if (this.t == null && b(vVar)) {
            d(this.q);
            return;
        }
        b(this.t);
        String str = this.q.l;
        com.applovin.exoplayer2.d.f fVar = this.s;
        if (fVar != null) {
            if (this.u == null) {
                n c2 = c(fVar);
                if (c2 != null) {
                    try {
                        this.u = new MediaCrypto(c2.f2035b, c2.f2036c);
                        this.v = !c2.f2037d && this.u.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e2) {
                        throw a(e2, this.q, PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
                    }
                } else if (this.s.e() == null) {
                    return;
                }
            }
            if (n.f2034a) {
                int c3 = this.s.c();
                if (c3 == 1) {
                    f.a aVar = (f.a) com.applovin.exoplayer2.l.a.b(this.s.e());
                    throw a(aVar, this.q, aVar.f2019a);
                } else if (c3 != 4) {
                    return;
                }
            }
        }
        try {
            a(this.u, this.v);
        } catch (a e3) {
            throw a(e3, this.q, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        }
    }

    protected boolean F() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g G() {
        return this.z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaFormat H() {
        return this.B;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final i I() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.applovin.exoplayer2.d.f, android.media.MediaCrypto] */
    public void J() {
        try {
            g gVar = this.z;
            if (gVar != null) {
                gVar.e();
                this.f2809a.f1667b++;
                a(this.G.f2800a);
            }
            this.z = null;
            try {
                MediaCrypto mediaCrypto = this.u;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.z = null;
            try {
                MediaCrypto mediaCrypto2 = this.u;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean K() throws p {
        boolean L = L();
        if (L) {
            E();
        }
        return L;
    }

    protected boolean L() {
        if (this.z == null) {
            return false;
        }
        if (this.af == 3 || this.J || ((this.K && !this.ai) || (this.L && this.ah))) {
            J();
            return true;
        }
        R();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M() {
        T();
        U();
        this.T = C.TIME_UNSET;
        this.ah = false;
        this.ag = false;
        this.P = false;
        this.Q = false;
        this.X = false;
        this.Y = false;
        this.l.clear();
        this.aj = C.TIME_UNSET;
        this.ak = C.TIME_UNSET;
        e eVar = this.S;
        if (eVar != null) {
            eVar.a();
        }
        this.ae = 0;
        this.af = 0;
        this.ad = this.ac ? 1 : 0;
    }

    protected void N() {
        M();
        this.as = null;
        this.S = null;
        this.E = null;
        this.G = null;
        this.A = null;
        this.B = null;
        this.C = false;
        this.ai = false;
        this.D = -1.0f;
        this.H = 0;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = false;
        this.R = false;
        this.ac = false;
        this.ad = 0;
        this.v = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float O() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P() {
        this.ao = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long Q() {
        return this.au;
    }

    protected float a(float f2, v vVar, v[] vVarArr) {
        return -1.0f;
    }

    protected abstract int a(k kVar, v vVar) throws l.b;

    @Override // com.applovin.exoplayer2.as
    public final int a(v vVar) throws p {
        try {
            return a(this.f2811d, vVar);
        } catch (l.b e2) {
            throw a(e2, vVar, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    protected com.applovin.exoplayer2.c.h a(i iVar, v vVar, v vVar2) {
        return new com.applovin.exoplayer2.c.h(iVar.f2800a, vVar, vVar2, 0, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (X() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b2, code lost:
        if (X() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ce, code lost:
        r7 = 2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.w r12) throws com.applovin.exoplayer2.p {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.f.j.a(com.applovin.exoplayer2.w):com.applovin.exoplayer2.c.h");
    }

    protected abstract g.a a(i iVar, v vVar, MediaCrypto mediaCrypto, float f2);

    protected h a(Throwable th, i iVar) {
        return new h(th, iVar);
    }

    protected abstract List<i> a(k kVar, v vVar, boolean z) throws l.b;

    @Override // com.applovin.exoplayer2.ar
    public void a(float f2, float f3) throws p {
        this.x = f2;
        this.y = f3;
        e(this.A);
    }

    @Override // com.applovin.exoplayer2.ar
    public void a(long j, long j2) throws p {
        boolean z = false;
        if (this.ao) {
            this.ao = false;
            aa();
        }
        p pVar = this.as;
        if (pVar != null) {
            this.as = null;
            throw pVar;
        }
        try {
            if (this.am) {
                D();
            } else if (this.q != null || e(2)) {
                E();
                if (this.Z) {
                    ah.a("bypassRender");
                    while (c(j, j2)) {
                    }
                } else if (this.z == null) {
                    this.f2809a.f1669d += b(j);
                    e(1);
                    this.f2809a.a();
                } else {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    ah.a("drainAndFeed");
                    while (b(j, j2) && e(elapsedRealtime)) {
                    }
                    while (V() && e(elapsedRealtime)) {
                    }
                }
                ah.a();
                this.f2809a.a();
            }
        } catch (IllegalStateException e2) {
            if (!a(e2)) {
                throw e2;
            }
            a((Exception) e2);
            if (ai.f3781a >= 21 && c(e2)) {
                z = true;
            }
            if (z) {
                J();
            }
            throw a(a(e2, I()), this.q, z, PlaybackException.ERROR_CODE_DECODING_FAILED);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e
    public void a(long j, boolean z) throws p {
        this.al = false;
        this.am = false;
        this.ao = false;
        if (this.Z) {
            this.j.a();
            this.i.a();
            this.aa = false;
        } else {
            K();
        }
        if (this.k.b() > 0) {
            this.an = true;
        }
        this.k.a();
        int i = this.av;
        if (i != 0) {
            this.au = this.o[i - 1];
            this.at = this.n[i - 1];
            this.av = 0;
        }
    }

    protected void a(com.applovin.exoplayer2.c.g gVar) throws p {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(p pVar) {
        this.as = pVar;
    }

    protected void a(v vVar, MediaFormat mediaFormat) throws p {
    }

    protected void a(Exception exc) {
    }

    protected void a(String str) {
    }

    protected void a(String str, long j, long j2) {
    }

    public void a(boolean z) {
        this.ap = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e
    public void a(boolean z, boolean z2) throws p {
        this.f2809a = new com.applovin.exoplayer2.c.e();
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(v[] vVarArr, long j, long j2) throws p {
        if (this.au == C.TIME_UNSET) {
            com.applovin.exoplayer2.l.a.b(this.at == C.TIME_UNSET);
            this.at = j;
            this.au = j2;
            return;
        }
        int i = this.av;
        if (i == this.o.length) {
            q.c("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.o[this.av - 1]);
        } else {
            this.av = i + 1;
        }
        long[] jArr = this.n;
        int i2 = this.av;
        jArr[i2 - 1] = j;
        this.o[i2 - 1] = j2;
        this.p[i2 - 1] = this.aj;
    }

    protected abstract boolean a(long j, long j2, g gVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, v vVar) throws p;

    protected boolean a(i iVar) {
        return true;
    }

    protected void b(com.applovin.exoplayer2.c.g gVar) throws p {
    }

    public void b(boolean z) {
        this.aq = z;
    }

    protected boolean b(v vVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(long j) throws p {
        v a2 = this.k.a(j);
        if (a2 == null && this.C) {
            a2 = this.k.c();
        }
        if (a2 != null) {
            this.r = a2;
        } else if (!this.C || this.r == null) {
            return;
        }
        a(this.r, this.B);
        this.C = false;
    }

    public void c(boolean z) {
        this.ar = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(long j) {
        while (true) {
            int i = this.av;
            if (i == 0 || j < this.p[0]) {
                return;
            }
            long[] jArr = this.n;
            this.at = jArr[0];
            this.au = this.o[0];
            int i2 = i - 1;
            this.av = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.o;
            System.arraycopy(jArr2, 1, jArr2, 0, this.av);
            long[] jArr3 = this.p;
            System.arraycopy(jArr3, 1, jArr3, 0, this.av);
            C();
        }
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.as
    public final int o() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e
    public void p() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e
    public void q() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e
    public void r() {
        this.q = null;
        this.at = C.TIME_UNSET;
        this.au = C.TIME_UNSET;
        this.av = 0;
        L();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.e
    public void s() {
        try {
            B();
            J();
        } finally {
            a((com.applovin.exoplayer2.d.f) null);
        }
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean z() {
        return this.q != null && (x() || S() || (this.T != C.TIME_UNSET && SystemClock.elapsedRealtime() < this.T));
    }
}
