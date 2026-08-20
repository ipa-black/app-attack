package org.apache.commons.collections.bag;

import java.util.Set;
import org.apache.commons.collections.Bag;
import org.apache.commons.collections.collection.AbstractCollectionDecorator;
/* loaded from: classes5.dex */
public abstract class AbstractBagDecorator extends AbstractCollectionDecorator implements Bag {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractBagDecorator(Bag bag) {
        super(bag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bag getBag() {
        return (Bag) getCollection();
    }

    @Override // org.apache.commons.collections.Bag
    public int getCount(Object obj) {
        return getBag().getCount(obj);
    }

    @Override // org.apache.commons.collections.Bag
    public boolean add(Object obj, int i) {
        return getBag().add(obj, i);
    }

    @Override // org.apache.commons.collections.Bag
    public boolean remove(Object obj, int i) {
        return getBag().remove(obj, i);
    }

    @Override // org.apache.commons.collections.Bag
    public Set uniqueSet() {
        return getBag().uniqueSet();
    }
}
