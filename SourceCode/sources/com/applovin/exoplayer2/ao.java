package com.applovin.exoplayer2;

import android.os.Looper;
import com.google.android.exoplayer2.C;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class ao {

    /* renamed from: a  reason: collision with root package name */
    private final b f1379a;

    /* renamed from: b  reason: collision with root package name */
    private final a f1380b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.exoplayer2.l.d f1381c;

    /* renamed from: d  reason: collision with root package name */
    private final ba f1382d;

    /* renamed from: e  reason: collision with root package name */
    private int f1383e;

    /* renamed from: f  reason: collision with root package name */
    private Object f1384f;

    /* renamed from: g  reason: collision with root package name */
    private Looper f1385g;

    /* renamed from: h  reason: collision with root package name */
    private int f1386h;
    private long i = C.TIME_UNSET;
    private boolean j = true;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;

    /* loaded from: classes.dex */
    public interface a {
        void a(ao aoVar);
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i, Object obj) throws p;
    }

    public ao(a aVar, b bVar, ba baVar, int i, com.applovin.exoplayer2.l.d dVar, Looper looper) {
        this.f1380b = aVar;
        this.f1379a = bVar;
        this.f1382d = baVar;
        this.f1385g = looper;
        this.f1381c = dVar;
        this.f1386h = i;
    }

    public ao a(int i) {
        com.applovin.exoplayer2.l.a.b(!this.k);
        this.f1383e = i;
        return this;
    }

    public ao a(Object obj) {
        com.applovin.exoplayer2.l.a.b(!this.k);
        this.f1384f = obj;
        return this;
    }

    public ba a() {
        return this.f1382d;
    }

    public synchronized void a(boolean z) {
        this.l = z | this.l;
        this.m = true;
        notifyAll();
    }

    public synchronized boolean a(long j) throws InterruptedException, TimeoutException {
        boolean z;
        com.applovin.exoplayer2.l.a.b(this.k);
        com.applovin.exoplayer2.l.a.b(this.f1385g.getThread() != Thread.currentThread());
        long a2 = this.f1381c.a() + j;
        while (true) {
            z = this.m;
            if (z || j <= 0) {
                break;
            }
            this.f1381c.c();
            wait(j);
            j = a2 - this.f1381c.a();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.l;
    }

    public b b() {
        return this.f1379a;
    }

    public int c() {
        return this.f1383e;
    }

    public Object d() {
        return this.f1384f;
    }

    public Looper e() {
        return this.f1385g;
    }

    public long f() {
        return this.i;
    }

    public int g() {
        return this.f1386h;
    }

    public boolean h() {
        return this.j;
    }

    public ao i() {
        com.applovin.exoplayer2.l.a.b(!this.k);
        if (this.i == C.TIME_UNSET) {
            com.applovin.exoplayer2.l.a.a(this.j);
        }
        this.k = true;
        this.f1380b.a(this);
        return this;
    }

    public synchronized boolean j() {
        return this.n;
    }
}
