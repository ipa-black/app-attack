package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.LongCollection;
import org.apache.commons.collections.primitives.LongList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractLongListList extends AbstractLongCollectionCollection implements List {
    protected abstract LongList getLongList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getLongList().add(i, ((Number) obj).longValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getLongList().addAll(i, CollectionLongCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Long(getLongList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getLongList().indexOf(((Number) obj).longValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getLongList().lastIndexOf(((Number) obj).longValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return LongListIteratorListIterator.wrap(getLongList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return LongListIteratorListIterator.wrap(getLongList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Long(getLongList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Long(getLongList().set(i, ((Number) obj).longValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return LongListList.wrap(getLongList().subList(i, i2));
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
        return getLongList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractLongCollectionCollection
    protected final LongCollection getLongCollection() {
        return getLongList();
    }
}
