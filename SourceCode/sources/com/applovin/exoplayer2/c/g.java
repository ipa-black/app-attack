package com.applovin.exoplayer2.c;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class g extends com.applovin.exoplayer2.c.a {

    /* renamed from: a  reason: collision with root package name */
    public final c f1674a;

    /* renamed from: b  reason: collision with root package name */
    public ByteBuffer f1675b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1676c;

    /* renamed from: d  reason: collision with root package name */
    public long f1677d;

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f1678e;

    /* renamed from: f  reason: collision with root package name */
    private final int f1679f;

    /* renamed from: g  reason: collision with root package name */
    private final int f1680g;

    /* loaded from: classes.dex */
    public static final class a extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        public final int f1681a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1682b;

        public a(int i, int i2) {
            super("Buffer too small (" + i + " < " + i2 + ")");
            this.f1681a = i;
            this.f1682b = i2;
        }
    }

    public g(int i) {
        this(i, 0);
    }

    public g(int i, int i2) {
        this.f1674a = new c();
        this.f1679f = i;
        this.f1680g = i2;
    }

    public static g f() {
        return new g(0);
    }

    private ByteBuffer g(int i) {
        int i2 = this.f1679f;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f1675b;
        throw new a(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    @Override // com.applovin.exoplayer2.c.a
    public void a() {
        super.a();
        ByteBuffer byteBuffer = this.f1675b;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f1678e;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f1676c = false;
    }

    public void e(int i) {
        ByteBuffer byteBuffer = this.f1678e;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.f1678e = ByteBuffer.allocate(i);
        } else {
            this.f1678e.clear();
        }
    }

    public void f(int i) {
        int i2 = i + this.f1680g;
        ByteBuffer byteBuffer = this.f1675b;
        if (byteBuffer == null) {
            this.f1675b = g(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i3 = i2 + position;
        if (capacity >= i3) {
            this.f1675b = byteBuffer;
            return;
        }
        ByteBuffer g2 = g(i3);
        g2.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            g2.put(byteBuffer);
        }
        this.f1675b = g2;
    }

    public final boolean g() {
        return d(1073741824);
    }

    public final void h() {
        ByteBuffer byteBuffer = this.f1675b;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f1678e;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
