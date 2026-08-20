package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.CharCollection;
import org.apache.commons.collections.primitives.CharIterator;
import org.apache.commons.collections.primitives.CharList;
import org.apache.commons.collections.primitives.CharListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListCharList extends AbstractCollectionCharCollection implements CharList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.CharList
    public void add(int i, char c2) {
        getList().add(i, new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public boolean addAll(int i, CharCollection charCollection) {
        return getList().addAll(i, CharCollectionCollection.wrap(charCollection));
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public char get(int i) {
        return ((Character) getList().get(i)).charValue();
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int indexOf(char c2) {
        return getList().indexOf(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int lastIndexOf(char c2) {
        return getList().lastIndexOf(new Character(c2));
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator() {
        return ListIteratorCharListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharListIterator listIterator(int i) {
        return ListIteratorCharListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public char removeElementAt(int i) {
        return ((Character) getList().remove(i)).charValue();
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public char set(int i, char c2) {
        return ((Character) getList().set(i, new Character(c2))).charValue();
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public CharList subList(int i, int i2) {
        return ListCharList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public boolean equals(Object obj) {
        if (obj instanceof CharList) {
            CharList charList = (CharList) obj;
            if (this == charList) {
                return true;
            }
            if (size() != charList.size()) {
                return false;
            }
            CharIterator it = iterator();
            CharIterator it2 = charList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.CharList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionCharCollection
    protected final Collection getCollection() {
        return getList();
    }
}
