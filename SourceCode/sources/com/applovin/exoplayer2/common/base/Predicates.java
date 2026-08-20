package com.applovin.exoplayer2.common.base;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public final class Predicates {

    /* loaded from: classes.dex */
    private static class a<T> implements Predicate<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends Predicate<? super T>> f1928a;

        private a(List<? extends Predicate<? super T>> list) {
            this.f1928a = list;
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            for (int i = 0; i < this.f1928a.size(); i++) {
                if (!this.f1928a.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof a) {
                return this.f1928a.equals(((a) obj).f1928a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1928a.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.toStringHelper("and", this.f1928a);
        }
    }

    /* loaded from: classes.dex */
    private static class b<A, B> implements Predicate<A>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Predicate<B> f1929a;

        /* renamed from: b  reason: collision with root package name */
        final Function<A, ? extends B> f1930b;

        private b(Predicate<B> predicate, Function<A, ? extends B> function) {
            this.f1929a = (Predicate) Preconditions.checkNotNull(predicate);
            this.f1930b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(@NullableDecl A a2) {
            return this.f1929a.apply(this.f1930b.apply(a2));
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                return this.f1930b.equals(bVar.f1930b) && this.f1929a.equals(bVar.f1929a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1930b.hashCode() ^ this.f1929a.hashCode();
        }

        public String toString() {
            return this.f1929a + "(" + this.f1930b + ")";
        }
    }

    /* loaded from: classes.dex */
    private static class c<T> implements Predicate<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Collection<?> f1931a;

        private c(Collection<?> collection) {
            this.f1931a = (Collection) Preconditions.checkNotNull(collection);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            try {
                return this.f1931a.contains(t);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return this.f1931a.equals(((c) obj).f1931a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1931a.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.f1931a + ")";
        }
    }

    /* loaded from: classes.dex */
    private static class d implements Predicate<Object>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f1932a;

        private d(Class<?> cls) {
            this.f1932a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(@NullableDecl Object obj) {
            return this.f1932a.isInstance(obj);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            return (obj instanceof d) && this.f1932a == ((d) obj).f1932a;
        }

        public int hashCode() {
            return this.f1932a.hashCode();
        }

        public String toString() {
            return "Predicates.instanceOf(" + this.f1932a.getName() + ")";
        }
    }

    /* loaded from: classes.dex */
    private static class e<T> implements Predicate<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final T f1933a;

        private e(T t) {
            this.f1933a = t;
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(T t) {
            return this.f1933a.equals(t);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                return this.f1933a.equals(((e) obj).f1933a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1933a.hashCode();
        }

        public String toString() {
            return "Predicates.equalTo(" + this.f1933a + ")";
        }
    }

    /* loaded from: classes.dex */
    private static class f<T> implements Predicate<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final Predicate<T> f1934a;

        f(Predicate<T> predicate) {
            this.f1934a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            return !this.f1934a.apply(t);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f1934a.equals(((f) obj).f1934a);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f1934a.hashCode();
        }

        public String toString() {
            return "Predicates.not(" + this.f1934a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum g implements Predicate<Object> {
        ALWAYS_TRUE { // from class: com.applovin.exoplayer2.common.base.Predicates.g.1
            @Override // com.applovin.exoplayer2.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE { // from class: com.applovin.exoplayer2.common.base.Predicates.g.2
            @Override // com.applovin.exoplayer2.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL { // from class: com.applovin.exoplayer2.common.base.Predicates.g.3
            @Override // com.applovin.exoplayer2.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL { // from class: com.applovin.exoplayer2.common.base.Predicates.g.4
            @Override // com.applovin.exoplayer2.common.base.Predicate
            public boolean apply(@NullableDecl Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        };

        <T> Predicate<T> a() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    private static class h<T> implements Predicate<T>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends Predicate<? super T>> f1940a;

        private h(List<? extends Predicate<? super T>> list) {
            this.f1940a = list;
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean apply(@NullableDecl T t) {
            for (int i = 0; i < this.f1940a.size(); i++) {
                if (this.f1940a.get(i).apply(t)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof h) {
                return this.f1940a.equals(((h) obj).f1940a);
            }
            return false;
        }

        public int hashCode() {
            return this.f1940a.hashCode() + 87855567;
        }

        public String toString() {
            return Predicates.toStringHelper("or", this.f1940a);
        }
    }

    /* loaded from: classes.dex */
    private static class i implements Predicate<Class<?>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f1941a;

        private i(Class<?> cls) {
            this.f1941a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        /* renamed from: a */
        public boolean apply(Class<?> cls) {
            return this.f1941a.isAssignableFrom(cls);
        }

        @Override // com.applovin.exoplayer2.common.base.Predicate
        public boolean equals(@NullableDecl Object obj) {
            return (obj instanceof i) && this.f1941a == ((i) obj).f1941a;
        }

        public int hashCode() {
            return this.f1941a.hashCode();
        }

        public String toString() {
            return "Predicates.subtypeOf(" + this.f1941a.getName() + ")";
        }
    }

    private Predicates() {
    }

    public static <T> Predicate<T> alwaysFalse() {
        return g.ALWAYS_FALSE.a();
    }

    public static <T> Predicate<T> alwaysTrue() {
        return g.ALWAYS_TRUE.a();
    }

    public static <T> Predicate<T> and(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new a(asList((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> and(Iterable<? extends Predicate<? super T>> iterable) {
        return new a(defensiveCopy(iterable));
    }

    @SafeVarargs
    public static <T> Predicate<T> and(Predicate<? super T>... predicateArr) {
        return new a(defensiveCopy(predicateArr));
    }

    private static <T> List<Predicate<? super T>> asList(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return Arrays.asList(predicate, predicate2);
    }

    public static <A, B> Predicate<A> compose(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new b(predicate, function);
    }

    static <T> List<T> defensiveCopy(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t : iterable) {
            arrayList.add(Preconditions.checkNotNull(t));
        }
        return arrayList;
    }

    private static <T> List<T> defensiveCopy(T... tArr) {
        return defensiveCopy(Arrays.asList(tArr));
    }

    public static <T> Predicate<T> equalTo(@NullableDecl T t) {
        return t == null ? isNull() : new e(t);
    }

    public static <T> Predicate<T> in(Collection<? extends T> collection) {
        return new c(collection);
    }

    public static Predicate<Object> instanceOf(Class<?> cls) {
        return new d(cls);
    }

    public static <T> Predicate<T> isNull() {
        return g.IS_NULL.a();
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return new f(predicate);
    }

    public static <T> Predicate<T> notNull() {
        return g.NOT_NULL.a();
    }

    public static <T> Predicate<T> or(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new h(asList((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> or(Iterable<? extends Predicate<? super T>> iterable) {
        return new h(defensiveCopy(iterable));
    }

    @SafeVarargs
    public static <T> Predicate<T> or(Predicate<? super T>... predicateArr) {
        return new h(defensiveCopy(predicateArr));
    }

    public static Predicate<Class<?>> subtypeOf(Class<?> cls) {
        return new i(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String toStringHelper(String str, Iterable<?> iterable) {
        StringBuilder append = new StringBuilder("Predicates.").append(str).append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                append.append(',');
            }
            append.append(obj);
            z = false;
        }
        return append.append(')').toString();
    }
}
