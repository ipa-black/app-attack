package org.apache.commons.collections.buffer;

import org.apache.commons.collections.Buffer;
import org.apache.commons.collections.PredicateUtils;
/* loaded from: classes5.dex */
public class TypedBuffer {
    public static Buffer decorate(Buffer buffer, Class cls) {
        return new PredicatedBuffer(buffer, PredicateUtils.instanceofPredicate(cls));
    }

    protected TypedBuffer() {
    }
}
