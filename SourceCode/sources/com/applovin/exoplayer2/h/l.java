package com.applovin.exoplayer2.h;

import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class l extends e<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final p f3066a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f3067b;

    /* renamed from: c  reason: collision with root package name */
    private final ba.c f3068c;

    /* renamed from: d  reason: collision with root package name */
    private final ba.a f3069d;

    /* renamed from: e  reason: collision with root package name */
    private a f3070e;

    /* renamed from: f  reason: collision with root package name */
    private k f3071f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3072g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f3073h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends h {

        /* renamed from: d  reason: collision with root package name */
        public static final Object f3074d = new Object();

        /* renamed from: e  reason: collision with root package name */
        private final Object f3075e;

        /* renamed from: f  reason: collision with root package name */
        private final Object f3076f;

        private a(ba baVar, Object obj, Object obj2) {
            super(baVar);
            this.f3075e = obj;
            this.f3076f = obj2;
        }

        public static a a(com.applovin.exoplayer2.ab abVar) {
            return new a(new b(abVar), ba.c.f1629a, f3074d);
        }

        public static a a(ba baVar, Object obj, Object obj2) {
            return new a(baVar, obj, obj2);
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public ba.a a(int i, ba.a aVar, boolean z) {
            this.f3044c.a(i, aVar, z);
            if (ai.a(aVar.f1619b, this.f3076f) && z) {
                aVar.f1619b = f3074d;
            }
            return aVar;
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public ba.c a(int i, ba.c cVar, long j) {
            this.f3044c.a(i, cVar, j);
            if (ai.a(cVar.f1630b, this.f3075e)) {
                cVar.f1630b = ba.c.f1629a;
            }
            return cVar;
        }

        public a a(ba baVar) {
            return new a(baVar, this.f3075e, this.f3076f);
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public Object a(int i) {
            Object a2 = this.f3044c.a(i);
            return ai.a(a2, this.f3076f) ? f3074d : a2;
        }

        @Override // com.applovin.exoplayer2.h.h, com.applovin.exoplayer2.ba
        public int c(Object obj) {
            Object obj2;
            ba baVar = this.f3044c;
            if (f3074d.equals(obj) && (obj2 = this.f3076f) != null) {
                obj = obj2;
            }
            return baVar.c(obj);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends ba {

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.exoplayer2.ab f3077c;

        public b(com.applovin.exoplayer2.ab abVar) {
            this.f3077c = abVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public ba.a a(int i, ba.a aVar, boolean z) {
            aVar.a(z ? 0 : null, z ? a.f3074d : null, 0, C.TIME_UNSET, 0L, com.applovin.exoplayer2.h.a.a.f2979a, true);
            return aVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public ba.c a(int i, ba.c cVar, long j) {
            cVar.a(ba.c.f1629a, this.f3077c, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
            cVar.m = true;
            return cVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public Object a(int i) {
            return a.f3074d;
        }

        @Override // com.applovin.exoplayer2.ba
        public int b() {
            return 1;
        }

        @Override // com.applovin.exoplayer2.ba
        public int c() {
            return 1;
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(Object obj) {
            return obj == a.f3074d ? 0 : -1;
        }
    }

    public l(p pVar, boolean z) {
        this.f3066a = pVar;
        this.f3067b = z && pVar.i();
        this.f3068c = new ba.c();
        this.f3069d = new ba.a();
        ba h2 = pVar.h();
        if (h2 == null) {
            this.f3070e = a.a(pVar.g());
            return;
        }
        this.f3070e = a.a(h2, (Object) null, (Object) null);
        this.i = true;
    }

    private Object a(Object obj) {
        return (this.f3070e.f3076f == null || !obj.equals(a.f3074d)) ? obj : this.f3070e.f3076f;
    }

    private void a(long j) {
        k kVar = this.f3071f;
        int c2 = this.f3070e.c(kVar.f3058a.f3085a);
        if (c2 == -1) {
            return;
        }
        long j2 = this.f3070e.a(c2, this.f3069d).f1621d;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        kVar.d(j);
    }

    private Object b(Object obj) {
        return (this.f3070e.f3076f == null || !this.f3070e.f3076f.equals(obj)) ? obj : a.f3074d;
    }

    @Override // com.applovin.exoplayer2.h.p
    /* renamed from: a */
    public k b(p.a aVar, com.applovin.exoplayer2.k.b bVar, long j) {
        k kVar = new k(aVar, bVar, j);
        kVar.a(this.f3066a);
        if (this.f3073h) {
            kVar.a(aVar.a(a(aVar.f3085a)));
        } else {
            this.f3071f = kVar;
            if (!this.f3072g) {
                this.f3072g = true;
                a((l) null, this.f3066a);
            }
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.h.e
    public p.a a(Void r1, p.a aVar) {
        return aVar.a(b(aVar.f3085a));
    }

    @Override // com.applovin.exoplayer2.h.p
    public void a(n nVar) {
        ((k) nVar).i();
        if (nVar == this.f3071f) {
            this.f3071f = null;
        }
    }

    @Override // com.applovin.exoplayer2.h.e, com.applovin.exoplayer2.h.a
    public void a(com.applovin.exoplayer2.k.aa aaVar) {
        super.a(aaVar);
        if (this.f3067b) {
            return;
        }
        this.f3072g = true;
        a((l) null, this.f3066a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.applovin.exoplayer2.h.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.Void r13, com.applovin.exoplayer2.h.p r14, com.applovin.exoplayer2.ba r15) {
        /*
            r12 = this;
            boolean r13 = r12.f3073h
            if (r13 == 0) goto L19
            com.applovin.exoplayer2.h.l$a r13 = r12.f3070e
            com.applovin.exoplayer2.h.l$a r13 = r13.a(r15)
            r12.f3070e = r13
            com.applovin.exoplayer2.h.k r13 = r12.f3071f
            if (r13 == 0) goto Lb0
            long r13 = r13.h()
            r12.a(r13)
            goto Lb0
        L19:
            boolean r13 = r15.d()
            if (r13 == 0) goto L36
            boolean r13 = r12.i
            if (r13 == 0) goto L2a
            com.applovin.exoplayer2.h.l$a r13 = r12.f3070e
            com.applovin.exoplayer2.h.l$a r13 = r13.a(r15)
            goto L32
        L2a:
            java.lang.Object r13 = com.applovin.exoplayer2.ba.c.f1629a
            java.lang.Object r14 = com.applovin.exoplayer2.h.l.a.f3074d
            com.applovin.exoplayer2.h.l$a r13 = com.applovin.exoplayer2.h.l.a.a(r15, r13, r14)
        L32:
            r12.f3070e = r13
            goto Lb0
        L36:
            com.applovin.exoplayer2.ba$c r13 = r12.f3068c
            r14 = 0
            r15.a(r14, r13)
            com.applovin.exoplayer2.ba$c r13 = r12.f3068c
            long r0 = r13.b()
            com.applovin.exoplayer2.ba$c r13 = r12.f3068c
            java.lang.Object r13 = r13.f1630b
            com.applovin.exoplayer2.h.k r2 = r12.f3071f
            if (r2 == 0) goto L74
            long r2 = r2.g()
            com.applovin.exoplayer2.h.l$a r4 = r12.f3070e
            com.applovin.exoplayer2.h.k r5 = r12.f3071f
            com.applovin.exoplayer2.h.p$a r5 = r5.f3058a
            java.lang.Object r5 = r5.f3085a
            com.applovin.exoplayer2.ba$a r6 = r12.f3069d
            r4.a(r5, r6)
            com.applovin.exoplayer2.ba$a r4 = r12.f3069d
            long r4 = r4.c()
            long r4 = r4 + r2
            com.applovin.exoplayer2.h.l$a r2 = r12.f3070e
            com.applovin.exoplayer2.ba$c r3 = r12.f3068c
            com.applovin.exoplayer2.ba$c r14 = r2.a(r14, r3)
            long r2 = r14.b()
            int r14 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r14 == 0) goto L74
            r10 = r4
            goto L75
        L74:
            r10 = r0
        L75:
            com.applovin.exoplayer2.ba$c r7 = r12.f3068c
            com.applovin.exoplayer2.ba$a r8 = r12.f3069d
            r9 = 0
            r6 = r15
            android.util.Pair r14 = r6.a(r7, r8, r9, r10)
            java.lang.Object r0 = r14.first
            java.lang.Object r14 = r14.second
            java.lang.Long r14 = (java.lang.Long) r14
            long r1 = r14.longValue()
            boolean r14 = r12.i
            if (r14 == 0) goto L94
            com.applovin.exoplayer2.h.l$a r13 = r12.f3070e
            com.applovin.exoplayer2.h.l$a r13 = r13.a(r15)
            goto L98
        L94:
            com.applovin.exoplayer2.h.l$a r13 = com.applovin.exoplayer2.h.l.a.a(r15, r13, r0)
        L98:
            r12.f3070e = r13
            com.applovin.exoplayer2.h.k r13 = r12.f3071f
            if (r13 == 0) goto Lb0
            r12.a(r1)
            com.applovin.exoplayer2.h.p$a r14 = r13.f3058a
            com.applovin.exoplayer2.h.p$a r13 = r13.f3058a
            java.lang.Object r13 = r13.f3085a
            java.lang.Object r13 = r12.a(r13)
            com.applovin.exoplayer2.h.p$a r13 = r14.a(r13)
            goto Lb1
        Lb0:
            r13 = 0
        Lb1:
            r14 = 1
            r12.i = r14
            r12.f3073h = r14
            com.applovin.exoplayer2.h.l$a r14 = r12.f3070e
            r12.a(r14)
            if (r13 == 0) goto Lc8
            com.applovin.exoplayer2.h.k r14 = r12.f3071f
            java.lang.Object r14 = com.applovin.exoplayer2.l.a.b(r14)
            com.applovin.exoplayer2.h.k r14 = (com.applovin.exoplayer2.h.k) r14
            r14.a(r13)
        Lc8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.l.a(java.lang.Void, com.applovin.exoplayer2.h.p, com.applovin.exoplayer2.ba):void");
    }

    @Override // com.applovin.exoplayer2.h.e, com.applovin.exoplayer2.h.a
    public void c() {
        this.f3073h = false;
        this.f3072g = false;
        super.c();
    }

    @Override // com.applovin.exoplayer2.h.e, com.applovin.exoplayer2.h.p
    public void e() {
    }

    public ba f() {
        return this.f3070e;
    }

    @Override // com.applovin.exoplayer2.h.p
    public com.applovin.exoplayer2.ab g() {
        return this.f3066a.g();
    }
}
