package com.applovin.exoplayer2.common.base;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.Serializable;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public abstract class Converter<A, B> implements Function<A, B> {
    private final boolean handleNullAutomatically;
    @LazyInit
    @MonotonicNonNullDecl
    private transient Converter<B, A> reverse;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a<A, B, C> extends Converter<A, C> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Converter<A, B> f1912a;

        /* renamed from: b  reason: collision with root package name */
        final Converter<B, C> f1913b;

        a(Converter<A, B> converter, Converter<B, C> converter2) {
            this.f1912a = converter;
            this.f1913b = converter2;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        A correctedDoBackward(@NullableDecl C c2) {
            return this.f1912a.correctedDoBackward(this.f1913b.correctedDoBackward(c2));
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        C correctedDoForward(@NullableDecl A a2) {
            return this.f1913b.correctedDoForward(this.f1912a.correctedDoForward(a2));
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected A doBackward(C c2) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected C doForward(A a2) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f1912a.equals(aVar.f1912a) && this.f1913b.equals(aVar.f1913b);
            }
            return false;
        }

        public int hashCode() {
            return (this.f1912a.hashCode() * 31) + this.f1913b.hashCode();
        }

        public String toString() {
            return this.f1912a + ".andThen(" + this.f1913b + ")";
        }
    }

    /* loaded from: classes.dex */
    private static final class b<A, B> extends Converter<A, B> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Function<? super A, ? extends B> f1914a;

        /* renamed from: b  reason: collision with root package name */
        private final Function<? super B, ? extends A> f1915b;

        private b(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
            this.f1914a = (Function) Preconditions.checkNotNull(function);
            this.f1915b = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected A doBackward(B b2) {
            return this.f1915b.apply(b2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected B doForward(A a2) {
            return this.f1914a.apply(a2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f1914a.equals(bVar.f1914a) && this.f1915b.equals(bVar.f1915b);
            }
            return false;
        }

        public int hashCode() {
            return (this.f1914a.hashCode() * 31) + this.f1915b.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.f1914a + ", " + this.f1915b + ")";
        }
    }

    /* loaded from: classes.dex */
    private static final class c<T> extends Converter<T, T> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final c f1916a = new c();

        private c() {
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        /* renamed from: a */
        public c<T> reverse() {
            return this;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        <S> Converter<T, S> doAndThen(Converter<T, S> converter) {
            return (Converter) Preconditions.checkNotNull(converter, "otherConverter");
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected T doBackward(T t) {
            return t;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected T doForward(T t) {
            return t;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    /* loaded from: classes.dex */
    private static final class d<A, B> extends Converter<B, A> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Converter<A, B> f1917a;

        d(Converter<A, B> converter) {
            this.f1917a = converter;
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        B correctedDoBackward(@NullableDecl A a2) {
            return this.f1917a.correctedDoForward(a2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        @NullableDecl
        A correctedDoForward(@NullableDecl B b2) {
            return this.f1917a.correctedDoBackward(b2);
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected B doBackward(A a2) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        protected A doForward(B b2) {
            throw new AssertionError();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter, com.applovin.exoplayer2.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof d) {
                return this.f1917a.equals(((d) obj).f1917a);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f1917a.hashCode();
        }

        @Override // com.applovin.exoplayer2.common.base.Converter
        public Converter<A, B> reverse() {
            return this.f1917a;
        }

        public String toString() {
            return this.f1917a + ".reverse()";
        }
    }

    protected Converter() {
        this(true);
    }

    Converter(boolean z) {
        this.handleNullAutomatically = z;
    }

    public static <A, B> Converter<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new b(function, function2);
    }

    public static <T> Converter<T, T> identity() {
        return c.f1916a;
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return doAndThen(converter);
    }

    @Override // com.applovin.exoplayer2.common.base.Function
    @NullableDecl
    @Deprecated
    public final B apply(@NullableDecl A a2) {
        return convert(a2);
    }

    @NullableDecl
    public final B convert(@NullableDecl A a2) {
        return correctedDoForward(a2);
    }

    public Iterable<B> convertAll(final Iterable<? extends A> iterable) {
        Preconditions.checkNotNull(iterable, "fromIterable");
        return new Iterable<B>() { // from class: com.applovin.exoplayer2.common.base.Converter.1
            @Override // java.lang.Iterable
            public Iterator<B> iterator() {
                return new Iterator<B>() { // from class: com.applovin.exoplayer2.common.base.Converter.1.1

                    /* renamed from: b  reason: collision with root package name */
                    private final Iterator<? extends A> f1911b;

                    {
                        this.f1911b = iterable.iterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.f1911b.hasNext();
                    }

                    @Override // java.util.Iterator
                    public B next() {
                        return (B) Converter.this.convert(this.f1911b.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        this.f1911b.remove();
                    }
                };
            }
        };
    }

    @NullableDecl
    A correctedDoBackward(@NullableDecl B b2) {
        if (this.handleNullAutomatically) {
            if (b2 == null) {
                return null;
            }
            return (A) Preconditions.checkNotNull(doBackward(b2));
        }
        return doBackward(b2);
    }

    @NullableDecl
    B correctedDoForward(@NullableDecl A a2) {
        if (this.handleNullAutomatically) {
            if (a2 == null) {
                return null;
            }
            return (B) Preconditions.checkNotNull(doForward(a2));
        }
        return doForward(a2);
    }

    <C> Converter<A, C> doAndThen(Converter<B, C> converter) {
        return new a(this, (Converter) Preconditions.checkNotNull(converter));
    }

    protected abstract A doBackward(B b2);

    protected abstract B doForward(A a2);

    @Override // com.applovin.exoplayer2.common.base.Function
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.reverse;
        if (converter == null) {
            d dVar = new d(this);
            this.reverse = dVar;
            return dVar;
        }
        return converter;
    }
}
