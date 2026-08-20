package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.BooleanCollection;
import org.apache.commons.collections.primitives.BooleanIterator;
import org.apache.commons.collections.primitives.BooleanList;
import org.apache.commons.collections.primitives.BooleanListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListBooleanList extends AbstractCollectionBooleanCollection implements BooleanList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.BooleanList
    public void add(int i, boolean z) {
        getList().add(i, new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean addAll(int i, BooleanCollection booleanCollection) {
        return getList().addAll(i, BooleanCollectionCollection.wrap(booleanCollection));
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean get(int i) {
        return ((Boolean) getList().get(i)).booleanValue();
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public int indexOf(boolean z) {
        return getList().indexOf(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public int lastIndexOf(boolean z) {
        return getList().lastIndexOf(new Boolean(z));
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public BooleanListIterator listIterator() {
        return ListIteratorBooleanListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public BooleanListIterator listIterator(int i) {
        return ListIteratorBooleanListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean removeElementAt(int i) {
        return ((Boolean) getList().remove(i)).booleanValue();
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean set(int i, boolean z) {
        return ((Boolean) getList().set(i, new Boolean(z))).booleanValue();
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public BooleanList subList(int i, int i2) {
        return ListBooleanList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public boolean equals(Object obj) {
        if (obj instanceof BooleanList) {
            BooleanList booleanList = (BooleanList) obj;
            if (this == booleanList) {
                return true;
            }
            if (size() != booleanList.size()) {
                return false;
            }
            BooleanIterator it = iterator();
            BooleanIterator it2 = booleanList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.BooleanList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionBooleanCollection
    protected final Collection getCollection() {
        return getList();
    }
}
