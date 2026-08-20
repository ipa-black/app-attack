package org.apache.commons.collections.set;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.collections.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections.list.UnmodifiableList;
/* loaded from: classes5.dex */
public class ListOrderedSet extends AbstractSetDecorator implements Set {
    protected final List setOrder;

    /* renamed from: org.apache.commons.collections.set.ListOrderedSet$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    class AnonymousClass1 {
    }

    public static ListOrderedSet decorate(Set set) {
        return new ListOrderedSet(set);
    }

    public static ListOrderedSet decorate(List list) {
        HashSet hashSet = new HashSet(list);
        list.retainAll(hashSet);
        return new ListOrderedSet(hashSet, list);
    }

    protected ListOrderedSet(Set set) {
        super(set);
        this.setOrder = new ArrayList(set);
    }

    protected ListOrderedSet(Set set, List list) {
        super(set);
        if (list == null) {
            throw new IllegalArgumentException("List must not be null");
        }
        this.setOrder = list;
    }

    public List asList() {
        return UnmodifiableList.decorate(this.setOrder);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public void clear() {
        this.collection.clear();
        this.setOrder.clear();
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, java.lang.Iterable, org.apache.commons.collections.Bag
    public Iterator iterator() {
        return new OrderedSetIterator(this.setOrder.iterator(), this.collection, null);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean add(Object obj) {
        if (this.collection.contains(obj)) {
            return this.collection.add(obj);
        }
        boolean add = this.collection.add(obj);
        this.setOrder.add(obj);
        return add;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean addAll(Collection collection) {
        boolean z = false;
        for (Object obj : collection) {
            z |= add(obj);
        }
        return z;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean remove(Object obj) {
        boolean remove = this.collection.remove(obj);
        this.setOrder.remove(obj);
        return remove;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean removeAll(Collection collection) {
        boolean z = false;
        for (Object obj : collection) {
            z |= remove(obj);
        }
        return z;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean retainAll(Collection collection) {
        boolean retainAll = this.collection.retainAll(collection);
        if (retainAll) {
            if (this.collection.size() == 0) {
                this.setOrder.clear();
            } else {
                Iterator it = this.setOrder.iterator();
                while (it.hasNext()) {
                    if (!this.collection.contains(it.next())) {
                        it.remove();
                    }
                }
            }
            return retainAll;
        }
        return false;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public Object[] toArray() {
        return this.setOrder.toArray();
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return this.setOrder.toArray(objArr);
    }

    public Object get(int i) {
        return this.setOrder.get(i);
    }

    public int indexOf(Object obj) {
        return this.setOrder.indexOf(obj);
    }

    public void add(int i, Object obj) {
        if (contains(obj)) {
            return;
        }
        this.collection.add(obj);
        this.setOrder.add(i, obj);
    }

    public boolean addAll(int i, Collection collection) {
        boolean z = false;
        for (Object obj : collection) {
            if (!contains(obj)) {
                this.collection.add(obj);
                this.setOrder.add(i, obj);
                i++;
                z = true;
            }
        }
        return z;
    }

    public Object remove(int i) {
        Object remove = this.setOrder.remove(i);
        remove(remove);
        return remove;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator
    public String toString() {
        return this.setOrder.toString();
    }

    /* loaded from: classes5.dex */
    static class OrderedSetIterator extends AbstractIteratorDecorator {
        protected Object last;
        protected final Collection set;

        /* synthetic */ OrderedSetIterator(Iterator it, Collection collection, AnonymousClass1 anonymousClass1) {
            this(it, collection);
        }

        private OrderedSetIterator(Iterator it, Collection collection) {
            super(it);
            this.set = collection;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public Object next() {
            Object next = this.iterator.next();
            this.last = next;
            return next;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public void remove() {
            this.set.remove(this.last);
            this.iterator.remove();
            this.last = null;
        }
    }
}
