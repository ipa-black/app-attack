package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractFloatListList extends AbstractFloatCollectionCollection implements List {
    protected abstract FloatList getFloatList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getFloatList().add(i, ((Number) obj).floatValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getFloatList().addAll(i, CollectionFloatCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Float(getFloatList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getFloatList().indexOf(((Number) obj).floatValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getFloatList().lastIndexOf(((Number) obj).floatValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return FloatListIteratorListIterator.wrap(getFloatList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return FloatListIteratorListIterator.wrap(getFloatList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Float(getFloatList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Float(getFloatList().set(i, ((Number) obj).floatValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return FloatListList.wrap(getFloatList().subList(i, i2));
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
        return getFloatList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractFloatCollectionCollection
    protected final FloatCollection getFloatCollection() {
        return getFloatList();
    }
}
