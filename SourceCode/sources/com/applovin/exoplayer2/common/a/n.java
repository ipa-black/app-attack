package com.applovin.exoplayer2.common.a;

import java.util.Comparator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static final n f1827a = new n() { // from class: com.applovin.exoplayer2.common.a.n.1
        n a(int i) {
            return i < 0 ? n.f1828b : i > 0 ? n.f1829c : n.f1827a;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n a(int i, int i2) {
            return a(com.applovin.exoplayer2.common.b.c.a(i, i2));
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n a(long j, long j2) {
            return a(com.applovin.exoplayer2.common.b.d.a(j, j2));
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public <T> n a(@NullableDecl T t, @NullableDecl T t2, Comparator<T> comparator) {
            return a(comparator.compare(t, t2));
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n a(boolean z, boolean z2) {
            return a(com.applovin.exoplayer2.common.b.a.a(z2, z));
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public int b() {
            return 0;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n b(boolean z, boolean z2) {
            return a(com.applovin.exoplayer2.common.b.a.a(z, z2));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final n f1828b = new a(-1);

    /* renamed from: c  reason: collision with root package name */
    private static final n f1829c = new a(1);

    /* loaded from: classes.dex */
    private static final class a extends n {

        /* renamed from: a  reason: collision with root package name */
        final int f1830a;

        a(int i) {
            super();
            this.f1830a = i;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n a(int i, int i2) {
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n a(long j, long j2) {
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public <T> n a(@NullableDecl T t, @NullableDecl T t2, @NullableDecl Comparator<T> comparator) {
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n a(boolean z, boolean z2) {
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public int b() {
            return this.f1830a;
        }

        @Override // com.applovin.exoplayer2.common.a.n
        public n b(boolean z, boolean z2) {
            return this;
        }
    }

    private n() {
    }

    public static n a() {
        return f1827a;
    }

    public abstract n a(int i, int i2);

    public abstract n a(long j, long j2);

    public abstract <T> n a(@NullableDecl T t, @NullableDecl T t2, Comparator<T> comparator);

    public abstract n a(boolean z, boolean z2);

    public abstract int b();

    public abstract n b(boolean z, boolean z2);
}
