package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.ab;
import com.applovin.exoplayer2.common.a.f;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class d<K, V> extends com.applovin.exoplayer2.common.a.f<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private transient Map<K, Collection<V>> f1761a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f1762b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends ab.e<K, Collection<V>> {

        /* renamed from: a  reason: collision with root package name */
        final transient Map<K, Collection<V>> f1765a;

        /* renamed from: com.applovin.exoplayer2.common.a.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0025a extends ab.b<K, Collection<V>> {
            C0025a() {
            }

            @Override // com.applovin.exoplayer2.common.a.ab.b
            Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override // com.applovin.exoplayer2.common.a.ab.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return k.a(a.this.f1765a.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override // com.applovin.exoplayer2.common.a.ab.b, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    d.this.e(((Map.Entry) obj).getKey());
                    return true;
                }
                return false;
            }
        }

        /* loaded from: classes.dex */
        class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<Map.Entry<K, Collection<V>>> f1768a;
            @NullableDecl

            /* renamed from: b  reason: collision with root package name */
            Collection<V> f1769b;

            b() {
                this.f1768a = a.this.f1765a.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f1768a.next();
                this.f1769b = next.getValue();
                return a.this.a((Map.Entry) next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f1768a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.applovin.exoplayer2.common.a.j.a(this.f1769b != null);
                this.f1768a.remove();
                d.b(d.this, this.f1769b.size());
                this.f1769b.clear();
                this.f1769b = null;
            }
        }

        a(Map<K, Collection<V>> map) {
            this.f1765a = map;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: a */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) ab.a((Map<?, Object>) this.f1765a, obj);
            if (collection == null) {
                return null;
            }
            return d.this.a((d) obj, (Collection) collection);
        }

        Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return ab.a(key, d.this.a((d) key, (Collection) entry.getValue()));
        }

        @Override // com.applovin.exoplayer2.common.a.ab.e
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new C0025a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: b */
        public Collection<V> remove(Object obj) {
            Collection<V> remove = this.f1765a.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> c2 = d.this.c();
            c2.addAll(remove);
            d.b(d.this, remove.size());
            remove.clear();
            return c2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f1765a == d.this.f1761a) {
                d.this.e();
            } else {
                y.d(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return ab.b(this.f1765a, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@NullableDecl Object obj) {
            return this == obj || this.f1765a.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f1765a.hashCode();
        }

        @Override // com.applovin.exoplayer2.common.a.ab.e, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return d.this.p();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f1765a.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f1765a.toString();
        }
    }

    /* loaded from: classes.dex */
    private abstract class b<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        final Iterator<Map.Entry<K, Collection<V>>> f1771b;
        @NullableDecl

        /* renamed from: c  reason: collision with root package name */
        K f1772c = null;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        Collection<V> f1773d = null;

        /* renamed from: e  reason: collision with root package name */
        Iterator<V> f1774e = y.c();

        b() {
            this.f1771b = (Iterator<Map.Entry<K, V>>) d.this.f1761a.entrySet().iterator();
        }

        abstract T a(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1771b.hasNext() || this.f1774e.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f1774e.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f1771b.next();
                this.f1772c = next.getKey();
                Collection<V> value = next.getValue();
                this.f1773d = value;
                this.f1774e = value.iterator();
            }
            return a(this.f1772c, this.f1774e.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f1774e.remove();
            if (this.f1773d.isEmpty()) {
                this.f1771b.remove();
            }
            d.b(d.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends ab.c<K, Collection<V>> {
        c(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.applovin.exoplayer2.common.a.ab.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            y.d(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return c().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return this == obj || c().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return c().keySet().hashCode();
        }

        @Override // com.applovin.exoplayer2.common.a.ab.c, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            final Iterator<Map.Entry<K, Collection<V>>> it = c().entrySet().iterator();
            return new Iterator<K>() { // from class: com.applovin.exoplayer2.common.a.d.c.1
                @NullableDecl

                /* renamed from: a  reason: collision with root package name */
                Map.Entry<K, Collection<V>> f1777a;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                public K next() {
                    Map.Entry<K, Collection<V>> entry = (Map.Entry) it.next();
                    this.f1777a = entry;
                    return entry.getKey();
                }

                @Override // java.util.Iterator
                public void remove() {
                    com.applovin.exoplayer2.common.a.j.a(this.f1777a != null);
                    Collection<V> value = this.f1777a.getValue();
                    it.remove();
                    d.b(d.this, value.size());
                    value.clear();
                    this.f1777a = null;
                }
            };
        }

        @Override // com.applovin.exoplayer2.common.a.ab.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i;
            Collection<V> remove = c().remove(obj);
            if (remove != null) {
                i = remove.size();
                remove.clear();
                d.b(d.this, i);
            } else {
                i = 0;
            }
            return i > 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.exoplayer2.common.a.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0026d extends d<K, V>.g implements NavigableMap<K, Collection<V>> {
        C0026d(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        Map.Entry<K, Collection<V>> a(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (it.hasNext()) {
                Map.Entry<K, Collection<V>> next = it.next();
                Collection<V> c2 = d.this.c();
                c2.addAll(next.getValue());
                it.remove();
                return ab.a(next.getKey(), d.this.a(c2));
            }
            return null;
        }

        @Override // com.applovin.exoplayer2.common.a.d.g, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: a */
        public NavigableMap<K, Collection<V>> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.d.g
        /* renamed from: b */
        public NavigableMap<K, Collection<V>> g() {
            return (NavigableMap) super.g();
        }

        @Override // com.applovin.exoplayer2.common.a.d.g, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: c */
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // com.applovin.exoplayer2.common.a.d.g, com.applovin.exoplayer2.common.a.d.a, com.applovin.exoplayer2.common.a.ab.e, java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> ceilingEntry = g().ceilingEntry(k);
            if (ceilingEntry == null) {
                return null;
            }
            return a((Map.Entry) ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return g().ceilingKey(k);
        }

        @Override // com.applovin.exoplayer2.common.a.d.g, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: d */
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.d.g, com.applovin.exoplayer2.common.a.ab.e
        /* renamed from: d */
        public NavigableSet<K> h() {
            return new e(g());
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new C0026d(g().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = g().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return a((Map.Entry) firstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> floorEntry = g().floorEntry(k);
            if (floorEntry == null) {
                return null;
            }
            return a((Map.Entry) floorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return g().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new C0026d(g().headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> higherEntry = g().higherEntry(k);
            if (higherEntry == null) {
                return null;
            }
            return a((Map.Entry) higherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return g().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = g().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return a((Map.Entry) lastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> lowerEntry = g().lowerEntry(k);
            if (lowerEntry == null) {
                return null;
            }
            return a((Map.Entry) lowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return g().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return a((Iterator) entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return a((Iterator) descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new C0026d(g().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new C0026d(g().tailMap(k, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e extends d<K, V>.h implements NavigableSet<K> {
        e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.d.h
        /* renamed from: a */
        public NavigableMap<K, Collection<V>> b() {
            return (NavigableMap) super.b();
        }

        @Override // com.applovin.exoplayer2.common.a.d.h, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: a */
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // com.applovin.exoplayer2.common.a.d.h, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: a */
        public NavigableSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // com.applovin.exoplayer2.common.a.d.h, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: b */
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return b().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new e(b().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return b().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return new e(b().headMap(k, z));
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return b().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return b().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) y.c(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) y.c(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new e(b().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return new e(b().tailMap(k, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f extends d<K, V>.j implements RandomAccess {
        f(@NullableDecl K k, List<V> list, @NullableDecl d<K, V>.i iVar) {
            super(k, list, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g extends d<K, V>.a implements SortedMap<K, Collection<V>> {
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        SortedSet<K> f1783d;

        g(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return g().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.applovin.exoplayer2.common.a.ab.e
        /* renamed from: e */
        public SortedSet<K> h() {
            return new h(g());
        }

        @Override // com.applovin.exoplayer2.common.a.d.a, com.applovin.exoplayer2.common.a.ab.e, java.util.AbstractMap, java.util.Map
        /* renamed from: f */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f1783d;
            if (sortedSet == null) {
                SortedSet<K> h2 = h();
                this.f1783d = h2;
                return h2;
            }
            return sortedSet;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return g().firstKey();
        }

        SortedMap<K, Collection<V>> g() {
            return (SortedMap) this.f1765a;
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new g(g().headMap(k));
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return g().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new g(g().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new g(g().tailMap(k));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class h extends d<K, V>.c implements SortedSet<K> {
        h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        SortedMap<K, Collection<V>> b() {
            return (SortedMap) super.c();
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return b().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new h(b().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return b().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new h(b().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new h(b().tailMap(k));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i extends AbstractCollection<V> {
        @NullableDecl

        /* renamed from: b  reason: collision with root package name */
        final K f1786b;

        /* renamed from: c  reason: collision with root package name */
        Collection<V> f1787c;
        @NullableDecl

        /* renamed from: d  reason: collision with root package name */
        final d<K, V>.i f1788d;
        @NullableDecl

        /* renamed from: e  reason: collision with root package name */
        final Collection<V> f1789e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<V> f1791a;

            /* renamed from: b  reason: collision with root package name */
            final Collection<V> f1792b;

            a() {
                this.f1792b = i.this.f1787c;
                this.f1791a = d.c((Collection) i.this.f1787c);
            }

            a(Iterator<V> it) {
                this.f1792b = i.this.f1787c;
                this.f1791a = it;
            }

            void a() {
                i.this.a();
                if (i.this.f1787c != this.f1792b) {
                    throw new ConcurrentModificationException();
                }
            }

            Iterator<V> b() {
                a();
                return this.f1791a;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f1791a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                a();
                return this.f1791a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f1791a.remove();
                d.b(d.this);
                i.this.b();
            }
        }

        i(@NullableDecl K k, Collection<V> collection, @NullableDecl d<K, V>.i iVar) {
            this.f1786b = k;
            this.f1787c = collection;
            this.f1788d = iVar;
            this.f1789e = iVar == null ? null : iVar.e();
        }

        void a() {
            Collection<V> collection;
            d<K, V>.i iVar = this.f1788d;
            if (iVar != null) {
                iVar.a();
                if (this.f1788d.e() != this.f1789e) {
                    throw new ConcurrentModificationException();
                }
            } else if (!this.f1787c.isEmpty() || (collection = (Collection) d.this.f1761a.get(this.f1786b)) == null) {
            } else {
                this.f1787c = collection;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            a();
            boolean isEmpty = this.f1787c.isEmpty();
            boolean add = this.f1787c.add(v);
            if (add) {
                d.c(d.this);
                if (isEmpty) {
                    d();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f1787c.addAll(collection);
            if (addAll) {
                d.a(d.this, this.f1787c.size() - size);
                if (size == 0) {
                    d();
                }
            }
            return addAll;
        }

        void b() {
            d<K, V>.i iVar = this.f1788d;
            if (iVar != null) {
                iVar.b();
            } else if (this.f1787c.isEmpty()) {
                d.this.f1761a.remove(this.f1786b);
            }
        }

        K c() {
            return this.f1786b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f1787c.clear();
            d.b(d.this, size);
            b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            a();
            return this.f1787c.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            a();
            return this.f1787c.containsAll(collection);
        }

        void d() {
            d<K, V>.i iVar = this.f1788d;
            if (iVar != null) {
                iVar.d();
            } else {
                d.this.f1761a.put(this.f1786b, this.f1787c);
            }
        }

        Collection<V> e() {
            return this.f1787c;
        }

        @Override // java.util.Collection
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            a();
            return this.f1787c.equals(obj);
        }

        d<K, V>.i f() {
            return this.f1788d;
        }

        @Override // java.util.Collection
        public int hashCode() {
            a();
            return this.f1787c.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            a();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            a();
            boolean remove = this.f1787c.remove(obj);
            if (remove) {
                d.b(d.this);
                b();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f1787c.removeAll(collection);
            if (removeAll) {
                d.a(d.this, this.f1787c.size() - size);
                b();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            int size = size();
            boolean retainAll = this.f1787c.retainAll(collection);
            if (retainAll) {
                d.a(d.this, this.f1787c.size() - size);
                b();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            a();
            return this.f1787c.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            a();
            return this.f1787c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j extends d<K, V>.i implements List<V> {

        /* loaded from: classes.dex */
        private class a extends d<K, V>.i.a implements ListIterator<V> {
            a() {
                super();
            }

            public a(int i) {
                super(j.this.g().listIterator(i));
            }

            private ListIterator<V> c() {
                return (ListIterator) b();
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                boolean isEmpty = j.this.isEmpty();
                c().add(v);
                d.c(d.this);
                if (isEmpty) {
                    j.this.d();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                c().set(v);
            }
        }

        j(@NullableDecl K k, List<V> list, @NullableDecl d<K, V>.i iVar) {
            super(k, list, iVar);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            a();
            boolean isEmpty = e().isEmpty();
            g().add(i, v);
            d.c(d.this);
            if (isEmpty) {
                d();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = g().addAll(i, collection);
            if (addAll) {
                d.a(d.this, e().size() - size);
                if (size == 0) {
                    d();
                }
            }
            return addAll;
        }

        List<V> g() {
            return (List) e();
        }

        @Override // java.util.List
        public V get(int i) {
            a();
            return g().get(i);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            a();
            return g().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            a();
            return g().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            a();
            return new a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            a();
            return new a(i);
        }

        @Override // java.util.List
        public V remove(int i) {
            a();
            V remove = g().remove(i);
            d.b(d.this);
            b();
            return remove;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            a();
            return g().set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            a();
            return d.this.a(c(), g().subList(i, i2), f() == null ? this : f());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Map<K, Collection<V>> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.f1761a = map;
    }

    static /* synthetic */ int a(d dVar, int i2) {
        int i3 = dVar.f1762b + i2;
        dVar.f1762b = i3;
        return i3;
    }

    static /* synthetic */ int b(d dVar) {
        int i2 = dVar.f1762b;
        dVar.f1762b = i2 - 1;
        return i2;
    }

    static /* synthetic */ int b(d dVar, int i2) {
        int i3 = dVar.f1762b - i2;
        dVar.f1762b = i3;
        return i3;
    }

    static /* synthetic */ int c(d dVar) {
        int i2 = dVar.f1762b;
        dVar.f1762b = i2 + 1;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> c(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Object obj) {
        Collection collection = (Collection) ab.c(this.f1761a, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f1762b -= size;
        }
    }

    Collection<V> a(@NullableDecl K k, Collection<V> collection) {
        return new i(k, collection, null);
    }

    <E> Collection<E> a(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<V> a(@NullableDecl K k, List<V> list, @NullableDecl d<K, V>.i iVar) {
        return list instanceof RandomAccess ? new f(k, list, iVar) : new j(k, list, iVar);
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    public boolean a(@NullableDecl K k, @NullableDecl V v) {
        Collection<V> collection = this.f1761a.get(k);
        if (collection != null) {
            if (collection.add(v)) {
                this.f1762b++;
                return true;
            }
            return false;
        }
        Collection<V> c2 = c((d<K, V>) k);
        if (c2.add(v)) {
            this.f1762b++;
            this.f1761a.put(k, c2);
            return true;
        }
        throw new AssertionError("New Collection violated the Collection spec");
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public Collection<V> b(@NullableDecl K k) {
        Collection<V> collection = this.f1761a.get(k);
        if (collection == null) {
            collection = c((d<K, V>) k);
        }
        return a((d<K, V>) k, (Collection) collection);
    }

    abstract Collection<V> c();

    Collection<V> c(@NullableDecl K k) {
        return c();
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public int d() {
        return this.f1762b;
    }

    @Override // com.applovin.exoplayer2.common.a.ac
    public void e() {
        for (Collection<V> collection : this.f1761a.values()) {
            collection.clear();
        }
        this.f1761a.clear();
        this.f1762b = 0;
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Set<K> f() {
        return new c(this.f1761a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<K> g() {
        Map<K, Collection<V>> map = this.f1761a;
        return map instanceof NavigableMap ? new e((NavigableMap) this.f1761a) : map instanceof SortedMap ? new h((SortedMap) this.f1761a) : new c(this.f1761a);
    }

    @Override // com.applovin.exoplayer2.common.a.f, com.applovin.exoplayer2.common.a.ac
    public Collection<V> h() {
        return super.h();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Collection<V> i() {
        return new f.c();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Iterator<V> j() {
        return new d<K, V>.b<V>() { // from class: com.applovin.exoplayer2.common.a.d.1
            @Override // com.applovin.exoplayer2.common.a.d.b
            V a(K k, V v) {
                return v;
            }
        };
    }

    @Override // com.applovin.exoplayer2.common.a.f
    public Collection<Map.Entry<K, V>> k() {
        return super.k();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Collection<Map.Entry<K, V>> l() {
        return this instanceof ap ? new f.b() : new f.a();
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Iterator<Map.Entry<K, V>> m() {
        return new d<K, V>.b<Map.Entry<K, V>>() { // from class: com.applovin.exoplayer2.common.a.d.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.applovin.exoplayer2.common.a.d.b
            /* renamed from: b */
            public Map.Entry<K, V> a(K k, V v) {
                return ab.a(k, v);
            }
        };
    }

    @Override // com.applovin.exoplayer2.common.a.f
    Map<K, Collection<V>> n() {
        return new a(this.f1761a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, Collection<V>> o() {
        Map<K, Collection<V>> map = this.f1761a;
        return map instanceof NavigableMap ? new C0026d((NavigableMap) this.f1761a) : map instanceof SortedMap ? new g((SortedMap) this.f1761a) : new a(this.f1761a);
    }
}
