package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.BooleanCollection;
import org.apache.commons.collections.primitives.BooleanList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractBooleanListList extends AbstractBooleanCollectionCollection implements List {
    protected abstract BooleanList getBooleanList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getBooleanList().add(i, ((Boolean) obj).booleanValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getBooleanList().addAll(i, CollectionBooleanCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Boolean(getBooleanList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getBooleanList().indexOf(((Boolean) obj).booleanValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getBooleanList().lastIndexOf(((Boolean) obj).booleanValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return BooleanListIteratorListIterator.wrap(getBooleanList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return BooleanListIteratorListIterator.wrap(getBooleanList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Boolean(getBooleanList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Boolean(getBooleanList().set(i, ((Boolean) obj).booleanValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return BooleanListList.wrap(getBooleanList().subList(i, i2));
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
        return getBooleanList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractBooleanCollectionCollection
    protected final BooleanCollection getBooleanCollection() {
        return getBooleanList();
    }
}
