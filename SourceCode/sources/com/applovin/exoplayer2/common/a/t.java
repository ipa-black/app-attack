package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.u;
import com.applovin.exoplayer2.common.a.v;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes.dex */
public class t<K, V> extends v<K, V> implements z<K, V> {

    /* loaded from: classes.dex */
    public static final class a<K, V> extends v.a<K, V> {
        public a<K, V> a(K k, Iterable<? extends V> iterable) {
            super.b((a<K, V>) k, iterable);
            return this;
        }

        public a<K, V> a(K k, V... vArr) {
            super.b((a<K, V>) k, vArr);
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.v.a
        /* renamed from: a */
        public t<K, V> b() {
            return (t) super.b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.common.a.v.a
        public /* synthetic */ v.a b(Object obj, Iterable iterable) {
            return a((a<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.common.a.v.a
        public /* synthetic */ v.a b(Object obj, Object[] objArr) {
            return a((a<K, V>) obj, objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(u<K, s<V>> uVar, int i) {
        super(uVar, i);
    }

    public static <K, V> t<K, V> a() {
        return o.f1831a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> t<K, V> a(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @NullableDecl Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return a();
        }
        u.a aVar = new u.a(collection.size());
        int i = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            s a2 = comparator == null ? s.a((Collection) value) : s.a((Comparator) comparator, (Iterable) value);
            if (!a2.isEmpty()) {
                aVar.a(key, a2);
                i += a2.size();
            }
        }
        return new t<>(aVar.a(), i);
    }

    public static <K, V> a<K, V> c() {
        return new a<>();
    }

    @Override // com.applovin.exoplayer2.common.a.v
    /* renamed from: c */
    public s<V> e(@NullableDecl K k) {
        s<V> sVar = (s) this.f1851b.get(k);
        return sVar == null ? s.g() : sVar;
    }
}
