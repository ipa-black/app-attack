package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.ByteCollection;
import org.apache.commons.collections.primitives.ByteIterator;
import org.apache.commons.collections.primitives.ByteList;
import org.apache.commons.collections.primitives.ByteListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListByteList extends AbstractCollectionByteCollection implements ByteList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.ByteList
    public void add(int i, byte b2) {
        getList().add(i, new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public boolean addAll(int i, ByteCollection byteCollection) {
        return getList().addAll(i, ByteCollectionCollection.wrap(byteCollection));
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public byte get(int i) {
        return ((Number) getList().get(i)).byteValue();
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int indexOf(byte b2) {
        return getList().indexOf(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int lastIndexOf(byte b2) {
        return getList().lastIndexOf(new Byte(b2));
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator() {
        return ListIteratorByteListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteListIterator listIterator(int i) {
        return ListIteratorByteListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public byte removeElementAt(int i) {
        return ((Number) getList().remove(i)).byteValue();
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public byte set(int i, byte b2) {
        return ((Number) getList().set(i, new Byte(b2))).byteValue();
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public ByteList subList(int i, int i2) {
        return ListByteList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public boolean equals(Object obj) {
        if (obj instanceof ByteList) {
            ByteList byteList = (ByteList) obj;
            if (this == byteList) {
                return true;
            }
            if (size() != byteList.size()) {
                return false;
            }
            ByteIterator it = iterator();
            ByteIterator it2 = byteList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.ByteList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionByteCollection
    protected final Collection getCollection() {
        return getList();
    }
}
