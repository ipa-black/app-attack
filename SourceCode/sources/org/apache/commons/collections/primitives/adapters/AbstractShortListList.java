package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractShortListList extends AbstractShortCollectionCollection implements List {
    protected abstract ShortList getShortList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getShortList().add(i, ((Number) obj).shortValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getShortList().addAll(i, CollectionShortCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Short(getShortList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getShortList().indexOf(((Number) obj).shortValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getShortList().lastIndexOf(((Number) obj).shortValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return ShortListIteratorListIterator.wrap(getShortList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return ShortListIteratorListIterator.wrap(getShortList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Short(getShortList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Short(getShortList().set(i, ((Number) obj).shortValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return ShortListList.wrap(getShortList().subList(i, i2));
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
        return getShortList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractShortCollectionCollection
    protected final ShortCollection getShortCollection() {
        return getShortList();
    }
}
