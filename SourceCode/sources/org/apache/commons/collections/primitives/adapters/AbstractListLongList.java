package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongIterator;
import org.apache.commons.collections.primitives.LongList;
import org.apache.commons.collections.primitives.LongListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListLongList extends AbstractCollectionLongCollection implements LongList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.LongList
    public void add(int i, long j) {
        getList().add(i, new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public boolean addAll(int i, LongCollection longCollection) {
        return getList().addAll(i, LongCollectionCollection.wrap(longCollection));
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public long get(int i) {
        return ((Number) getList().get(i)).longValue();
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int indexOf(long j) {
        return getList().indexOf(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int lastIndexOf(long j) {
        return getList().lastIndexOf(new Long(j));
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator() {
        return ListIteratorLongListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongListIterator listIterator(int i) {
        return ListIteratorLongListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public long removeElementAt(int i) {
        return ((Number) getList().remove(i)).longValue();
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public long set(int i, long j) {
        return ((Number) getList().set(i, new Long(j))).longValue();
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public LongList subList(int i, int i2) {
        return ListLongList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public boolean equals(Object obj) {
        if (obj instanceof LongList) {
            LongList longList = (LongList) obj;
            if (this == longList) {
                return true;
            }
            if (size() != longList.size()) {
                return false;
            }
            LongIterator it = iterator();
            LongIterator it2 = longList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.LongList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionLongCollection
    protected final Collection getCollection() {
        return getList();
    }
}
