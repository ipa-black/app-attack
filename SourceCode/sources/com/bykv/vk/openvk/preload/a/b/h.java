package com.bykv.vk.openvk.preload.a.b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* compiled from: LinkedTreeMap.java */
/* loaded from: classes2.dex */
public final class h<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ boolean f8304f = true;

    /* renamed from: g  reason: collision with root package name */
    private static final Comparator<Comparable> f8305g = new Comparator<Comparable>() { // from class: com.bykv.vk.openvk.preload.a.b.h.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f8306a;

    /* renamed from: b  reason: collision with root package name */
    d<K, V> f8307b;

    /* renamed from: c  reason: collision with root package name */
    int f8308c;

    /* renamed from: d  reason: collision with root package name */
    int f8309d;

    /* renamed from: e  reason: collision with root package name */
    final d<K, V> f8310e;

    /* renamed from: h  reason: collision with root package name */
    private h<K, V>.a f8311h;
    private h<K, V>.b i;

    public h() {
        this(f8305g);
    }

    private h(Comparator<? super K> comparator) {
        this.f8308c = 0;
        this.f8309d = 0;
        this.f8310e = new d<>();
        this.f8306a = comparator == null ? f8305g : comparator;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f8308c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            return b2.f8326g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        d<K, V> a2 = a((h<K, V>) k, true);
        V v2 = a2.f8326g;
        a2.f8326g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f8307b = null;
        this.f8308c = 0;
        this.f8309d++;
        d<K, V> dVar = this.f8310e;
        dVar.f8324e = dVar;
        dVar.f8323d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> a2 = a(obj);
        if (a2 != null) {
            return a2.f8326g;
        }
        return null;
    }

    private d<K, V> a(K k, boolean z) {
        int i;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.f8306a;
        d<K, V> dVar2 = this.f8307b;
        if (dVar2 != null) {
            Comparable comparable = comparator == f8305g ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    i = comparable.compareTo(dVar2.f8325f);
                } else {
                    i = comparator.compare(k, (K) dVar2.f8325f);
                }
                if (i != 0) {
                    d<K, V> dVar3 = i < 0 ? dVar2.f8321b : dVar2.f8322c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            i = 0;
        }
        if (z) {
            d<K, V> dVar4 = this.f8310e;
            if (dVar2 == null) {
                if (comparator == f8305g && !(k instanceof Comparable)) {
                    throw new ClassCastException(k.getClass().getName() + " is not Comparable");
                }
                dVar = new d<>(dVar2, k, dVar4, dVar4.f8324e);
                this.f8307b = dVar;
            } else {
                dVar = new d<>(dVar2, k, dVar4, dVar4.f8324e);
                if (i < 0) {
                    dVar2.f8321b = dVar;
                } else {
                    dVar2.f8322c = dVar;
                }
                b(dVar2, true);
            }
            this.f8308c++;
            this.f8309d++;
            return dVar;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        if (obj != 0) {
            try {
                return a((h<K, V>) obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    final d<K, V> a(Map.Entry<?, ?> entry) {
        d<K, V> b2 = b(entry.getKey());
        if (b2 != null) {
            V v = b2.f8326g;
            Object value = entry.getValue();
            if (v == value || (v != null && v.equals(value))) {
                return b2;
            }
            return null;
        }
        return null;
    }

    final void a(d<K, V> dVar, boolean z) {
        int i;
        if (z) {
            dVar.f8324e.f8323d = dVar.f8323d;
            dVar.f8323d.f8324e = dVar.f8324e;
        }
        d<K, V> dVar2 = dVar.f8321b;
        d<K, V> dVar3 = dVar.f8322c;
        d<K, V> dVar4 = dVar.f8320a;
        int i2 = 0;
        if (dVar2 != null && dVar3 != null) {
            if (dVar2.f8327h > dVar3.f8327h) {
                d<K, V> dVar5 = dVar2.f8322c;
                while (true) {
                    d<K, V> dVar6 = dVar5;
                    dVar3 = dVar2;
                    dVar2 = dVar6;
                    if (dVar2 == null) {
                        break;
                    }
                    dVar5 = dVar2.f8322c;
                }
            } else {
                while (true) {
                    d<K, V> dVar7 = dVar3.f8321b;
                    if (dVar7 == null) {
                        break;
                    }
                    dVar3 = dVar7;
                }
            }
            a((d) dVar3, false);
            d<K, V> dVar8 = dVar.f8321b;
            if (dVar8 != null) {
                i = dVar8.f8327h;
                dVar3.f8321b = dVar8;
                dVar8.f8320a = dVar3;
                dVar.f8321b = null;
            } else {
                i = 0;
            }
            d<K, V> dVar9 = dVar.f8322c;
            if (dVar9 != null) {
                i2 = dVar9.f8327h;
                dVar3.f8322c = dVar9;
                dVar9.f8320a = dVar3;
                dVar.f8322c = null;
            }
            dVar3.f8327h = Math.max(i, i2) + 1;
            a(dVar, dVar3);
            return;
        }
        if (dVar2 != null) {
            a(dVar, dVar2);
            dVar.f8321b = null;
        } else if (dVar3 != null) {
            a(dVar, dVar3);
            dVar.f8322c = null;
        } else {
            a(dVar, (d) null);
        }
        b(dVar4, false);
        this.f8308c--;
        this.f8309d++;
    }

    final d<K, V> a(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            a((d) b2, true);
        }
        return b2;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f8320a;
        dVar.f8320a = null;
        if (dVar2 != null) {
            dVar2.f8320a = dVar3;
        }
        if (dVar3 != null) {
            if (dVar3.f8321b == dVar) {
                dVar3.f8321b = dVar2;
                return;
            } else if (!f8304f && dVar3.f8322c != dVar) {
                throw new AssertionError();
            } else {
                dVar3.f8322c = dVar2;
                return;
            }
        }
        this.f8307b = dVar2;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f8321b;
            d<K, V> dVar3 = dVar.f8322c;
            int i = dVar2 != null ? dVar2.f8327h : 0;
            int i2 = dVar3 != null ? dVar3.f8327h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.f8321b;
                d<K, V> dVar5 = dVar3.f8322c;
                int i4 = (dVar4 != null ? dVar4.f8327h : 0) - (dVar5 != null ? dVar5.f8327h : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((d) dVar);
                } else if (!f8304f && i4 != 1) {
                    throw new AssertionError();
                } else {
                    b((d) dVar3);
                    a((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                d<K, V> dVar6 = dVar2.f8321b;
                d<K, V> dVar7 = dVar2.f8322c;
                int i5 = (dVar6 != null ? dVar6.f8327h : 0) - (dVar7 != null ? dVar7.f8327h : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((d) dVar);
                } else if (!f8304f && i5 != -1) {
                    throw new AssertionError();
                } else {
                    a((d) dVar2);
                    b((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                dVar.f8327h = i + 1;
                if (z) {
                    return;
                }
            } else if (!f8304f && i3 != -1 && i3 != 1) {
                throw new AssertionError();
            } else {
                dVar.f8327h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.f8320a;
        }
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f8321b;
        d<K, V> dVar3 = dVar.f8322c;
        d<K, V> dVar4 = dVar3.f8321b;
        d<K, V> dVar5 = dVar3.f8322c;
        dVar.f8322c = dVar4;
        if (dVar4 != null) {
            dVar4.f8320a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f8321b = dVar;
        dVar.f8320a = dVar3;
        dVar.f8327h = Math.max(dVar2 != null ? dVar2.f8327h : 0, dVar4 != null ? dVar4.f8327h : 0) + 1;
        dVar3.f8327h = Math.max(dVar.f8327h, dVar5 != null ? dVar5.f8327h : 0) + 1;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.f8321b;
        d<K, V> dVar3 = dVar.f8322c;
        d<K, V> dVar4 = dVar2.f8321b;
        d<K, V> dVar5 = dVar2.f8322c;
        dVar.f8321b = dVar5;
        if (dVar5 != null) {
            dVar5.f8320a = dVar;
        }
        a(dVar, dVar2);
        dVar2.f8322c = dVar;
        dVar.f8320a = dVar2;
        dVar.f8327h = Math.max(dVar3 != null ? dVar3.f8327h : 0, dVar5 != null ? dVar5.f8327h : 0) + 1;
        dVar2.f8327h = Math.max(dVar.f8327h, dVar4 != null ? dVar4.f8327h : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        h<K, V>.a aVar = this.f8311h;
        if (aVar != null) {
            return aVar;
        }
        h<K, V>.a aVar2 = new a();
        this.f8311h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        h<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        h<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes2.dex */
    public static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f8320a;

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f8321b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f8322c;

        /* renamed from: d  reason: collision with root package name */
        d<K, V> f8323d;

        /* renamed from: e  reason: collision with root package name */
        d<K, V> f8324e;

        /* renamed from: f  reason: collision with root package name */
        final K f8325f;

        /* renamed from: g  reason: collision with root package name */
        V f8326g;

        /* renamed from: h  reason: collision with root package name */
        int f8327h;

        d() {
            this.f8325f = null;
            this.f8324e = this;
            this.f8323d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f8320a = dVar;
            this.f8325f = k;
            this.f8327h = 1;
            this.f8323d = dVar2;
            this.f8324e = dVar3;
            dVar3.f8323d = this;
            dVar2.f8324e = this;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f8325f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f8326g;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.f8326g;
            this.f8326g = v;
            return v2;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.f8325f;
                if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.f8326g;
                    if (v == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f8325f;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f8326g;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        public final String toString() {
            return this.f8325f + "=" + this.f8326g;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes2.dex */
    abstract class c<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f8316b;

        /* renamed from: c  reason: collision with root package name */
        d<K, V> f8317c = null;

        /* renamed from: d  reason: collision with root package name */
        int f8318d;

        c() {
            this.f8316b = h.this.f8310e.f8323d;
            this.f8318d = h.this.f8309d;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f8316b != h.this.f8310e;
        }

        final d<K, V> a() {
            d<K, V> dVar = this.f8316b;
            if (dVar == h.this.f8310e) {
                throw new NoSuchElementException();
            }
            if (h.this.f8309d != this.f8318d) {
                throw new ConcurrentModificationException();
            }
            this.f8316b = dVar.f8323d;
            this.f8317c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.f8317c;
            if (dVar == null) {
                throw new IllegalStateException();
            }
            h.this.a((d) dVar, true);
            this.f8317c = null;
            this.f8318d = h.this.f8309d;
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes2.dex */
    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h.this.f8308c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new h<K, V>.c<Map.Entry<K, V>>() { // from class: com.bykv.vk.openvk.preload.a.b.h.a.1
                {
                    h hVar = h.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && h.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d<K, V> a2;
            if ((obj instanceof Map.Entry) && (a2 = h.this.a((Map.Entry) obj)) != null) {
                h.this.a((d) a2, true);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h.this.clear();
        }
    }

    /* compiled from: LinkedTreeMap.java */
    /* loaded from: classes2.dex */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h.this.f8308c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new h<K, V>.c<K>() { // from class: com.bykv.vk.openvk.preload.a.b.h.b.1
                {
                    h hVar = h.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return a().f8325f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return h.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return h.this.a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h.this.clear();
        }
    }
}
