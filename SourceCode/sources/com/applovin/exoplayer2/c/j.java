package com.applovin.exoplayer2.c;

import com.applovin.exoplayer2.c.f;
import com.applovin.exoplayer2.c.g;
import com.applovin.exoplayer2.c.i;
import java.util.ArrayDeque;
/* loaded from: classes.dex */
public abstract class j<I extends g, O extends i, E extends f> implements d<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f1690a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f1691b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f1692c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f1693d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    private final I[] f1694e;

    /* renamed from: f  reason: collision with root package name */
    private final O[] f1695f;

    /* renamed from: g  reason: collision with root package name */
    private int f1696g;

    /* renamed from: h  reason: collision with root package name */
    private int f1697h;
    private I i;
    private E j;
    private boolean k;
    private boolean l;
    private int m;

    /* JADX INFO: Access modifiers changed from: protected */
    public j(I[] iArr, O[] oArr) {
        this.f1694e = iArr;
        this.f1696g = iArr.length;
        for (int i = 0; i < this.f1696g; i++) {
            this.f1694e[i] = g();
        }
        this.f1695f = oArr;
        this.f1697h = oArr.length;
        for (int i2 = 0; i2 < this.f1697h; i2++) {
            this.f1695f[i2] = h();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: com.applovin.exoplayer2.c.j.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                j.this.k();
            }
        };
        this.f1690a = thread;
        thread.start();
    }

    private void b(I i) {
        i.a();
        I[] iArr = this.f1694e;
        int i2 = this.f1696g;
        this.f1696g = i2 + 1;
        iArr[i2] = i;
    }

    private void b(O o) {
        o.a();
        O[] oArr = this.f1695f;
        int i = this.f1697h;
        this.f1697h = i + 1;
        oArr[i] = o;
    }

    private void i() throws f {
        E e2 = this.j;
        if (e2 != null) {
            throw e2;
        }
    }

    private void j() {
        if (m()) {
            this.f1691b.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        do {
            try {
            } catch (InterruptedException e2) {
                throw new IllegalStateException(e2);
            }
        } while (l());
    }

    private boolean l() throws InterruptedException {
        E a2;
        synchronized (this.f1691b) {
            while (!this.l && !m()) {
                this.f1691b.wait();
            }
            if (this.l) {
                return false;
            }
            I removeFirst = this.f1692c.removeFirst();
            O[] oArr = this.f1695f;
            int i = this.f1697h - 1;
            this.f1697h = i;
            O o = oArr[i];
            boolean z = this.k;
            this.k = false;
            if (removeFirst.c()) {
                o.b(4);
            } else {
                if (removeFirst.b()) {
                    o.b(Integer.MIN_VALUE);
                }
                try {
                    a2 = a(removeFirst, o, z);
                } catch (OutOfMemoryError | RuntimeException e2) {
                    a2 = a(e2);
                }
                if (a2 != null) {
                    synchronized (this.f1691b) {
                        this.j = a2;
                    }
                    return false;
                }
            }
            synchronized (this.f1691b) {
                if (!this.k) {
                    if (o.b()) {
                        this.m++;
                    } else {
                        o.f1689b = this.m;
                        this.m = 0;
                        this.f1693d.addLast(o);
                        b((j<I, O, E>) removeFirst);
                    }
                }
                o.f();
                b((j<I, O, E>) removeFirst);
            }
            return true;
        }
    }

    private boolean m() {
        return !this.f1692c.isEmpty() && this.f1697h > 0;
    }

    protected abstract E a(I i, O o, boolean z);

    protected abstract E a(Throwable th);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        com.applovin.exoplayer2.l.a.b(this.f1696g == this.f1694e.length);
        for (I i2 : this.f1694e) {
            i2.f(i);
        }
    }

    public final void a(I i) throws f {
        synchronized (this.f1691b) {
            i();
            com.applovin.exoplayer2.l.a.a(i == this.i);
            this.f1692c.addLast(i);
            j();
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(O o) {
        synchronized (this.f1691b) {
            b((j<I, O, E>) o);
            j();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.applovin.exoplayer2.c.d
    public /* bridge */ /* synthetic */ void a(Object obj) throws f {
        a((j<I, O, E>) ((g) obj));
    }

    @Override // com.applovin.exoplayer2.c.d
    public final void c() {
        synchronized (this.f1691b) {
            this.k = true;
            this.m = 0;
            I i = this.i;
            if (i != null) {
                b((j<I, O, E>) i);
                this.i = null;
            }
            while (!this.f1692c.isEmpty()) {
                b((j<I, O, E>) this.f1692c.removeFirst());
            }
            while (!this.f1693d.isEmpty()) {
                this.f1693d.removeFirst().f();
            }
        }
    }

    @Override // com.applovin.exoplayer2.c.d
    public void d() {
        synchronized (this.f1691b) {
            this.l = true;
            this.f1691b.notify();
        }
        try {
            this.f1690a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: e */
    public final I a() throws f {
        I i;
        synchronized (this.f1691b) {
            i();
            com.applovin.exoplayer2.l.a.b(this.i == null);
            int i2 = this.f1696g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.f1694e;
                int i3 = i2 - 1;
                this.f1696g = i3;
                i = iArr[i3];
            }
            this.i = i;
        }
        return i;
    }

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: f */
    public final O b() throws f {
        synchronized (this.f1691b) {
            i();
            if (this.f1693d.isEmpty()) {
                return null;
            }
            return this.f1693d.removeFirst();
        }
    }

    protected abstract I g();

    protected abstract O h();
}
