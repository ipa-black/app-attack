package com.bykv.vk.openvk.preload.a.b;

import com.bykv.vk.openvk.preload.a.b.a.n;
import com.bykv.vk.openvk.preload.a.m;
import com.bykv.vk.openvk.preload.a.o;
import com.bykv.vk.openvk.preload.a.r;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* compiled from: Streams.java */
/* loaded from: classes2.dex */
public final class k {
    public static com.bykv.vk.openvk.preload.a.k a(com.bykv.vk.openvk.preload.a.d.a aVar) throws o {
        boolean z;
        try {
            try {
                aVar.f();
                z = false;
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            try {
                return n.X.a(aVar);
            } catch (EOFException e3) {
                e = e3;
                if (z) {
                    return m.f8393a;
                }
                throw new r(e);
            }
        } catch (com.bykv.vk.openvk.preload.a.d.d e4) {
            throw new r(e4);
        } catch (IOException e5) {
            throw new com.bykv.vk.openvk.preload.a.l(e5);
        } catch (NumberFormatException e6) {
            throw new r(e6);
        }
    }

    public static void a(com.bykv.vk.openvk.preload.a.k kVar, com.bykv.vk.openvk.preload.a.d.c cVar) throws IOException {
        n.X.a(cVar, kVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    /* compiled from: Streams.java */
    /* loaded from: classes2.dex */
    static final class a extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f8328a;

        /* renamed from: b  reason: collision with root package name */
        private final C0169a f8329b = new C0169a();

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        a(Appendable appendable) {
            this.f8328a = appendable;
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            this.f8329b.f8330a = cArr;
            this.f8328a.append(this.f8329b, i, i2 + i);
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.f8328a.append((char) i);
        }

        /* compiled from: Streams.java */
        /* renamed from: com.bykv.vk.openvk.preload.a.b.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static class C0169a implements CharSequence {

            /* renamed from: a  reason: collision with root package name */
            char[] f8330a;

            C0169a() {
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.f8330a.length;
            }

            @Override // java.lang.CharSequence
            public final char charAt(int i) {
                return this.f8330a[i];
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i, int i2) {
                return new String(this.f8330a, i, i2 - i);
            }
        }
    }
}
