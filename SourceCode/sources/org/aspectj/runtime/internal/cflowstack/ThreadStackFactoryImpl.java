package org.aspectj.runtime.internal.cflowstack;

import java.util.Stack;
/* loaded from: classes3.dex */
public class ThreadStackFactoryImpl implements ThreadStackFactory {

    /* renamed from: org.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 {
    }

    /* loaded from: classes3.dex */
    private static class ThreadStackImpl extends ThreadLocal implements ThreadStack {
        private ThreadStackImpl() {
        }

        /* synthetic */ ThreadStackImpl(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.lang.ThreadLocal
        public Object initialValue() {
            return new Stack();
        }

        @Override // org.aspectj.runtime.internal.cflowstack.ThreadStack
        public Stack getThreadStack() {
            return (Stack) get();
        }
    }

    @Override // org.aspectj.runtime.internal.cflowstack.ThreadStackFactory
    public ThreadStack getNewThreadStack() {
        return new ThreadStackImpl(null);
    }
}
