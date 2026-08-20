package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractDoubleListList extends AbstractDoubleCollectionCollection implements List {
    protected abstract DoubleList getDoubleList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getDoubleList().add(i, ((Number) obj).doubleValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getDoubleList().addAll(i, CollectionDoubleCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Double(getDoubleList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getDoubleList().indexOf(((Number) obj).doubleValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getDoubleList().lastIndexOf(((Number) obj).doubleValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return DoubleListIteratorListIterator.wrap(getDoubleList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return DoubleListIteratorListIterator.wrap(getDoubleList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Double(getDoubleList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Double(getDoubleList().set(i, ((Number) obj).doubleValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return DoubleListList.wrap(getDoubleList().subList(i, i2));
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
        return getDoubleList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractDoubleCollectionCollection
    protected final DoubleCollection getDoubleCollection() {
        return getDoubleList();
    }
}
