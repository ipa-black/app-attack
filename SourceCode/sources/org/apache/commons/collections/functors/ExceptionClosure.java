package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Closure;
import org.apache.commons.collections.FunctorException;
/* loaded from: classes5.dex */
public final class ExceptionClosure implements Closure, Serializable {
    public static final Closure INSTANCE = new ExceptionClosure();
    static final long serialVersionUID = 7179106032121985545L;

    private ExceptionClosure() {
    }

    @Override // org.apache.commons.collections.Closure
    public void execute(Object obj) {
        throw new FunctorException("ExceptionClosure invoked");
    }
}
