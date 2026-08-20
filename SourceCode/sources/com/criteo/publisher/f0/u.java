package com.criteo.publisher.f0;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MetricSendingQueue.kt */
/* loaded from: classes2.dex */
public interface u extends k<n> {

    /* compiled from: MetricSendingQueue.kt */
    /* loaded from: classes2.dex */
    public static final class a implements u {

        /* renamed from: a  reason: collision with root package name */
        private final k<n> f8823a;

        public a(k<n> delegate) {
            Intrinsics.checkParameterIsNotNull(delegate, "delegate");
            this.f8823a = delegate;
        }

        @Override // com.criteo.publisher.f0.k
        public boolean a(n element) {
            Intrinsics.checkParameterIsNotNull(element, "element");
            return this.f8823a.a((k<n>) element);
        }

        @Override // com.criteo.publisher.f0.k
        public List<n> a(int i) {
            return this.f8823a.a(i);
        }

        @Override // com.criteo.publisher.f0.k
        public int a() {
            return this.f8823a.a();
        }
    }
}
