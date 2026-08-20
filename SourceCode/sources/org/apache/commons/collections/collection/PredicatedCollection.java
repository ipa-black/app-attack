package org.apache.commons.collections.collection;

import java.util.Collection;
import org.apache.commons.collections.Predicate;
/* loaded from: classes5.dex */
public class PredicatedCollection extends AbstractCollectionDecorator {
    protected final Predicate predicate;

    public static Collection decorate(Collection collection, Predicate predicate) {
        return new PredicatedCollection(collection, predicate);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PredicatedCollection(Collection collection, Predicate predicate) {
        super(collection);
        if (predicate == null) {
            throw new IllegalArgumentException("Predicate must not be null");
        }
        this.predicate = predicate;
        for (Object obj : collection) {
            validate(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void validate(Object obj) {
        if (!this.predicate.evaluate(obj)) {
            throw new IllegalArgumentException(new StringBuffer("Cannot add Object '").append(obj).append("' - Predicate rejected it").toString());
        }
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean add(Object obj) {
        validate(obj);
        return getCollection().add(obj);
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean addAll(Collection collection) {
        for (Object obj : collection) {
            validate(obj);
        }
        return getCollection().addAll(collection);
    }
}
