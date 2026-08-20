package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Factory;
import org.apache.commons.collections.FunctorException;
/* loaded from: classes5.dex */
public final class ExceptionFactory implements Factory, Serializable {
    public static final Factory INSTANCE = new ExceptionFactory();
    static final long serialVersionUID = 7179106032121985545L;

    private ExceptionFactory() {
    }

    @Override // org.apache.commons.collections.Factory
    public Object create() {
        throw new FunctorException("ExceptionFactory invoked");
    }
}
