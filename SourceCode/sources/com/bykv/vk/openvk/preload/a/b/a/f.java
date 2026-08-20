package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: JsonTreeWriter.java */
/* loaded from: classes2.dex */
public final class f extends com.bykv.vk.openvk.preload.a.d.c {

    /* renamed from: f  reason: collision with root package name */
    private static final Writer f8181f = new Writer() { // from class: com.bykv.vk.openvk.preload.a.b.a.f.1
        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private static final p f8182g = new p("closed");

    /* renamed from: a  reason: collision with root package name */
    public final List<com.bykv.vk.openvk.preload.a.k> f8183a;

    /* renamed from: b  reason: collision with root package name */
    public com.bykv.vk.openvk.preload.a.k f8184b;

    /* renamed from: h  reason: collision with root package name */
    private String f8185h;

    @Override // com.bykv.vk.openvk.preload.a.d.c, java.io.Flushable
    public final void flush() throws IOException {
    }

    public f() {
        super(f8181f);
        this.f8183a = new ArrayList();
        this.f8184b = com.bykv.vk.openvk.preload.a.m.f8393a;
    }

    private com.bykv.vk.openvk.preload.a.k f() {
        List<com.bykv.vk.openvk.preload.a.k> list = this.f8183a;
        return list.get(list.size() - 1);
    }

    private void a(com.bykv.vk.openvk.preload.a.k kVar) {
        if (this.f8185h == null) {
            if (this.f8183a.isEmpty()) {
                this.f8184b = kVar;
                return;
            }
            com.bykv.vk.openvk.preload.a.k f2 = f();
            if (f2 instanceof com.bykv.vk.openvk.preload.a.i) {
                ((com.bykv.vk.openvk.preload.a.i) f2).a(kVar);
                return;
            }
            throw new IllegalStateException();
        }
        if (!(kVar instanceof com.bykv.vk.openvk.preload.a.m) || this.f8367e) {
            ((com.bykv.vk.openvk.preload.a.n) f()).a(this.f8185h, kVar);
        }
        this.f8185h = null;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c a() throws IOException {
        com.bykv.vk.openvk.preload.a.i iVar = new com.bykv.vk.openvk.preload.a.i();
        a(iVar);
        this.f8183a.add(iVar);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c b() throws IOException {
        if (this.f8183a.isEmpty() || this.f8185h != null) {
            throw new IllegalStateException();
        }
        if (f() instanceof com.bykv.vk.openvk.preload.a.i) {
            List<com.bykv.vk.openvk.preload.a.k> list = this.f8183a;
            list.remove(list.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c c() throws IOException {
        com.bykv.vk.openvk.preload.a.n nVar = new com.bykv.vk.openvk.preload.a.n();
        a(nVar);
        this.f8183a.add(nVar);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c d() throws IOException {
        if (this.f8183a.isEmpty() || this.f8185h != null) {
            throw new IllegalStateException();
        }
        if (f() instanceof com.bykv.vk.openvk.preload.a.n) {
            List<com.bykv.vk.openvk.preload.a.k> list = this.f8183a;
            list.remove(list.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f8183a.isEmpty() || this.f8185h != null) {
            throw new IllegalStateException();
        }
        if (f() instanceof com.bykv.vk.openvk.preload.a.n) {
            this.f8185h = str;
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c b(String str) throws IOException {
        if (str == null) {
            return e();
        }
        a(new p(str));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c e() throws IOException {
        a(com.bykv.vk.openvk.preload.a.m.f8393a);
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c a(boolean z) throws IOException {
        a(new p(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c a(Boolean bool) throws IOException {
        if (bool == null) {
            return e();
        }
        a(new p(bool));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c a(long j) throws IOException {
        a(new p(Long.valueOf(j)));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c
    public final com.bykv.vk.openvk.preload.a.d.c a(Number number) throws IOException {
        if (number == null) {
            return e();
        }
        if (!this.f8365c) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        a(new p(number));
        return this;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f8183a.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f8183a.add(f8182g);
    }
}
