package com.applovin.exoplayer2.g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.applovin.exoplayer2.w;
import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class f extends com.applovin.exoplayer2.e implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final c f2914a;

    /* renamed from: b  reason: collision with root package name */
    private final e f2915b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f2916c;

    /* renamed from: d  reason: collision with root package name */
    private final d f2917d;

    /* renamed from: e  reason: collision with root package name */
    private b f2918e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2919f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2920g;

    /* renamed from: h  reason: collision with root package name */
    private long f2921h;
    private long i;
    private a j;

    public f(e eVar, Looper looper) {
        this(eVar, looper, c.f2847a);
    }

    public f(e eVar, Looper looper, c cVar) {
        super(5);
        this.f2915b = (e) com.applovin.exoplayer2.l.a.b(eVar);
        this.f2916c = looper == null ? null : ai.a(looper, (Handler.Callback) this);
        this.f2914a = (c) com.applovin.exoplayer2.l.a.b(cVar);
        this.f2917d = new d();
        this.i = C.TIME_UNSET;
    }

    private void B() {
        if (this.f2919f || this.j != null) {
            return;
        }
        this.f2917d.a();
        w t = t();
        int a2 = a(t, this.f2917d, 0);
        if (a2 != -4) {
            if (a2 == -5) {
                this.f2921h = ((v) com.applovin.exoplayer2.l.a.b(t.f4195b)).p;
            }
        } else if (this.f2917d.c()) {
            this.f2919f = true;
        } else {
            this.f2917d.f2858f = this.f2921h;
            this.f2917d.h();
            a a3 = ((b) ai.a(this.f2918e)).a(this.f2917d);
            if (a3 != null) {
                ArrayList arrayList = new ArrayList(a3.a());
                a(a3, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                this.j = new a(arrayList);
                this.i = this.f2917d.f1677d;
            }
        }
    }

    private void a(a aVar) {
        Handler handler = this.f2916c;
        if (handler != null) {
            handler.obtainMessage(0, aVar).sendToTarget();
        } else {
            b(aVar);
        }
    }

    private void a(a aVar, List<a.InterfaceC0042a> list) {
        for (int i = 0; i < aVar.a(); i++) {
            v a2 = aVar.a(i).a();
            if (a2 == null || !this.f2914a.a(a2)) {
                list.add(aVar.a(i));
            } else {
                b b2 = this.f2914a.b(a2);
                byte[] bArr = (byte[]) com.applovin.exoplayer2.l.a.b(aVar.a(i).b());
                this.f2917d.a();
                this.f2917d.f(bArr.length);
                ((ByteBuffer) ai.a(this.f2917d.f1675b)).put(bArr);
                this.f2917d.h();
                a a3 = b2.a(this.f2917d);
                if (a3 != null) {
                    a(a3, list);
                }
            }
        }
    }

    private void b(a aVar) {
        this.f2915b.a(aVar);
    }

    private boolean c(long j) {
        boolean z;
        a aVar = this.j;
        if (aVar == null || this.i > j) {
            z = false;
        } else {
            a(aVar);
            this.j = null;
            this.i = C.TIME_UNSET;
            z = true;
        }
        if (this.f2919f && this.j == null) {
            this.f2920g = true;
        }
        return z;
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean A() {
        return this.f2920g;
    }

    @Override // com.applovin.exoplayer2.as
    public int a(v vVar) {
        if (this.f2914a.a(vVar)) {
            return as.b(vVar.E == 0 ? 4 : 2);
        }
        return as.b(0);
    }

    @Override // com.applovin.exoplayer2.ar
    public void a(long j, long j2) {
        boolean z = true;
        while (z) {
            B();
            z = c(j);
        }
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(long j, boolean z) {
        this.j = null;
        this.i = C.TIME_UNSET;
        this.f2919f = false;
        this.f2920g = false;
    }

    @Override // com.applovin.exoplayer2.e
    protected void a(v[] vVarArr, long j, long j2) {
        this.f2918e = this.f2914a.b(vVarArr[0]);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b((a) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.e
    protected void r() {
        this.j = null;
        this.i = C.TIME_UNSET;
        this.f2918e = null;
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public String y() {
        return "MetadataRenderer";
    }

    @Override // com.applovin.exoplayer2.ar
    public boolean z() {
        return true;
    }
}
