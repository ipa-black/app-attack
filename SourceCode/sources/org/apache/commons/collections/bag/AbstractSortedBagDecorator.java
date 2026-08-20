package org.apache.commons.collections.bag;

import java.util.Comparator;
import org.apache.commons.collections.SortedBag;
/* loaded from: classes5.dex */
public abstract class AbstractSortedBagDecorator extends AbstractBagDecorator implements SortedBag {
    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSortedBagDecorator(SortedBag sortedBag) {
        super(sortedBag);
    }

    protected SortedBag getSortedBag() {
        return (SortedBag) getCollection();
    }

    @Override // org.apache.commons.collections.SortedBag
    public Object first() {
        return getSortedBag().first();
    }

    @Override // org.apache.commons.collections.SortedBag
    public Object last() {
        return getSortedBag().last();
    }

    @Override // org.apache.commons.collections.SortedBag
    public Comparator comparator() {
        return getSortedBag().comparator();
    }
}
