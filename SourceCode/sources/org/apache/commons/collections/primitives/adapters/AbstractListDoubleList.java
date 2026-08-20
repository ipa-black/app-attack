package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.DoubleCollection;
import org.apache.commons.collections.primitives.DoubleIterator;
import org.apache.commons.collections.primitives.DoubleList;
import org.apache.commons.collections.primitives.DoubleListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListDoubleList extends AbstractCollectionDoubleCollection implements DoubleList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.DoubleList
    public void add(int i, double d2) {
        getList().add(i, new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public boolean addAll(int i, DoubleCollection doubleCollection) {
        return getList().addAll(i, DoubleCollectionCollection.wrap(doubleCollection));
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public double get(int i) {
        return ((Number) getList().get(i)).doubleValue();
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int indexOf(double d2) {
        return getList().indexOf(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int lastIndexOf(double d2) {
        return getList().lastIndexOf(new Double(d2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator() {
        return ListIteratorDoubleListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleListIterator listIterator(int i) {
        return ListIteratorDoubleListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public double removeElementAt(int i) {
        return ((Number) getList().remove(i)).doubleValue();
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public double set(int i, double d2) {
        return ((Number) getList().set(i, new Double(d2))).doubleValue();
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public DoubleList subList(int i, int i2) {
        return ListDoubleList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public boolean equals(Object obj) {
        if (obj instanceof DoubleList) {
            DoubleList doubleList = (DoubleList) obj;
            if (this == doubleList) {
                return true;
            }
            if (size() != doubleList.size()) {
                return false;
            }
            DoubleIterator it = iterator();
            DoubleIterator it2 = doubleList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.DoubleList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionDoubleCollection
    protected final Collection getCollection() {
        return getList();
    }
}
