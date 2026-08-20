package org.apache.commons.collections.collection;

import java.util.ArrayList;
import java.util.Collection;
import org.apache.commons.collections.Transformer;
/* loaded from: classes5.dex */
public class TransformedCollection extends AbstractCollectionDecorator {
    protected final Transformer transformer;

    public static Collection decorate(Collection collection, Transformer transformer) {
        return new TransformedCollection(collection, transformer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TransformedCollection(Collection collection, Transformer transformer) {
        super(collection);
        if (transformer == null) {
            throw new IllegalArgumentException("Transformer must not be null");
        }
        this.transformer = transformer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object transform(Object obj) {
        return this.transformer.transform(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection transform(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            arrayList.add(transform(obj));
        }
        return arrayList;
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections.Bag
    public boolean add(Object obj) {
        return getCollection().add(transform(obj));
    }

    @Override // org.apache.commons.collections.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean addAll(Collection collection) {
        return getCollection().addAll(transform(collection));
    }
}
