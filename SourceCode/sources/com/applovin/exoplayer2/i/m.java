package com.applovin.exoplayer2.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.w;
import com.google.android.exoplayer2.C;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class m extends com.applovin.exoplayer2.e implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3459a;

    /* renamed from: b  reason: collision with root package name */
    private final l f3460b;

    /* renamed from: c  reason: collision with root package name */
    private final i f3461c;

    /* renamed from: d  reason: collision with root package name */
    private final w f3462d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3463e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3464f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3465g;

    /* renamed from: h  reason: collision with root package name */
    private int f3466h;
    private v i;
    private g j;
    private j k;
    private k l;
    private k m;
    private int n;
    private long o;

    public m(l lVar, Looper looper) {
        this(lVar, looper, i.f3411a);
    }

    public m(l lVar, Looper looper, i iVar) {
        super(3);
        this.f3460b = (l) com.applovin.exoplayer2.l.a.b(lVar);
        this.f3459a = looper == null ? null : ai.a(looper, (Handler.Callback) this);
        this.f3461c = iVar;
        this.f3462d = new w();
        this.o = C.TIME_UNSET;
    }

    private void B() {
        this.k = null;
        this.n = -1;
        k kVar = this.l;
        if (kVar != null) {
            kVar.f();
            this.l = null;
        }
        k kVar2 = this.m;
        if (kVar2 != null) {
            kVar2.f();
            this.m = null;
        }
    }

    private void C() {
        B();
        ((g) com.applovin.exoplayer2.l.a.b(this.j)).d();
        this.j = null;
        this.f3466h = 0;
    }

    private void D() {
        this.f3465g = true;
        this.j = this.f3461c.b((v) com.applovin.exoplayer2.l.a.b(this.i));
    }

    private void E() {
        C();
        D();
    }

    private long F() {
        if (this.n == -1) {
            return Long.MAX_VALUE;
        }
        com.applovin.exoplayer2.l.a.b(this.l);
        if (this.n >= this.l.f_()) {
            return Long.MAX_VALUE;
        }
        return this.l.a(this.n);
    }

    private void G() {
        a(Collections.emptyList());
    }

    private void a(h hVar) {
        q.c("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.i, hVar);
        G();
        E();
    }

    private void a(List<a> list) {
        Handler handler = this.f3459a;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            b(list);
        }
    }

    private void b(List<a> list) {
        this.f3460b.a(list);
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean A() {
        return this.f3464f;
    }

    @Override // com.applovin.exoplayer2.as
    public int a(v vVar) {
        if (this.f3461c.a(vVar)) {
            return as.b(vVar.E == 0 ? 4 : 2);
        }
        return as.b(u.c(vVar.l) ? 1 : 0);
    }

    @Override // com.applovin.exoplayer2.ar
    public void a(long j, long j2) {
        boolean z;
        if (j()) {
            long j3 = this.o;
            if (j3 != C.TIME_UNSET && j >= j3) {
                B();
                this.f3464f = true;
            }
        }
        if (this.f3464f) {
            return;
        }
        if (this.m == null) {
            ((g) com.applovin.exoplayer2.l.a.b(this.j)).a(j);
            try {
                this.m = ((g) com.applovin.exoplayer2.l.a.b(this.j)).b();
            } catch (h e2) {
                a(e2);
                return;
            }
        }
        if (d_() != 2) {
            return;
        }
        if (this.l != null) {
            long F = F();
            z = false;
            while (F <= j) {
                this.n++;
                F = F();
                z = true;
            }
        } else {
            z = false;
        }
        k kVar = this.m;
        if (kVar != null) {
            if (kVar.c()) {
                if (!z && F() == Long.MAX_VALUE) {
                    if (this.f3466h == 2) {
                        E();
                    } else {
                        B();
                        this.f3464f = true;
                    }
                }
            } else if (kVar.f1688a <= j) {
                k kVar2 = this.l;
                if (kVar2 != null) {
                    kVar2.f();
                }
                this.n = kVar.a(j);
                this.l = kVar;
                this.m = null;
                z = true;
            }
        }
        if (z) {
            com.applovin.exoplayer2.l.a.b(this.l);
            a(this.l.b(j));
        }
        if (this.f3466h == 2) {
            return;
        }
        while (!this.f3463e) {
            try {
                j jVar = this.k;
                if (jVar == null) {
                    jVar = ((g) com.applovin.exoplayer2.l.a.b(this.j)).a();
                    if (jVar == null) {
                        return;
                    }
                    this.k = jVar;
                }
                if (this.f3466h == 1) {
                    jVar.a_(4);
                    ((g) com.applovin.exoplayer2.l.a.b(this.j)).a((g) jVar);
                    this.k = null;
                    this.f3466h = 2;
                    return;
                }
                int a2 = a(this.f3462d, jVar, 0);
                if (a2 == -4) {
                    if (jVar.c()) {
                        this.f3463e = true;
                        this.f3465g = false;
                    } else {
                        v vVar = this.f3462d.f4195b;
                        if (vVar == null) {
                            return;
                        }
                        jVar.f3456f = vVar.p;
                        jVar.h();
                        this.f3465g &= !jVar.d();
                    }
                    if (!this.f3465g) {
                        ((g) com.applovin.exoplayer2.l.a.b(this.j)).a((g) jVar);
                        this.k = null;
                    }
                } else if (a2 == -3) {
                    return;
                }
            } catch (h e3) {
                a(e3);
                return;
            }
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(long j, boolean z) {
        G();
        this.f3463e = false;
        this.f3464f = false;
        this.o = C.TIME_UNSET;
        if (this.f3466h != 0) {
            E();
            return;
        }
        B();
        ((g) com.applovin.exoplayer2.l.a.b(this.j)).c();
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(v[] vVarArr, long j, long j2) {
        this.i = vVarArr[0];
        if (this.j != null) {
            this.f3466h = 1;
        } else {
            D();
        }
    }

    public void c(long j) {
        com.applovin.exoplayer2.l.a.b(j());
        this.o = j;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.e
    protected void r() {
        this.i = null;
        this.o = C.TIME_UNSET;
        G();
        C();
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String y() {
        return "TextRenderer";
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean z() {
        return true;
    }
}
