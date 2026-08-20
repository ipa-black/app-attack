package com.criteo.publisher.e0;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AsyncResources.kt */
/* loaded from: classes2.dex */
public abstract class a {
    protected abstract void a();

    protected abstract void b();

    public final void a(Function1<? super C0246a, Unit> resourceHandler) {
        Intrinsics.checkParameterIsNotNull(resourceHandler, "resourceHandler");
        C0246a c0246a = new C0246a();
        try {
            resourceHandler.invoke(c0246a);
        } catch (Throwable th) {
            c0246a.a();
            throw th;
        }
    }

    /* compiled from: AsyncResources.kt */
    /* renamed from: com.criteo.publisher.e0.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0246a {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicBoolean f8722a = new AtomicBoolean(false);

        public C0246a() {
            a.this.a();
        }

        public final void a() {
            if (this.f8722a.compareAndSet(false, true)) {
                a.this.b();
            }
        }
    }
}
