package org.apache.commons.collections.iterators;

import java.util.Iterator;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class UniqueFilterIterator extends FilterIterator {
    public UniqueFilterIterator(Iterator it) {
        super(it, PredicateUtils.uniquePredicate());
    }
}
