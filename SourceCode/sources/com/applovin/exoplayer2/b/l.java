package com.applovin.exoplayer2.b;

import com.applovin.exoplayer2.b.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public abstract class l implements f {

    /* renamed from: h  reason: collision with root package name */
    private boolean f1527h;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f1525f = f1483a;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f1526g = f1483a;

    /* renamed from: d  reason: collision with root package name */
    private f.a f1523d = f.a.f1484a;

    /* renamed from: e  reason: collision with root package name */
    private f.a f1524e = f.a.f1484a;

    /* renamed from: b  reason: collision with root package name */
    protected f.a f1521b = f.a.f1484a;

    /* renamed from: c  reason: collision with root package name */
    protected f.a f1522c = f.a.f1484a;

    @Override // com.applovin.exoplayer2.b.f
    public final f.a a(f.a aVar) throws f.b {
        this.f1523d = aVar;
        this.f1524e = b(aVar);
        return a() ? this.f1524e : f.a.f1484a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer a(int i) {
        if (this.f1525f.capacity() < i) {
            this.f1525f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f1525f.clear();
        }
        ByteBuffer byteBuffer = this.f1525f;
        this.f1526g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean a() {
        return this.f1524e != f.a.f1484a;
    }

    protected f.a b(f.a aVar) throws f.b {
        return f.a.f1484a;
    }

    @Override // com.applovin.exoplayer2.b.f
    public final void b() {
        this.f1527h = true;
        h();
    }

    @Override // com.applovin.exoplayer2.b.f
    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.f1526g;
        this.f1526g = f1483a;
        return byteBuffer;
    }

    @Override // com.applovin.exoplayer2.b.f
    public boolean d() {
        return this.f1527h && this.f1526g == f1483a;
    }

    @Override // com.applovin.exoplayer2.b.f
    public final void e() {
        this.f1526g = f1483a;
        this.f1527h = false;
        this.f1521b = this.f1523d;
        this.f1522c = this.f1524e;
        i();
    }

    @Override // com.applovin.exoplayer2.b.f
    public final void f() {
        e();
        this.f1525f = f1483a;
        this.f1523d = f.a.f1484a;
        this.f1524e = f.a.f1484a;
        this.f1521b = f.a.f1484a;
        this.f1522c = f.a.f1484a;
        j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean g() {
        return this.f1526g.hasRemaining();
    }

    protected void h() {
    }

    protected void i() {
    }

    protected void j() {
    }
}
