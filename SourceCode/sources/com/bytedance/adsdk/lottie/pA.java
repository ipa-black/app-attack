package com.bytedance.adsdk.lottie;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* compiled from: MapCollections.java */
/* loaded from: classes2.dex */
abstract class pA<K, V> {
    pA<K, V>.cJ cJ;

    protected abstract int Qhi();

    protected abstract int Qhi(Object obj);

    protected abstract Object Qhi(int i, int i2);

    protected abstract void Qhi(int i);

    protected abstract void ac();

    protected abstract Map<K, V> cJ();

    /* compiled from: MapCollections.java */
    /* loaded from: classes2.dex */
    final class Qhi<T> implements Iterator<T> {
        boolean CJ = false;
        final int Qhi;
        int ac;
        int cJ;

        Qhi(int i) {
            this.Qhi = i;
            this.cJ = pA.this.Qhi();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.ac < this.cJ;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) pA.this.Qhi(this.ac, this.Qhi);
            this.ac++;
            this.CJ = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.CJ) {
                throw new IllegalStateException();
            }
            int i = this.ac - 1;
            this.ac = i;
            this.cJ--;
            this.CJ = false;
            pA.this.Qhi(i);
        }
    }

    /* compiled from: MapCollections.java */
    /* loaded from: classes2.dex */
    final class cJ implements Set<K> {
        cJ() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            pA.this.ac();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return pA.this.Qhi(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return pA.Qhi(pA.this.cJ(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return pA.this.Qhi() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new Qhi(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int Qhi = pA.this.Qhi(obj);
            if (Qhi >= 0) {
                pA.this.Qhi(Qhi);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return pA.cJ(pA.this.cJ(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return pA.ac(pA.this.cJ(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return pA.this.Qhi();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return pA.this.cJ(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) pA.this.Qhi(tArr, 0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return pA.Qhi(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int Qhi = pA.this.Qhi() - 1; Qhi >= 0; Qhi--) {
                Object Qhi2 = pA.this.Qhi(Qhi, 0);
                i += Qhi2 == null ? 0 : Qhi2.hashCode();
            }
            return i;
        }
    }

    public static <K, V> boolean Qhi(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean cJ(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean ac(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public Object[] cJ(int i) {
        int Qhi2 = Qhi();
        Object[] objArr = new Object[Qhi2];
        for (int i2 = 0; i2 < Qhi2; i2++) {
            objArr[i2] = Qhi(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] Qhi(T[] tArr, int i) {
        int Qhi2 = Qhi();
        if (tArr.length < Qhi2) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), Qhi2));
        }
        for (int i2 = 0; i2 < Qhi2; i2++) {
            tArr[i2] = Qhi(i2, i);
        }
        if (tArr.length > Qhi2) {
            tArr[Qhi2] = null;
        }
        return tArr;
    }

    public static <T> boolean Qhi(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public Set<K> CJ() {
        if (this.cJ == null) {
            this.cJ = new cJ();
        }
        return this.cJ;
    }
}
