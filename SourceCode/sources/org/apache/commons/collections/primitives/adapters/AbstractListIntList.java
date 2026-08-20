package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.IntCollection;
import org.apache.commons.collections.primitives.IntIterator;
import org.apache.commons.collections.primitives.IntList;
import org.apache.commons.collections.primitives.IntListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListIntList extends AbstractCollectionIntCollection implements IntList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.IntList
    public void add(int i, int i2) {
        getList().add(i, new Integer(i2));
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public boolean addAll(int i, IntCollection intCollection) {
        return getList().addAll(i, IntCollectionCollection.wrap(intCollection));
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int get(int i) {
        return ((Number) getList().get(i)).intValue();
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int indexOf(int i) {
        return getList().indexOf(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int lastIndexOf(int i) {
        return getList().lastIndexOf(new Integer(i));
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator() {
        return ListIteratorIntListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntListIterator listIterator(int i) {
        return ListIteratorIntListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int removeElementAt(int i) {
        return ((Number) getList().remove(i)).intValue();
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int set(int i, int i2) {
        return ((Number) getList().set(i, new Integer(i2))).intValue();
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public IntList subList(int i, int i2) {
        return ListIntList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public boolean equals(Object obj) {
        if (obj instanceof IntList) {
            IntList intList = (IntList) obj;
            if (this == intList) {
                return true;
            }
            if (size() != intList.size()) {
                return false;
            }
            IntIterator it = iterator();
            IntIterator it2 = intList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.IntList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionIntCollection
    protected final Collection getCollection() {
        return getList();
    }
}
