package org.apache.commons.collections.functors;

import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.collections.Closure;
import org.apache.commons.collections.Predicate;
import org.apache.commons.collections.Transformer;
/* loaded from: classes5.dex */
class FunctorUtils {
    private FunctorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Predicate[] copy(Predicate[] predicateArr) {
        if (predicateArr == null) {
            return null;
        }
        return (Predicate[]) predicateArr.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validate(Predicate[] predicateArr) {
        if (predicateArr == null) {
            throw new IllegalArgumentException("The predicate array must not be null");
        }
        for (int i = 0; i < predicateArr.length; i++) {
            if (predicateArr[i] == null) {
                throw new IllegalArgumentException(new StringBuffer("The predicate array must not contain a null predicate, index ").append(i).append(" was null").toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validateMin2(Predicate[] predicateArr) {
        if (predicateArr == null) {
            throw new IllegalArgumentException("The predicate array must not be null");
        }
        if (predicateArr.length < 2) {
            throw new IllegalArgumentException(new StringBuffer("At least 2 predicates must be specified in the predicate array, size was ").append(predicateArr.length).toString());
        }
        for (int i = 0; i < predicateArr.length; i++) {
            if (predicateArr[i] == null) {
                throw new IllegalArgumentException(new StringBuffer("The predicate array must not contain a null predicate, index ").append(i).append(" was null").toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Predicate[] validate(Collection collection) {
        if (collection == null) {
            throw new IllegalArgumentException("The predicate collection must not be null");
        }
        if (collection.size() < 2) {
            throw new IllegalArgumentException(new StringBuffer("At least 2 predicates must be specified in the predicate collection, size was ").append(collection.size()).toString());
        }
        Predicate[] predicateArr = new Predicate[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            Predicate predicate = (Predicate) it.next();
            predicateArr[i] = predicate;
            if (predicate == null) {
                throw new IllegalArgumentException(new StringBuffer("The predicate collection must not contain a null predicate, index ").append(i).append(" was null").toString());
            }
            i++;
        }
        return predicateArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Closure[] copy(Closure[] closureArr) {
        if (closureArr == null) {
            return null;
        }
        return (Closure[]) closureArr.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validate(Closure[] closureArr) {
        if (closureArr == null) {
            throw new IllegalArgumentException("The closure array must not be null");
        }
        for (int i = 0; i < closureArr.length; i++) {
            if (closureArr[i] == null) {
                throw new IllegalArgumentException(new StringBuffer("The closure array must not contain a null closure, index ").append(i).append(" was null").toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Transformer[] copy(Transformer[] transformerArr) {
        if (transformerArr == null) {
            return null;
        }
        return (Transformer[]) transformerArr.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validate(Transformer[] transformerArr) {
        if (transformerArr == null) {
            throw new IllegalArgumentException("The transformer array must not be null");
        }
        for (int i = 0; i < transformerArr.length; i++) {
            if (transformerArr[i] == null) {
                throw new IllegalArgumentException(new StringBuffer("The transformer array must not contain a null transformer, index ").append(i).append(" was null").toString());
            }
        }
    }
}
