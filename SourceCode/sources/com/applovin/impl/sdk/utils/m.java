package com.applovin.impl.sdk.utils;

import java.lang.Comparable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.RandomAccess;
import java.util.Set;
/* loaded from: classes.dex */
public class m<T extends Comparable<? super T>> implements RandomAccess, Set<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<T> f6178a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<T> f6179b = new HashSet<>();

    public T a() {
        return this.f6178a.get(size() - 1);
    }

    public T a(int i) {
        return this.f6178a.get(i);
    }

    public void a(int i, T t) {
        this.f6179b.remove(this.f6178a.get(i));
        this.f6178a.set(i, t);
        this.f6179b.add(t);
    }

    public boolean a(T t) {
        if (contains(t)) {
            return false;
        }
        if (isEmpty() || t.compareTo(a()) > 0) {
            this.f6178a.add(t);
        } else {
            this.f6178a.add(c(t), t);
        }
        return this.f6179b.add(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public /* synthetic */ boolean add(Object obj) {
        return a((m<T>) ((Comparable) obj));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        boolean z;
        while (true) {
            for (T t : collection) {
                z = a((m<T>) t) || z;
            }
            return z;
        }
    }

    public int b(T t) {
        if (t == null || !contains(t)) {
            return -1;
        }
        return c(t);
    }

    public T b(int i) {
        T remove = this.f6178a.remove(i);
        this.f6179b.remove(remove);
        return remove;
    }

    public int c(T t) {
        int binarySearch = Collections.binarySearch(this.f6178a, t);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        T a2 = a(binarySearch);
        while (binarySearch >= 0 && a2 == a(binarySearch)) {
            binarySearch--;
        }
        return binarySearch + 1;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f6178a.clear();
        this.f6179b.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.f6179b.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return this.f6179b.containsAll(collection);
    }

    public int d(T t) {
        int binarySearch = Collections.binarySearch(this.f6178a, t);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        T a2 = a(binarySearch);
        while (binarySearch < size() && a2 == a(binarySearch)) {
            binarySearch++;
        }
        return binarySearch;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f6178a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return this.f6178a.iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        int b2 = b((m<T>) ((Comparable) obj));
        if (b2 == -1) {
            return false;
        }
        this.f6178a.remove(b2);
        return this.f6179b.remove(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        while (true) {
            for (Object obj : collection) {
                boolean z = z || remove(obj);
            }
            return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int size = size() - 1; size >= 0; size--) {
            T t = this.f6178a.get(size);
            if (!collection.contains(t)) {
                this.f6178a.remove(size);
                this.f6179b.remove(t);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f6178a.size();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return this.f6178a.toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public <T1> T1[] toArray(T1[] t1Arr) {
        return (T1[]) this.f6178a.toArray(t1Arr);
    }
}
