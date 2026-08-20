package org.apache.commons.collections.primitives.adapters;

import java.util.Collection;
import java.util.List;
import org.apache.commons.collections.primitives.FloatCollection;
import org.apache.commons.collections.primitives.FloatIterator;
import org.apache.commons.collections.primitives.FloatList;
import org.apache.commons.collections.primitives.FloatListIterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractListFloatList extends AbstractCollectionFloatCollection implements FloatList {
    protected abstract List getList();

    @Override // org.apache.commons.collections.primitives.FloatList
    public void add(int i, float f2) {
        getList().add(i, new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public boolean addAll(int i, FloatCollection floatCollection) {
        return getList().addAll(i, FloatCollectionCollection.wrap(floatCollection));
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public float get(int i) {
        return ((Number) getList().get(i)).floatValue();
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int indexOf(float f2) {
        return getList().indexOf(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int lastIndexOf(float f2) {
        return getList().lastIndexOf(new Float(f2));
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator() {
        return ListIteratorFloatListIterator.wrap(getList().listIterator());
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatListIterator listIterator(int i) {
        return ListIteratorFloatListIterator.wrap(getList().listIterator(i));
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public float removeElementAt(int i) {
        return ((Number) getList().remove(i)).floatValue();
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public float set(int i, float f2) {
        return ((Number) getList().set(i, new Float(f2))).floatValue();
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public FloatList subList(int i, int i2) {
        return ListFloatList.wrap(getList().subList(i, i2));
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public boolean equals(Object obj) {
        if (obj instanceof FloatList) {
            FloatList floatList = (FloatList) obj;
            if (this == floatList) {
                return true;
            }
            if (size() != floatList.size()) {
                return false;
            }
            FloatIterator it = iterator();
            FloatIterator it2 = floatList.iterator();
            while (it.hasNext()) {
                if (it.next() != it2.next()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.collections.primitives.FloatList
    public int hashCode() {
        return getList().hashCode();
    }

    @Override // org.apache.commons.collections.primitives.adapters.AbstractCollectionFloatCollection
    protected final Collection getCollection() {
        return getList();
    }
}
