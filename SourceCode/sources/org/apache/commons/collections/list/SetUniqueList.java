package org.apache.commons.collections.list;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import org.apache.commons.collections.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections.iterators.AbstractListIteratorDecorator;
import org.apache.commons.collections.set.UnmodifiableSet;
/* loaded from: classes5.dex */
public class SetUniqueList extends AbstractListDecorator {
    protected final Set set;

    public static SetUniqueList decorate(List list) {
        if (list == null) {
            throw new IllegalArgumentException("List must not be null");
        }
        if (list.isEmpty()) {
            return new SetUniqueList(list, new HashSet());
        }
        ArrayList arrayList = new ArrayList(list);
        list.clear();
        SetUniqueList setUniqueList = new SetUniqueList(list, new HashSet());
        setUniqueList.addAll(arrayList);
        return setUniqueList;
    }

    protected SetUniqueList(List list, Set set) {
        super(list);
        if (set == null) {
            throw new IllegalArgumentException("Set must not be null");
        }
        this.set = set;
    }

    public Set asSet() {
        return UnmodifiableSet.decorate(this.set);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean add(Object obj) {
        int size = size();
        add(size(), obj);
        return size != size();
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public void add(int i, Object obj) {
        if (this.set.contains(obj)) {
            return;
        }
        super.add(i, obj);
        this.set.add(obj);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public boolean addAll(int i, Collection collection) {
        int size = size();
        for (Object obj : collection) {
            add(obj);
        }
        return size != size();
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public Object set(int i, Object obj) {
        int indexOf = indexOf(obj);
        return (indexOf == -1 || indexOf == i) ? super.set(i, obj) : remove(indexOf);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean remove(Object obj) {
        boolean remove = super.remove(obj);
        this.set.remove(obj);
        return remove;
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public Object remove(int i) {
        Object remove = super.remove(i);
        this.set.remove(remove);
        return remove;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean removeAll(Collection collection) {
        boolean removeAll = super.removeAll(collection);
        this.set.removeAll(collection);
        return removeAll;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean retainAll(Collection collection) {
        boolean retainAll = super.retainAll(collection);
        this.set.retainAll(collection);
        return retainAll;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public void clear() {
        super.clear();
        this.set.clear();
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.set.contains(obj);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.set.containsAll(collection);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, java.lang.Iterable, org.apache.commons.collections.Bag
    public Iterator iterator() {
        return new SetListIterator(super.iterator(), this.set);
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public ListIterator listIterator() {
        return new SetListListIterator(super.listIterator(), this.set);
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public ListIterator listIterator(int i) {
        return new SetListListIterator(super.listIterator(i), this.set);
    }

    @Override // org.apache.commons.collections.list.AbstractListDecorator, java.util.List
    public List subList(int i, int i2) {
        return new SetUniqueList(super.subList(i, i2), this.set);
    }

    /* loaded from: classes5.dex */
    static class SetListIterator extends AbstractIteratorDecorator {
        protected Object last;
        protected final Set set;

        protected SetListIterator(Iterator it, Set set) {
            super(it);
            this.last = null;
            this.set = set;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public Object next() {
            Object next = super.next();
            this.last = next;
            return next;
        }

        @Override // org.apache.commons.collections.iterators.AbstractIteratorDecorator, java.util.Iterator
        public void remove() {
            super.remove();
            this.set.remove(this.last);
            this.last = null;
        }
    }

    /* loaded from: classes5.dex */
    static class SetListListIterator extends AbstractListIteratorDecorator {
        protected Object last;
        protected final Set set;

        protected SetListListIterator(ListIterator listIterator, Set set) {
            super(listIterator);
            this.last = null;
            this.set = set;
        }

        @Override // org.apache.commons.collections.iterators.AbstractListIteratorDecorator, java.util.ListIterator, java.util.Iterator
        public Object next() {
            Object next = super.next();
            this.last = next;
            return next;
        }

        @Override // org.apache.commons.collections.iterators.AbstractListIteratorDecorator, java.util.ListIterator
        public Object previous() {
            Object previous = super.previous();
            this.last = previous;
            return previous;
        }

        @Override // org.apache.commons.collections.iterators.AbstractListIteratorDecorator, java.util.ListIterator, java.util.Iterator
        public void remove() {
            super.remove();
            this.set.remove(this.last);
            this.last = null;
        }

        @Override // org.apache.commons.collections.iterators.AbstractListIteratorDecorator, java.util.ListIterator
        public void add(Object obj) {
            if (this.set.contains(obj)) {
                return;
            }
            super.add(obj);
            this.set.add(obj);
        }

        @Override // org.apache.commons.collections.iterators.AbstractListIteratorDecorator, java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("ListIterator does not support set");
        }
    }
}
