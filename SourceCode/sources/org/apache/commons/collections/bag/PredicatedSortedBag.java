package org.apache.commons.collections.bag;

import java.util.Comparator;
import org.apache.commons.collections.Predicate;
import org.apache.commons.collections.SortedBag;
/* loaded from: classes5.dex */
public class PredicatedSortedBag extends PredicatedBag implements SortedBag {
    public static SortedBag decorate(SortedBag sortedBag, Predicate predicate) {
        return new PredicatedSortedBag(sortedBag, predicate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PredicatedSortedBag(SortedBag sortedBag, Predicate predicate) {
        super(sortedBag, predicate);
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
