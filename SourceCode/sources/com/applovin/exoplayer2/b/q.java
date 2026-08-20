package com.applovin.exoplayer2.b;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.ar;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.b.g;
import com.applovin.exoplayer2.b.h;
import com.applovin.exoplayer2.f.g;
import com.applovin.exoplayer2.f.l;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.firebase.messaging.Constants;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class q extends com.applovin.exoplayer2.f.j implements com.applovin.exoplayer2.l.s {

    /* renamed from: b  reason: collision with root package name */
    private final Context f1568b;

    /* renamed from: c  reason: collision with root package name */
    private final g.a f1569c;

    /* renamed from: d  reason: collision with root package name */
    private final h f1570d;

    /* renamed from: e  reason: collision with root package name */
    private int f1571e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1572f;

    /* renamed from: g  reason: collision with root package name */
    private com.applovin.exoplayer2.v f1573g;

    /* renamed from: h  reason: collision with root package name */
    private long f1574h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private ar.a m;

    /* loaded from: classes.dex */
    private final class a implements h.c {
        private a() {
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void a() {
            q.this.B();
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void a(int i, long j, long j2) {
            q.this.f1569c.a(i, j, j2);
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void a(long j) {
            q.this.f1569c.a(j);
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void a(Exception exc) {
            com.applovin.exoplayer2.l.q.c("MediaCodecAudioRenderer", "Audio sink error", exc);
            q.this.f1569c.a(exc);
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void a(boolean z) {
            q.this.f1569c.a(z);
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void b() {
            if (q.this.m != null) {
                q.this.m.a();
            }
        }

        @Override // com.applovin.exoplayer2.b.h.c
        public void b(long j) {
            if (q.this.m != null) {
                q.this.m.a(j);
            }
        }
    }

    public q(Context context, g.b bVar, com.applovin.exoplayer2.f.k kVar, boolean z, Handler handler, g gVar, h hVar) {
        super(1, bVar, kVar, z, 44100.0f);
        this.f1568b = context.getApplicationContext();
        this.f1570d = hVar;
        this.f1569c = new g.a(handler, gVar);
        hVar.a(new a());
    }

    public q(Context context, com.applovin.exoplayer2.f.k kVar, boolean z, Handler handler, g gVar, h hVar) {
        this(context, g.b.f2797a, kVar, z, handler, gVar, hVar);
    }

    private void R() {
        long a2 = this.f1570d.a(A());
        if (a2 != Long.MIN_VALUE) {
            if (!this.j) {
                a2 = Math.max(this.f1574h, a2);
            }
            this.f1574h = a2;
            this.j = false;
        }
    }

    private static boolean S() {
        return ai.f3781a == 23 && ("ZTE B2017G".equals(ai.f3784d) || "AXON 7 mini".equals(ai.f3784d));
    }

    private int a(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar) {
        if (!"OMX.google.raw.decoder".equals(iVar.f2800a) || ai.f3781a >= 24 || (ai.f3781a == 23 && ai.c(this.f1568b))) {
            return vVar.m;
        }
        return -1;
    }

    private static boolean b(String str) {
        return ai.f3781a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(ai.f3783c) && (ai.f3782b.startsWith("zeroflte") || ai.f3782b.startsWith("herolte") || ai.f3782b.startsWith("heroqlte"));
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.ar
    public boolean A() {
        return super.A() && this.f1570d.d();
    }

    protected void B() {
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j
    public void C() {
        super.C();
        this.f1570d.b();
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void D() throws com.applovin.exoplayer2.p {
        try {
            this.f1570d.c();
        } catch (h.e e2) {
            throw a(e2, e2.f1499c, e2.f1498b, 5002);
        }
    }

    @Override // com.applovin.exoplayer2.f.j
    protected float a(float f2, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v[] vVarArr) {
        int i = -1;
        for (com.applovin.exoplayer2.v vVar2 : vVarArr) {
            int i2 = vVar2.z;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return f2 * i;
    }

    protected int a(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v[] vVarArr) {
        int a2 = a(iVar, vVar);
        if (vVarArr.length == 1) {
            return a2;
        }
        for (com.applovin.exoplayer2.v vVar2 : vVarArr) {
            if (iVar.a(vVar, vVar2).f1686d != 0) {
                a2 = Math.max(a2, a(iVar, vVar2));
            }
        }
        return a2;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected int a(com.applovin.exoplayer2.f.k kVar, com.applovin.exoplayer2.v vVar) throws l.b {
        if (com.applovin.exoplayer2.l.u.a(vVar.l)) {
            int i = ai.f3781a >= 21 ? 32 : 0;
            boolean z = vVar.E != 0;
            boolean c2 = c(vVar);
            int i2 = 8;
            if (c2 && this.f1570d.a(vVar) && (!z || com.applovin.exoplayer2.f.l.a() != null)) {
                return as.a(4, 8, i);
            }
            if ((!MimeTypes.AUDIO_RAW.equals(vVar.l) || this.f1570d.a(vVar)) && this.f1570d.a(ai.b(2, vVar.y, vVar.z))) {
                List<com.applovin.exoplayer2.f.i> a2 = a(kVar, vVar, false);
                if (a2.isEmpty()) {
                    return as.b(1);
                }
                if (c2) {
                    com.applovin.exoplayer2.f.i iVar = a2.get(0);
                    boolean a3 = iVar.a(vVar);
                    if (a3 && iVar.c(vVar)) {
                        i2 = 16;
                    }
                    return as.a(a3 ? 4 : 3, i2, i);
                }
                return as.b(2);
            }
            return as.b(1);
        }
        return as.b(0);
    }

    protected MediaFormat a(com.applovin.exoplayer2.v vVar, String str, int i, float f2) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", vVar.y);
        mediaFormat.setInteger("sample-rate", vVar.z);
        com.applovin.exoplayer2.l.t.a(mediaFormat, vVar.n);
        com.applovin.exoplayer2.l.t.a(mediaFormat, "max-input-size", i);
        if (ai.f3781a >= 23) {
            mediaFormat.setInteger(Constants.FirelogAnalytics.PARAM_PRIORITY, 0);
            if (f2 != -1.0f && !S()) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (ai.f3781a <= 28 && MimeTypes.AUDIO_AC4.equals(vVar.l)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (ai.f3781a >= 24 && this.f1570d.b(ai.b(4, vVar.y, vVar.z)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        return mediaFormat;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.v vVar2) {
        com.applovin.exoplayer2.c.h a2 = iVar.a(vVar, vVar2);
        int i = a2.f1687e;
        if (a(iVar, vVar2) > this.f1571e) {
            i |= 64;
        }
        int i2 = i;
        return new com.applovin.exoplayer2.c.h(iVar.f2800a, vVar, vVar2, i2 != 0 ? 0 : a2.f1686d, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j
    public com.applovin.exoplayer2.c.h a(com.applovin.exoplayer2.w wVar) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.c.h a2 = super.a(wVar);
        this.f1569c.a(wVar.f4195b, a2);
        return a2;
    }

    @Override // com.applovin.exoplayer2.f.j
    protected g.a a(com.applovin.exoplayer2.f.i iVar, com.applovin.exoplayer2.v vVar, MediaCrypto mediaCrypto, float f2) {
        this.f1571e = a(iVar, vVar, u());
        this.f1572f = b(iVar.f2800a);
        MediaFormat a2 = a(vVar, iVar.f2802c, this.f1571e, f2);
        this.f1573g = (!MimeTypes.AUDIO_RAW.equals(iVar.f2801b) || MimeTypes.AUDIO_RAW.equals(vVar.l)) ? null : vVar;
        return g.a.a(iVar, a2, vVar, mediaCrypto);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected List<com.applovin.exoplayer2.f.i> a(com.applovin.exoplayer2.f.k kVar, com.applovin.exoplayer2.v vVar, boolean z) throws l.b {
        com.applovin.exoplayer2.f.i a2;
        String str = vVar.l;
        if (str == null) {
            return Collections.emptyList();
        }
        if (!this.f1570d.a(vVar) || (a2 = com.applovin.exoplayer2.f.l.a()) == null) {
            List<com.applovin.exoplayer2.f.i> a3 = com.applovin.exoplayer2.f.l.a(kVar.getDecoderInfos(str, z, false), vVar);
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
                ArrayList arrayList = new ArrayList(a3);
                arrayList.addAll(kVar.getDecoderInfos(MimeTypes.AUDIO_E_AC3, z, false));
                a3 = arrayList;
            }
            return Collections.unmodifiableList(a3);
        }
        return Collections.singletonList(a2);
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.ao.b
    public void a(int i, Object obj) throws com.applovin.exoplayer2.p {
        if (i == 2) {
            this.f1570d.a(((Float) obj).floatValue());
        } else if (i == 3) {
            this.f1570d.a((d) obj);
        } else if (i == 6) {
            this.f1570d.a((k) obj);
        } else {
            switch (i) {
                case 9:
                    this.f1570d.b(((Boolean) obj).booleanValue());
                    return;
                case 10:
                    this.f1570d.a(((Integer) obj).intValue());
                    return;
                case 11:
                    this.m = (ar.a) obj;
                    return;
                default:
                    super.a(i, obj);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void a(long j, boolean z) throws com.applovin.exoplayer2.p {
        super.a(j, z);
        if (this.l) {
            this.f1570d.k();
        } else {
            this.f1570d.j();
        }
        this.f1574h = j;
        this.i = true;
        this.j = true;
    }

    @Override // com.applovin.exoplayer2.l.s
    public void a(am amVar) {
        this.f1570d.a(amVar);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(com.applovin.exoplayer2.c.g gVar) {
        if (!this.i || gVar.b()) {
            return;
        }
        if (Math.abs(gVar.f1677d - this.f1574h) > 500000) {
            this.f1574h = gVar.f1677d;
        }
        this.i = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0093 A[LOOP:0: B:30:0x008f->B:32:0x0093, LOOP_END] */
    @Override // com.applovin.exoplayer2.f.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(com.applovin.exoplayer2.v r6, android.media.MediaFormat r7) throws com.applovin.exoplayer2.p {
        /*
            r5 = this;
            com.applovin.exoplayer2.v r0 = r5.f1573g
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L9
            r6 = r0
            goto L99
        L9:
            com.applovin.exoplayer2.f.g r0 = r5.G()
            if (r0 != 0) goto L11
            goto L99
        L11:
            java.lang.String r0 = r6.l
            java.lang.String r3 = "audio/raw"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L1e
        L1b:
            int r0 = r6.A
            goto L4c
        L1e:
            int r0 = com.applovin.exoplayer2.l.ai.f3781a
            r4 = 24
            if (r0 < r4) goto L31
            java.lang.String r0 = "pcm-encoding"
            boolean r4 = r7.containsKey(r0)
            if (r4 == 0) goto L31
            int r0 = r7.getInteger(r0)
            goto L4c
        L31:
            java.lang.String r0 = "v-bits-per-sample"
            boolean r4 = r7.containsKey(r0)
            if (r4 == 0) goto L42
            int r0 = r7.getInteger(r0)
            int r0 = com.applovin.exoplayer2.l.ai.c(r0)
            goto L4c
        L42:
            java.lang.String r0 = r6.l
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L4b
            goto L1b
        L4b:
            r0 = 2
        L4c:
            com.applovin.exoplayer2.v$a r4 = new com.applovin.exoplayer2.v$a
            r4.<init>()
            com.applovin.exoplayer2.v$a r3 = r4.f(r3)
            com.applovin.exoplayer2.v$a r0 = r3.m(r0)
            int r3 = r6.B
            com.applovin.exoplayer2.v$a r0 = r0.n(r3)
            int r3 = r6.C
            com.applovin.exoplayer2.v$a r0 = r0.o(r3)
            java.lang.String r3 = "channel-count"
            int r3 = r7.getInteger(r3)
            com.applovin.exoplayer2.v$a r0 = r0.k(r3)
            java.lang.String r3 = "sample-rate"
            int r7 = r7.getInteger(r3)
            com.applovin.exoplayer2.v$a r7 = r0.l(r7)
            com.applovin.exoplayer2.v r7 = r7.a()
            boolean r0 = r5.f1572f
            if (r0 == 0) goto L98
            int r0 = r7.y
            r3 = 6
            if (r0 != r3) goto L98
            int r0 = r6.y
            if (r0 >= r3) goto L98
            int r0 = r6.y
            int[] r2 = new int[r0]
            r0 = r1
        L8f:
            int r3 = r6.y
            if (r0 >= r3) goto L98
            r2[r0] = r0
            int r0 = r0 + 1
            goto L8f
        L98:
            r6 = r7
        L99:
            com.applovin.exoplayer2.b.h r7 = r5.f1570d     // Catch: com.applovin.exoplayer2.b.h.a -> L9f
            r7.a(r6, r1, r2)     // Catch: com.applovin.exoplayer2.b.h.a -> L9f
            return
        L9f:
            r6 = move-exception
            com.applovin.exoplayer2.v r7 = r6.f1491a
            r0 = 5001(0x1389, float:7.008E-42)
            com.applovin.exoplayer2.p r6 = r5.a(r6, r7, r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.b.q.a(com.applovin.exoplayer2.v, android.media.MediaFormat):void");
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(Exception exc) {
        com.applovin.exoplayer2.l.q.c("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.f1569c.b(exc);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(String str) {
        this.f1569c.a(str);
    }

    @Override // com.applovin.exoplayer2.f.j
    protected void a(String str, long j, long j2) {
        this.f1569c.a(str, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void a(boolean z, boolean z2) throws com.applovin.exoplayer2.p {
        super.a(z, z2);
        this.f1569c.a(this.f2809a);
        if (v().f1395b) {
            this.f1570d.g();
        } else {
            this.f1570d.h();
        }
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean a(long j, long j2, com.applovin.exoplayer2.f.g gVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.applovin.exoplayer2.v vVar) throws com.applovin.exoplayer2.p {
        com.applovin.exoplayer2.l.a.b(byteBuffer);
        if (this.f1573g != null && (i2 & 2) != 0) {
            ((com.applovin.exoplayer2.f.g) com.applovin.exoplayer2.l.a.b(gVar)).a(i, false);
            return true;
        } else if (z) {
            if (gVar != null) {
                gVar.a(i, false);
            }
            this.f2809a.f1671f += i3;
            this.f1570d.b();
            return true;
        } else {
            try {
                if (this.f1570d.a(byteBuffer, j3, i3)) {
                    if (gVar != null) {
                        gVar.a(i, false);
                    }
                    this.f2809a.f1670e += i3;
                    return true;
                }
                return false;
            } catch (h.b e2) {
                throw a(e2, e2.f1494c, e2.f1493b, 5001);
            } catch (h.e e3) {
                throw a(e3, vVar, e3.f1498b, 5002);
            }
        }
    }

    @Override // com.applovin.exoplayer2.f.j
    protected boolean b(com.applovin.exoplayer2.v vVar) {
        return this.f1570d.a(vVar);
    }

    @Override // com.applovin.exoplayer2.e, com.applovin.exoplayer2.ar
    public com.applovin.exoplayer2.l.s c() {
        return this;
    }

    @Override // com.applovin.exoplayer2.l.s
    public long c_() {
        if (d_() == 2) {
            R();
        }
        return this.f1574h;
    }

    @Override // com.applovin.exoplayer2.l.s
    public am d() {
        return this.f1570d.f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void p() {
        super.p();
        this.f1570d.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void q() {
        R();
        this.f1570d.i();
        super.q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void r() {
        this.k = true;
        try {
            this.f1570d.j();
            try {
                super.r();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.r();
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.e
    public void s() {
        try {
            super.s();
        } finally {
            if (this.k) {
                this.k = false;
                this.f1570d.l();
            }
        }
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String y() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.applovin.exoplayer2.f.j, com.applovin.exoplayer2.ar
    public boolean z() {
        return this.f1570d.e() || super.z();
    }
}
