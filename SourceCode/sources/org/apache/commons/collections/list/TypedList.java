package org.apache.commons.collections.list;

import java.util.List;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedList {
    public static List decorate(List list, Class cls) {
        return new PredicatedList(list, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedList() {
    }
}
