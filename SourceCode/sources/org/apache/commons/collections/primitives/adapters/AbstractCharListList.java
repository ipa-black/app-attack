package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractCharListList extends AbstractCharCollectionCollection implements List {
    protected abstract CharList getCharList();

    @Override // java.util.List
    public void add(int i, Object obj) {
        getCharList().add(i, ((Character) obj).charValue());
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        return getCharList().addAll(i, CollectionCharCollection.wrap(collection));
    }

    @Override // java.util.List
    public Object get(int i) {
        return new Character(getCharList().get(i));
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return getCharList().indexOf(((Character) obj).charValue());
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return getCharList().lastIndexOf(((Character) obj).charValue());
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return CharListIteratorListIterator.wrap(getCharList().listIterator());
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        return CharListIteratorListIterator.wrap(getCharList().listIterator(i));
    }

    @Override // java.util.List
    public Object remove(int i) {
        return new Character(getCharList().removeElementAt(i));
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        return new Character(getCharList().set(i, ((Character) obj).charValue()));
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        return CharListList.wrap(getCharList().subList(i, i2));
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
        return getCharList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCharCollectionCollection
    protected final CharCollection getCharCollection() {
        return getCharList();
    }
}
