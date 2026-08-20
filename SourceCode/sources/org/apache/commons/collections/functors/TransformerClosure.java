package org.apache.commons.collections.functors;

import java.io.Serializable;
import org.apache.commons.collections.Closure;
import org.apache.commons.collections.Transformer;
/* loaded from: classes5.dex */
public class TransformerClosure implements Closure, Serializable {
    static final long serialVersionUID = -5194992589193388969L;
    private final Transformer iTransformer;

    public static Closure getInstance(Transformer transformer) {
        if (transformer == null) {
            return NOPClosure.INSTANCE;
        }
        return new TransformerClosure(transformer);
    }

    public TransformerClosure(Transformer transformer) {
        this.iTransformer = transformer;
    }

    @Override // org.apache.commons.collections.Closure
    public void execute(Object obj) {
        this.iTransformer.transform(obj);
    }
}
