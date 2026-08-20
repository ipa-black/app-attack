package com.applovin.exoplayer2.m;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.ah;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.t;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.m.n;
import com.applovin.exoplayer2.p;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.w;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.common.Scopes;
import com.google.firebase.messaging.Constants;
import com.onesignal.OneSignalRemoteParams;
import io.bidmachine.utils.IabUtils;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class h extends com.applovin.exoplayer2.f.j {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f3966c = {1920, 1600, OneSignalRemoteParams.DEFAULT_INDIRECT_ATTRIBUTION_WINDOW, 1280, 960, 854, 640, 540, 480};

    /* renamed from: d  reason: collision with root package name */
    private static boolean f3967d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f3968e;
    private int A;
    private long B;
    private long C;
    private long D;
    private int E;
    private int F;
    private int G;
    private int H;
    private float I;
    private o J;
    private boolean K;
    private int L;
    private l M;

    /* renamed from: b  reason: collision with root package name */
    b f3969b;

    /* renamed from: f  reason: collision with root package name */
    private final Context f3970f;

    /* renamed from: g  reason: collision with root package name */
    private final m f3971g;

    /* renamed from: h  reason: collision with root package name */
    private final n.a f3972h;
    private final long i;
    private final int j;
    private final boolean k;
    private a l;
    private boolean m;
    private boolean n;
    private Surface o;
    private d p;
    private boolean q;
    private int r;
    private boolean s;
    private boolean t;
    private boolean u;
    private long v;
    private long w;
    private long x;
    private int y;
    private int z;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3973a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3974b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3975c;

        public a(int i, int i2, int i3) {
            this.f3973a = i;
            this.f3974b = i2;
            this.f3975c = i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b implements Handler.Callback, g.c {

        /* renamed from: b  reason: collision with root package name */
        private final Handler f3977b;

        public b(com.applovin.exoplayer2.f.g gVar) {
            Handler a2 = ai.a((Handler.Callback) this);
            this.f3977b = a2;
            gVar.a(this, a2);
        }

        private void a(long j) {
            if (this != h.this.f3969b) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                h.this.R();
                return;
            }
            try {
                h.this.e(j);
            } catch (p e2) {
                h.this.a(e2);
            }
        }

        @Override // com.applovin.exoplayer2.f.g.c
        public void a(com.applovin.exoplayer2.f.g gVar, long j, long j2) {
            if (ai.f3781a >= 30) {
                a(j);
                return;
            }
            this.f3977b.sendMessageAtFrontOfQueue(Message.obtain(this.f3977b, 0, (int) (j >> 32), (int) j));
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            a(ai.b(message.arg1, message.arg2));
            return true;
        }
    }

    public h(Context context, g.b bVar, com.applovin.exoplayer2.f.k kVar, long j, boolean z, Handler handler, n nVar, int i) {
        super(2, bVar, kVar, z, 30.0f);
        this.i = j;
        this.j = i;
        Context applicationContext = context.getApplicationContext();
        this.f3970f = applicationContext;
        this.f3971g = new m(applicationContext);
        this.f3972h = new n.a(handler, nVar);
        this.k = aa();
        this.w = C.TIME_UNSET;
        this.F = -1;
        this.G = -1;
        this.I = -1.0f;
        this.r = 1;
        this.L = 0;
        V();
    }

    public h(Context context, com.applovin.exoplayer2.f.k kVar, long j, boolean z, Handler handler, n nVar, int i) {
        this(context, g.b.f2797a, kVar, j, z, handler, nVar, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        P();
    }

    private void S() {
        this.w = this.i > 0 ? SystemClock.elapsedRealtime() + this.i : C.TIME_UNSET;
    }

    private void T() {
        com.applovin.exoplayer2.f.g G;
        this.s = false;
        if (ai.f3781a < 23 || !this.K || (G = G()) == null) {
            return;
        }
        this.f3969b = new b(G);
    }

    private void U() {
        if (this.q) {
            this.f3972h.a(this.o);
        }
    }

    private void V() {
        this.J = null;
    }

    private void W() {
        if (this.F == -1 && this.G == -1) {
            return;
        }
        o oVar = this.J;
        if (oVar != null && oVar.f4014b == this.F && this.J.f4015c == this.G && this.J.f4016d == this.H && this.J.f4017e == this.I) {
            return;
        }
        o oVar2 = new o(this.F, this.G, this.H, this.I);
        this.J = oVar2;
        this.f3972h.a(oVar2);
    }

    private void X() {
        o oVar = this.J;
        if (oVar != null) {
            this.f3972h.a(oVar);
        }
    }

    private void Y() {
        if (this.y > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f3972h.a(this.y, elapsedRealtime - this.x);
            this.y = 0;
            this.x = elapsedRealtime;
        }
    }

    private void Z() {
        int i = this.E;
        if (i != 0) {
            this.f3972h.a(this.D, i);
            this.D = 0L;
            this.E = 0;
        }
    }

    protected static int a(com.applovin.exoplayer2.f.i iVar, v vVar) {
        if (vVar.m != -1) {
            int size = vVar.n.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += vVar.n.get(i2).length;
            }
            return vVar.m + i;
        }
        return c(iVar, vVar);
    }

    private static List<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.k kVar, v vVar, boolean z, boolean z2) throws l.b {
        Pair<Integer, Integer> a2;
        String str;
        String str2 = vVar.l;
        if (str2 == null) {
            return Collections.emptyList();
        }
        List<com.applovin.exoplayer2.f.i> a3 = com.applovin.exoplayer2.f.l.a(kVar.getDecoderInfos(str2, z, z2), vVar);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(str2) && (a2 = com.applovin.exoplayer2.f.l.a(vVar)) != null) {
            int intValue = ((Integer) a2.first).intValue();
            if (intValue != 16 && intValue != 256) {
                str = intValue == 512 ? "video/avc" : "video/hevc";
            }
            a3.addAll(kVar.getDecoderInfos(str, z, z2));
        }
        return Collections.unmodifiableList(a3);
    }

    private void a(long j, long j2, v vVar) {
        l lVar = this.M;
        if (lVar != null) {
            lVar.a(j, j2, vVar, H());
        }
    }

    private static void a(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    private static void a(com.applovin.exoplayer2.f.g gVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        gVar.a(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.applovin.exoplayer2.m.h] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void a(Object obj) throws p {
        d dVar = obj instanceof Surface ? (Surface) obj : null;
        if (dVar == null) {
            d dVar2 = this.p;
            if (dVar2 != null) {
                dVar = dVar2;
            } else {
                com.applovin.exoplayer2.f.i I = I();
                if (I != null && b(I)) {
                    dVar = d.a(this.f3970f, I.f2806g);
                    this.p = dVar;
                }
            }
        }
        if (this.o == dVar) {
            if (dVar == null || dVar == this.p) {
                return;
            }
            X();
            U();
            return;
        }
        this.o = dVar;
        this.f3971g.a(dVar);
        this.q = false;
        int d_ = d_();
        com.applovin.exoplayer2.f.g G = G();
        if (G != null) {
            if (ai.f3781a < 23 || dVar == null || this.m) {
                J();
                E();
            } else {
                a(G, dVar);
            }
        }
        if (dVar == null || dVar == this.p) {
            V();
            T();
            return;
        }
        X();
        T();
        if (d_ == 2) {
            S();
        }
    }

    private static boolean aa() {
        return "NVIDIA".equals(ai.f3783c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x07d1, code lost:
        if (r0.equals("NX573J") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0833, code lost:
        if (r0.equals("AFTN") == false) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean ab() {
        /*
            Method dump skipped, instructions count: 3048
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.m.h.ab():boolean");
    }

    private static Point b(com.applovin.exoplayer2.f.i iVar, v vVar) {
        int[] iArr;
        boolean z = vVar.r > vVar.q;
        int i = z ? vVar.r : vVar.q;
        int i2 = z ? vVar.q : vVar.r;
        float f2 = i2 / i;
        for (int i3 : f3966c) {
            int i4 = (int) (i3 * f2);
            if (i3 <= i || i4 <= i2) {
                break;
            }
            if (ai.f3781a >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point a2 = iVar.a(i5, i3);
                if (iVar.a(a2.x, a2.y, vVar.s)) {
                    return a2;
                }
            } else {
                try {
                    int a3 = ai.a(i3, 16) * 16;
                    int a4 = ai.a(i4, 16) * 16;
                    if (a3 * a4 <= com.applovin.exoplayer2.f.l.b()) {
                        int i6 = z ? a4 : a3;
                        if (!z) {
                            a3 = a4;
                        }
                        return new Point(i6, a3);
                    }
                } catch (l.b unused) {
                }
            }
        }
        return null;
    }

    private boolean b(com.applovin.exoplayer2.f.i iVar) {
        return ai.f3781a >= 23 && !this.K && !b(iVar.f2800a) && (!iVar.f2806g || d.a(this.f3970f));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
        if (r3.equals("video/hevc") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int c(com.applovin.exoplayer2.f.i r10, com.applovin.exoplayer2.v r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.m.h.c(com.applovin.exoplayer2.f.i, com.applovin.exoplayer2.v):int");
    }

    private static boolean g(long j) {
        return j < -30000;
    }

    private static boolean h(long j) {
        return j < -500000;
    }

    void B() {
        this.u = true;
        if (this.s) {
            return;
        }
        this.s = true;
        this.f3972h.a(this.o);
        this.q = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j
    public void C() {
        super.C();
        T();
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean F() {
        return this.K && ai.f3781a < 23;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j
    public void M() {
        super.M();
        this.A = 0;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected float a(float f2, v vVar, v[] vVarArr) {
        float f3 = -1.0f;
        for (v vVar2 : vVarArr) {
            float f4 = vVar2.s;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            return -1.0f;
        }
        return f3 * f2;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected int a(com.applovin.exoplayer2.f.k kVar, v vVar) throws l.b {
        int i = 0;
        if (u.b(vVar.l)) {
            boolean z = vVar.o != null;
            List<com.applovin.exoplayer2.f.i> a2 = a(kVar, vVar, z, false);
            if (z && a2.isEmpty()) {
                a2 = a(kVar, vVar, false, false);
            }
            if (a2.isEmpty()) {
                return as.b(1);
            }
            if (c(vVar)) {
                com.applovin.exoplayer2.f.i iVar = a2.get(0);
                boolean a3 = iVar.a(vVar);
                int i2 = iVar.c(vVar) ? 16 : 8;
                if (a3) {
                    List<com.applovin.exoplayer2.f.i> a4 = a(kVar, vVar, z, true);
                    if (!a4.isEmpty()) {
                        com.applovin.exoplayer2.f.i iVar2 = a4.get(0);
                        if (iVar2.a(vVar) && iVar2.c(vVar)) {
                            i = 32;
                        }
                    }
                }
                return as.a(a3 ? 4 : 3, i2, i);
            }
            return as.b(2);
        }
        return as.b(0);
    }

    protected MediaFormat a(v vVar, String str, a aVar, float f2, boolean z, int i) {
        Pair<Integer, Integer> a2;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(IabUtils.KEY_WIDTH, vVar.q);
        mediaFormat.setInteger(IabUtils.KEY_HEIGHT, vVar.r);
        t.a(mediaFormat, vVar.n);
        t.a(mediaFormat, "frame-rate", vVar.s);
        t.a(mediaFormat, "rotation-degrees", vVar.t);
        t.a(mediaFormat, vVar.x);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(vVar.l) && (a2 = com.applovin.exoplayer2.f.l.a(vVar)) != null) {
            t.a(mediaFormat, Scopes.PROFILE, ((Integer) a2.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f3973a);
        mediaFormat.setInteger("max-height", aVar.f3974b);
        t.a(mediaFormat, "max-input-size", aVar.f3975c);
        if (ai.f3781a >= 23) {
            mediaFormat.setInteger(Constants.FirelogAnalytics.PARAM_PRIORITY, 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            a(mediaFormat, i);
        }
        return mediaFormat;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.f.i iVar, v vVar, v vVar2) {
        com.applovin.exoplayer2.c.h a2 = iVar.a(vVar, vVar2);
        int i = a2.f1687e;
        if (vVar2.q > this.l.f3973a || vVar2.r > this.l.f3974b) {
            i |= 256;
        }
        if (a(iVar, vVar2) > this.l.f3975c) {
            i |= 64;
        }
        int i2 = i;
        return new com.applovin.exoplayer2.c.h(iVar.f2800a, vVar, vVar2, i2 != 0 ? 0 : a2.f1686d, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j
    public com.applovin.exoplayer2.c.h a(w wVar) throws p {
        com.applovin.exoplayer2.c.h a2 = super.a(wVar);
        this.f3972h.a(wVar.f4195b, a2);
        return a2;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected g.a a(com.applovin.exoplayer2.f.i iVar, v vVar, MediaCrypto mediaCrypto, float f2) {
        d dVar = this.p;
        if (dVar != null && dVar.f3939a != iVar.f2806g) {
            this.p.release();
            this.p = null;
        }
        String str = iVar.f2802c;
        a a2 = a(iVar, vVar, u());
        this.l = a2;
        MediaFormat a3 = a(vVar, str, a2, f2, this.k, this.K ? this.L : 0);
        if (this.o == null) {
            if (!b(iVar)) {
                throw new IllegalStateException();
            }
            if (this.p == null) {
                this.p = d.a(this.f3970f, iVar.f2806g);
            }
            this.o = this.p;
        }
        return g.a.a(iVar, a3, vVar, this.o, mediaCrypto);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected com.applovin.exoplayer2.f.h a(Throwable th, com.applovin.exoplayer2.f.i iVar) {
        return new g(th, iVar, this.o);
    }

    protected a a(com.applovin.exoplayer2.f.i iVar, v vVar, v[] vVarArr) {
        int c2;
        int i = vVar.q;
        int i2 = vVar.r;
        int a2 = a(iVar, vVar);
        if (vVarArr.length == 1) {
            if (a2 != -1 && (c2 = c(iVar, vVar)) != -1) {
                a2 = Math.min((int) (a2 * 1.5f), c2);
            }
            return new a(i, i2, a2);
        }
        int length = vVarArr.length;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            v vVar2 = vVarArr[i3];
            if (vVar.x != null && vVar2.x == null) {
                vVar2 = vVar2.a().a(vVar.x).a();
            }
            if (iVar.a(vVar, vVar2).f1686d != 0) {
                z |= vVar2.q == -1 || vVar2.r == -1;
                i = Math.max(i, vVar2.q);
                i2 = Math.max(i2, vVar2.r);
                a2 = Math.max(a2, a(iVar, vVar2));
            }
        }
        if (z) {
            q.c("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i2);
            Point b2 = b(iVar, vVar);
            if (b2 != null) {
                i = Math.max(i, b2.x);
                i2 = Math.max(i2, b2.y);
                a2 = Math.max(a2, c(iVar, vVar.a().g(i).h(i2).a()));
                q.c("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i + "x" + i2);
            }
        }
        return new a(i, i2, a2);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected List<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.k kVar, v vVar, boolean z) throws l.b {
        return a(kVar, vVar, z, this.K);
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.ar
    public void a(float f2, float f3) throws p {
        super.a(f2, f3);
        this.f3971g.a(f2);
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.ao.b
    public void a(int i, Object obj) throws p {
        if (i == 1) {
            a(obj);
        } else if (i == 7) {
            this.M = (l) obj;
        } else if (i == 10) {
            int intValue = ((Integer) obj).intValue();
            if (this.L != intValue) {
                this.L = intValue;
                if (this.K) {
                    J();
                }
            }
        } else if (i != 4) {
            if (i != 5) {
                super.a(i, obj);
            } else {
                this.f3971g.a(((Integer) obj).intValue());
            }
        } else {
            this.r = ((Integer) obj).intValue();
            com.applovin.exoplayer2.f.g G = G();
            if (G != null) {
                G.c(this.r);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void a(long j, boolean z) throws p {
        super.a(j, z);
        T();
        this.f3971g.c();
        this.B = C.TIME_UNSET;
        this.v = C.TIME_UNSET;
        this.z = 0;
        if (z) {
            S();
        } else {
            this.w = C.TIME_UNSET;
        }
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(com.applovin.exoplayer2.c.g gVar) throws p {
        if (!this.K) {
            this.A++;
        }
        if (ai.f3781a >= 23 || !this.K) {
            return;
        }
        e(gVar.f1677d);
    }

    protected void a(com.applovin.exoplayer2.f.g gVar, int i, long j) {
        ah.a("skipVideoBuffer");
        gVar.a(i, false);
        ah.a();
        this.f2809a.f1671f++;
    }

    protected void a(com.applovin.exoplayer2.f.g gVar, int i, long j, long j2) {
        W();
        ah.a("releaseOutputBuffer");
        gVar.a(i, j2);
        ah.a();
        this.C = SystemClock.elapsedRealtime() * 1000;
        this.f2809a.f1670e++;
        this.z = 0;
        B();
    }

    protected void a(com.applovin.exoplayer2.f.g gVar, Surface surface) {
        gVar.a(surface);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(v vVar, MediaFormat mediaFormat) {
        com.applovin.exoplayer2.f.g G = G();
        if (G != null) {
            G.c(this.r);
        }
        if (this.K) {
            this.F = vVar.q;
            this.G = vVar.r;
        } else {
            com.applovin.exoplayer2.l.a.b(mediaFormat);
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            this.F = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger(IabUtils.KEY_WIDTH);
            this.G = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger(IabUtils.KEY_HEIGHT);
        }
        this.I = vVar.u;
        if (ai.f3781a < 21) {
            this.H = vVar.t;
        } else if (vVar.t == 90 || vVar.t == 270) {
            int i = this.F;
            this.F = this.G;
            this.G = i;
            this.I = 1.0f / this.I;
        }
        this.f3971g.b(vVar.s);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(Exception exc) {
        q.c("MediaCodecVideoRenderer", "Video codec error", exc);
        this.f3972h.a(exc);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(String str) {
        this.f3972h.a(str);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(String str, long j, long j2) {
        this.f3972h.a(str, j, j2);
        this.m = b(str);
        this.n = ((com.applovin.exoplayer2.f.i) com.applovin.exoplayer2.l.a.b(I())).b();
        if (ai.f3781a < 23 || !this.K) {
            return;
        }
        this.f3969b = new b((com.applovin.exoplayer2.f.g) com.applovin.exoplayer2.l.a.b(G()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void a(boolean z, boolean z2) throws p {
        super.a(z, z2);
        boolean z3 = v().f1395b;
        com.applovin.exoplayer2.l.a.b((z3 && this.L == 0) ? false : true);
        if (this.K != z3) {
            this.K = z3;
            J();
        }
        this.f3972h.a(this.f2809a);
        this.f3971g.a();
        this.t = z2;
        this.u = false;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean a(long j, long j2, com.applovin.exoplayer2.f.g gVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, v vVar) throws p {
        boolean z3;
        long j4;
        h hVar;
        com.applovin.exoplayer2.f.g gVar2;
        int i4;
        long j5;
        long j6;
        com.applovin.exoplayer2.l.a.b(gVar);
        if (this.v == C.TIME_UNSET) {
            this.v = j;
        }
        if (j3 != this.B) {
            this.f3971g.a(j3);
            this.B = j3;
        }
        long Q = Q();
        long j7 = j3 - Q;
        if (z && !z2) {
            a(gVar, i, j7);
            return true;
        }
        double O = O();
        boolean z4 = d_() == 2;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j8 = (long) ((j3 - j) / O);
        if (z4) {
            j8 -= elapsedRealtime - j2;
        }
        if (this.o == this.p) {
            if (g(j8)) {
                a(gVar, i, j7);
                f(j8);
                return true;
            }
            return false;
        }
        long j9 = elapsedRealtime - this.C;
        if (this.u ? this.s : !(z4 || this.t)) {
            j4 = j9;
            z3 = false;
        } else {
            z3 = true;
            j4 = j9;
        }
        if (this.w != C.TIME_UNSET || j < Q || (!z3 && (!z4 || !b(j8, j4)))) {
            if (z4 && j != this.v) {
                long nanoTime = System.nanoTime();
                long b2 = this.f3971g.b((j8 * 1000) + nanoTime);
                long j10 = (b2 - nanoTime) / 1000;
                boolean z5 = this.w != C.TIME_UNSET;
                if (b(j10, j2, z2) && b(j, z5)) {
                    return false;
                }
                if (a(j10, j2, z2)) {
                    if (z5) {
                        a(gVar, i, j7);
                    } else {
                        b(gVar, i, j7);
                    }
                    j8 = j10;
                } else {
                    j8 = j10;
                    if (ai.f3781a >= 21) {
                        if (j8 < 50000) {
                            hVar = this;
                            hVar.a(j7, b2, vVar);
                            gVar2 = gVar;
                            i4 = i;
                            j5 = j7;
                            j6 = b2;
                            hVar.a(gVar2, i4, j5, j6);
                        }
                    } else if (j8 < 30000) {
                        if (j8 > 11000) {
                            try {
                                Thread.sleep((j8 - 10000) / 1000);
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                return false;
                            }
                        }
                        a(j7, b2, vVar);
                        c(gVar, i, j7);
                    }
                }
            }
            return false;
        }
        long nanoTime2 = System.nanoTime();
        a(j7, nanoTime2, vVar);
        if (ai.f3781a >= 21) {
            hVar = this;
            gVar2 = gVar;
            i4 = i;
            j5 = j7;
            j6 = nanoTime2;
            hVar.a(gVar2, i4, j5, j6);
        }
        c(gVar, i, j7);
        f(j8);
        return true;
    }

    protected boolean a(long j, long j2, boolean z) {
        return g(j) && !z;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean a(com.applovin.exoplayer2.f.i iVar) {
        return this.o != null || b(iVar);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void b(com.applovin.exoplayer2.c.g gVar) throws p {
        if (this.n) {
            ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.b(gVar.f1678e);
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4 && b4 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    a(G(), bArr);
                }
            }
        }
    }

    protected void b(com.applovin.exoplayer2.f.g gVar, int i, long j) {
        ah.a("dropVideoBuffer");
        gVar.a(i, false);
        ah.a();
        e(1);
    }

    protected boolean b(long j, long j2) {
        return g(j) && j2 > 100000;
    }

    protected boolean b(long j, long j2, boolean z) {
        return h(j) && !z;
    }

    protected boolean b(long j, boolean z) throws p {
        int b2 = b(j);
        if (b2 == 0) {
            return false;
        }
        this.f2809a.i++;
        int i = this.A + b2;
        if (z) {
            this.f2809a.f1671f += i;
        } else {
            e(i);
        }
        K();
        return true;
    }

    protected boolean b(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (h.class) {
            if (!f3967d) {
                f3968e = ab();
                f3967d = true;
            }
        }
        return f3968e;
    }

    protected void c(com.applovin.exoplayer2.f.g gVar, int i, long j) {
        W();
        ah.a("releaseOutputBuffer");
        gVar.a(i, true);
        ah.a();
        this.C = SystemClock.elapsedRealtime() * 1000;
        this.f2809a.f1670e++;
        this.z = 0;
        B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j
    public void d(long j) {
        super.d(j);
        if (this.K) {
            return;
        }
        this.A--;
    }

    protected void e(int i) {
        this.f2809a.f1672g += i;
        this.y += i;
        this.z += i;
        this.f2809a.f1673h = Math.max(this.z, this.f2809a.f1673h);
        int i2 = this.j;
        if (i2 <= 0 || this.y < i2) {
            return;
        }
        Y();
    }

    protected void e(long j) throws p {
        c(j);
        W();
        this.f2809a.f1670e++;
        B();
        d(j);
    }

    protected void f(long j) {
        this.f2809a.a(j);
        this.D += j;
        this.E++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void p() {
        super.p();
        this.y = 0;
        this.x = SystemClock.elapsedRealtime();
        this.C = SystemClock.elapsedRealtime() * 1000;
        this.D = 0L;
        this.E = 0;
        this.f3971g.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void q() {
        this.w = C.TIME_UNSET;
        Y();
        Z();
        this.f3971g.d();
        super.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void r() {
        V();
        T();
        this.q = false;
        this.f3971g.e();
        this.f3969b = null;
        try {
            super.r();
        } finally {
            this.f3972h.b(this.f2809a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void s() {
        try {
            super.s();
            d dVar = this.p;
            if (dVar != null) {
                if (this.o == dVar) {
                    this.o = null;
                }
                dVar.release();
                this.p = null;
            }
        } catch (Throwable th) {
            if (this.p != null) {
                Surface surface = this.o;
                d dVar2 = this.p;
                if (surface == dVar2) {
                    this.o = null;
                }
                dVar2.release();
                this.p = null;
            }
            throw th;
        }
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String y() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.ar
    public boolean z() {
        d dVar;
        if (super.z() && (this.s || (((dVar = this.p) != null && this.o == dVar) || G() == null || this.K))) {
            this.w = C.TIME_UNSET;
            return true;
        } else if (this.w == C.TIME_UNSET) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.w) {
                return true;
            }
            this.w = C.TIME_UNSET;
            return false;
        }
    }
}
