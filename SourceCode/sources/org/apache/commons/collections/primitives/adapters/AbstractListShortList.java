package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.ShortCollection;
import org.apache.commons.collections.primitives.ShortIterator;
import org.apache.commons.collections.primitives.ShortList;
import org.apache.commons.collections.primitives.ShortListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListShortList extends AbstractCollectionShortCollection implements ShortList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.ShortList
    public void add(int i, short s) {
        getList().add(i, new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public boolean addAll(int i, ShortCollection shortCollection) {
        return getList().addAll(i, ShortCollectionCollection.wrap(shortCollection));
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public short get(int i) {
        return ((Number) getList().get(i)).shortValue();
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int indexOf(short s) {
        return getList().indexOf(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int lastIndexOf(short s) {
        return getList().lastIndexOf(new Short(s));
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator() {
        return ListIteratorShortListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortListIterator listIterator(int i) {
        return ListIteratorShortListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public short removeElementAt(int i) {
        return ((Number) getList().remove(i)).shortValue();
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public short set(int i, short s) {
        return ((Number) getList().set(i, new Short(s))).shortValue();
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public ShortList subList(int i, int i2) {
        return ListShortList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public boolean equals(Object obj) {
        if (obj instanceof ShortList) {
            ShortList shortList = (ShortList) obj;
            if (this == shortList) {
                return true;
            }
            if (size() != shortList.size()) {
                return false;
            }
            ShortIterator it = iterator();
            ShortIterator it2 = shortList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ShortList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionShortCollection
    protected final Collection getCollection() {
        return getList();
    }
}
