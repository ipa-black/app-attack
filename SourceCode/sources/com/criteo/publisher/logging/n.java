package com.criteo.publisher.logging;

import com.criteo.publisher.x;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteLogSendingQueueConsumer.kt */
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.f0.k<RemoteLogRecords> f8994a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.k0.g f8995b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8996c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.n0.b f8997d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f8998e;

    public n(com.criteo.publisher.f0.k<RemoteLogRecords> sendingQueue, com.criteo.publisher.k0.g api, com.criteo.publisher.n0.g buildConfigWrapper, com.criteo.publisher.n0.b advertisingInfo, Executor executor) {
        Intrinsics.checkParameterIsNotNull(sendingQueue, "sendingQueue");
        Intrinsics.checkParameterIsNotNull(api, "api");
        Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
        Intrinsics.checkParameterIsNotNull(advertisingInfo, "advertisingInfo");
        Intrinsics.checkParameterIsNotNull(executor, "executor");
        this.f8994a = sendingQueue;
        this.f8995b = api;
        this.f8996c = buildConfigWrapper;
        this.f8997d = advertisingInfo;
        this.f8998e = executor;
    }

    public void a() {
        this.f8998e.execute(new a(this.f8994a, this.f8995b, this.f8996c, this.f8997d));
    }

    /* compiled from: RemoteLogSendingQueueConsumer.kt */
    /* loaded from: classes2.dex */
    public static final class a extends x {

        /* renamed from: c  reason: collision with root package name */
        private final com.criteo.publisher.f0.k<RemoteLogRecords> f8999c;

        /* renamed from: d  reason: collision with root package name */
        private final com.criteo.publisher.k0.g f9000d;

        /* renamed from: e  reason: collision with root package name */
        private final com.criteo.publisher.n0.g f9001e;

        /* renamed from: f  reason: collision with root package name */
        private final com.criteo.publisher.n0.b f9002f;

        public a(com.criteo.publisher.f0.k<RemoteLogRecords> sendingQueue, com.criteo.publisher.k0.g api, com.criteo.publisher.n0.g buildConfigWrapper, com.criteo.publisher.n0.b advertisingInfo) {
            Intrinsics.checkParameterIsNotNull(sendingQueue, "sendingQueue");
            Intrinsics.checkParameterIsNotNull(api, "api");
            Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
            Intrinsics.checkParameterIsNotNull(advertisingInfo, "advertisingInfo");
            this.f8999c = sendingQueue;
            this.f9000d = api;
            this.f9001e = buildConfigWrapper;
            this.f9002f = advertisingInfo;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            List<RemoteLogRecords> a2 = this.f8999c.a(this.f9001e.o());
            if (a2.isEmpty()) {
                return;
            }
            try {
                a(a2);
                this.f9000d.a(a2);
            } catch (Throwable th) {
                for (RemoteLogRecords remoteLogRecords : a2) {
                    this.f8999c.a((com.criteo.publisher.f0.k<RemoteLogRecords>) remoteLogRecords);
                }
                throw th;
            }
        }

        private final void a(List<? extends RemoteLogRecords> list) {
            String b2 = this.f9002f.b();
            if (b2 != null) {
                for (RemoteLogRecords remoteLogRecords : list) {
                    if (remoteLogRecords.a().b() == null) {
                        remoteLogRecords.a().a(b2);
                    }
                }
            }
        }
    }
}
