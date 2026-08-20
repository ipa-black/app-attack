package com.applovin.exoplayer2.l;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class i<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3799a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Map<E, Integer> f3800b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private Set<E> f3801c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private List<E> f3802d = Collections.emptyList();

    public Set<E> a() {
        Set<E> set;
        synchronized (this.f3799a) {
            set = this.f3801c;
        }
        return set;
    }

    public void a(E e2) {
        synchronized (this.f3799a) {
            ArrayList arrayList = new ArrayList(this.f3802d);
            arrayList.add(e2);
            this.f3802d = Collections.unmodifiableList(arrayList);
            Integer num = this.f3800b.get(e2);
            if (num == null) {
                HashSet hashSet = new HashSet(this.f3801c);
                hashSet.add(e2);
                this.f3801c = Collections.unmodifiableSet(hashSet);
            }
            this.f3800b.put(e2, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
        }
    }

    public void b(E e2) {
        synchronized (this.f3799a) {
            Integer num = this.f3800b.get(e2);
            if (num == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f3802d);
            arrayList.remove(e2);
            this.f3802d = Collections.unmodifiableList(arrayList);
            if (num.intValue() == 1) {
                this.f3800b.remove(e2);
                HashSet hashSet = new HashSet(this.f3801c);
                hashSet.remove(e2);
                this.f3801c = Collections.unmodifiableSet(hashSet);
            } else {
                this.f3800b.put(e2, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public int c(E e2) {
        int intValue;
        synchronized (this.f3799a) {
            intValue = this.f3800b.containsKey(e2) ? this.f3800b.get(e2).intValue() : 0;
        }
        return intValue;
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Iterator<E> it;
        synchronized (this.f3799a) {
            it = this.f3802d.iterator();
        }
        return it;
    }
}
