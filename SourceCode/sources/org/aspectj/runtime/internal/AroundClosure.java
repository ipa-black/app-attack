package org.aspectj.runtime.internal;
/* loaded from: classes3.dex */
public abstract class AroundClosure {
    protected Object[] preInitializationState;
    protected Object[] state;

    public abstract Object run(Object[] objArr) throws Throwable;

    public AroundClosure() {
    }

    public AroundClosure(Object[] objArr) {
        this.state = objArr;
    }

    public Object[] getPreInitializationState() {
        return this.preInitializationState;
    }
}
