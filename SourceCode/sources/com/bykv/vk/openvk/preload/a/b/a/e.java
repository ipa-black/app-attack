package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
/* compiled from: JsonTreeReader.java */
/* loaded from: classes2.dex */
public final class e extends com.bykv.vk.openvk.preload.a.d.a {

    /* renamed from: c  reason: collision with root package name */
    private static final Reader f8175c = new Reader() { // from class: com.bykv.vk.openvk.preload.a.b.a.e.1
        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final Object f8176d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private Object[] f8177e;

    /* renamed from: f  reason: collision with root package name */
    private int f8178f;

    /* renamed from: g  reason: collision with root package name */
    private String[] f8179g;

    /* renamed from: h  reason: collision with root package name */
    private int[] f8180h;

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void a() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY);
        a(((com.bykv.vk.openvk.preload.a.i) g()).iterator());
        this.f8180h[this.f8178f - 1] = 0;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void b() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.END_ARRAY);
        s();
        s();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void c() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT);
        a(((com.bykv.vk.openvk.preload.a.n) g()).f8394a.entrySet().iterator());
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void d() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.END_OBJECT);
        s();
        s();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final boolean e() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b f2 = f();
        return (f2 == com.bykv.vk.openvk.preload.a.d.b.END_OBJECT || f2 == com.bykv.vk.openvk.preload.a.d.b.END_ARRAY) ? false : true;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final com.bykv.vk.openvk.preload.a.d.b f() throws IOException {
        while (this.f8178f != 0) {
            Object g2 = g();
            if (g2 instanceof Iterator) {
                boolean z = this.f8177e[this.f8178f - 2] instanceof com.bykv.vk.openvk.preload.a.n;
                Iterator it = (Iterator) g2;
                if (!it.hasNext()) {
                    return z ? com.bykv.vk.openvk.preload.a.d.b.END_OBJECT : com.bykv.vk.openvk.preload.a.d.b.END_ARRAY;
                } else if (z) {
                    return com.bykv.vk.openvk.preload.a.d.b.NAME;
                } else {
                    a(it.next());
                }
            } else if (g2 instanceof com.bykv.vk.openvk.preload.a.n) {
                return com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT;
            } else {
                if (g2 instanceof com.bykv.vk.openvk.preload.a.i) {
                    return com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY;
                }
                if (g2 instanceof p) {
                    p pVar = (p) g2;
                    if (pVar.f8395a instanceof String) {
                        return com.bykv.vk.openvk.preload.a.d.b.STRING;
                    }
                    if (pVar.f8395a instanceof Boolean) {
                        return com.bykv.vk.openvk.preload.a.d.b.BOOLEAN;
                    }
                    if (pVar.f8395a instanceof Number) {
                        return com.bykv.vk.openvk.preload.a.d.b.NUMBER;
                    }
                    throw new AssertionError();
                } else if (g2 instanceof com.bykv.vk.openvk.preload.a.m) {
                    return com.bykv.vk.openvk.preload.a.d.b.NULL;
                } else {
                    if (g2 == f8176d) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT;
    }

    public final Object g() {
        return this.f8177e[this.f8178f - 1];
    }

    private Object s() {
        Object[] objArr = this.f8177e;
        int i = this.f8178f - 1;
        this.f8178f = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    public final void a(com.bykv.vk.openvk.preload.a.d.b bVar) throws IOException {
        if (f() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + f() + t());
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String h() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) g()).next();
        String str = (String) entry.getKey();
        this.f8179g[this.f8178f - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String i() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b f2 = f();
        if (f2 != com.bykv.vk.openvk.preload.a.d.b.STRING && f2 != com.bykv.vk.openvk.preload.a.d.b.NUMBER) {
            throw new IllegalStateException("Expected " + com.bykv.vk.openvk.preload.a.d.b.STRING + " but was " + f2 + t());
        }
        String b2 = ((p) s()).b();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return b2;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final boolean j() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.BOOLEAN);
        boolean f2 = ((p) s()).f();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return f2;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void k() throws IOException {
        a(com.bykv.vk.openvk.preload.a.d.b.NULL);
        s();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final double l() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b f2 = f();
        if (f2 != com.bykv.vk.openvk.preload.a.d.b.NUMBER && f2 != com.bykv.vk.openvk.preload.a.d.b.STRING) {
            throw new IllegalStateException("Expected " + com.bykv.vk.openvk.preload.a.d.b.NUMBER + " but was " + f2 + t());
        }
        double c2 = ((p) g()).c();
        if (!this.f8347a && (Double.isNaN(c2) || Double.isInfinite(c2))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(c2)));
        }
        s();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return c2;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final long m() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b f2 = f();
        if (f2 != com.bykv.vk.openvk.preload.a.d.b.NUMBER && f2 != com.bykv.vk.openvk.preload.a.d.b.STRING) {
            throw new IllegalStateException("Expected " + com.bykv.vk.openvk.preload.a.d.b.NUMBER + " but was " + f2 + t());
        }
        long d2 = ((p) g()).d();
        s();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return d2;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final int n() throws IOException {
        com.bykv.vk.openvk.preload.a.d.b f2 = f();
        if (f2 != com.bykv.vk.openvk.preload.a.d.b.NUMBER && f2 != com.bykv.vk.openvk.preload.a.d.b.STRING) {
            throw new IllegalStateException("Expected " + com.bykv.vk.openvk.preload.a.d.b.NUMBER + " but was " + f2 + t());
        }
        int e2 = ((p) g()).e();
        s();
        int i = this.f8178f;
        if (i > 0) {
            int[] iArr = this.f8180h;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return e2;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f8177e = new Object[]{f8176d};
        this.f8178f = 1;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final void o() throws IOException {
        if (f() == com.bykv.vk.openvk.preload.a.d.b.NAME) {
            h();
            this.f8179g[this.f8178f - 2] = "null";
        } else {
            s();
            int i = this.f8178f;
            if (i > 0) {
                this.f8179g[i - 1] = "null";
            }
        }
        int i2 = this.f8178f;
        if (i2 > 0) {
            int[] iArr = this.f8180h;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String toString() {
        return getClass().getSimpleName();
    }

    public final void a(Object obj) {
        int i = this.f8178f;
        Object[] objArr = this.f8177e;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.f8177e = Arrays.copyOf(objArr, i2);
            this.f8180h = Arrays.copyOf(this.f8180h, i2);
            this.f8179g = (String[]) Arrays.copyOf(this.f8179g, i2);
        }
        Object[] objArr2 = this.f8177e;
        int i3 = this.f8178f;
        this.f8178f = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // com.bykv.vk.openvk.preload.a.d.a
    public final String p() {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (i < this.f8178f) {
            Object[] objArr = this.f8177e;
            Object obj = objArr[i];
            if (obj instanceof com.bykv.vk.openvk.preload.a.i) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[').append(this.f8180h[i]).append(']');
                }
            } else if (obj instanceof com.bykv.vk.openvk.preload.a.n) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('.');
                    String str = this.f8179g[i];
                    if (str != null) {
                        sb.append(str);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    private String t() {
        return " at path " + p();
    }
}
