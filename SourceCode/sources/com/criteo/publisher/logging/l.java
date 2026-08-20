package com.criteo.publisher.logging;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteLogSendingQueue.kt */
/* loaded from: classes2.dex */
public interface l extends com.criteo.publisher.f0.k<RemoteLogRecords> {

    /* compiled from: RemoteLogSendingQueue.kt */
    /* loaded from: classes2.dex */
    public static class a implements l {

        /* renamed from: a  reason: collision with root package name */
        private final com.criteo.publisher.f0.k<RemoteLogRecords> f8991a;

        public a(com.criteo.publisher.f0.k<RemoteLogRecords> delegate) {
            Intrinsics.checkParameterIsNotNull(delegate, "delegate");
            this.f8991a = delegate;
        }

        @Override // com.criteo.publisher.f0.k
        public boolean a(RemoteLogRecords element) {
            Intrinsics.checkParameterIsNotNull(element, "element");
            return this.f8991a.a((com.criteo.publisher.f0.k<RemoteLogRecords>) element);
        }

        @Override // com.criteo.publisher.f0.k
        public List<RemoteLogRecords> a(int i) {
            return this.f8991a.a(i);
        }

        @Override // com.criteo.publisher.f0.k
        public int a() {
            return this.f8991a.a();
        }
    }
}
