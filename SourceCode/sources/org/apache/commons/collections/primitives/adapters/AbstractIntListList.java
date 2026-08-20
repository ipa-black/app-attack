package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractIntListList extends AbstractIntCollectionCollection implements List {
    protected abstract IntList getIntList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getIntList().add(i, ((Number) obj).intValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getIntList().addAll(i, CollectionIntCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Integer(getIntList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getIntList().indexOf(((Number) obj).intValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getIntList().lastIndexOf(((Number) obj).intValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return IntListIteratorListIterator.wrap(getIntList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return IntListIteratorListIterator.wrap(getIntList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Integer(getIntList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Integer(getIntList().set(i, ((Number) obj).intValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return IntListList.wrap(getIntList().subList(i, i2));
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (this == list) {
                return true;
            }
            if (size() != list.size()) {
                return false;
            }
            Iterator it = iterator();
            Iterator it2 = list.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                Object next2 = it2.next();
                if (next == null) {
                    if (next2 != null) {
                        return false;
                    }
                } else if (!next.equals(next2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return getIntList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractIntCollectionCollection
    protected final IntCollection getIntCollection() {
        return getIntList();
    }
}
