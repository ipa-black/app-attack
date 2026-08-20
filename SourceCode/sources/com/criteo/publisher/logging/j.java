package com.criteo.publisher.logging;

import android.os.Looper;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.model.t;
import com.criteo.publisher.x;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteHandler.kt */
/* loaded from: classes2.dex */
public class j implements d {

    /* renamed from: a  reason: collision with root package name */
    private final k f8976a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.f0.k<RemoteLogRecords> f8977b;

    /* renamed from: c  reason: collision with root package name */
    private final t f8978c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f8979d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.l0.a f8980e;

    public j(k remoteLogRecordsFactory, com.criteo.publisher.f0.k<RemoteLogRecords> sendingQueue, t config, Executor executor, com.criteo.publisher.l0.a consentData) {
        Intrinsics.checkParameterIsNotNull(remoteLogRecordsFactory, "remoteLogRecordsFactory");
        Intrinsics.checkParameterIsNotNull(sendingQueue, "sendingQueue");
        Intrinsics.checkParameterIsNotNull(config, "config");
        Intrinsics.checkParameterIsNotNull(executor, "executor");
        Intrinsics.checkParameterIsNotNull(consentData, "consentData");
        this.f8976a = remoteLogRecordsFactory;
        this.f8977b = sendingQueue;
        this.f8978c = config;
        this.f8979d = executor;
        this.f8980e = consentData;
    }

    @Override // com.criteo.publisher.logging.d
    public void a(String tag, e logMessage) {
        RemoteLogRecords.RemoteLogLevel a2;
        RemoteLogRecords a3;
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(logMessage, "logMessage");
        if (this.f8980e.b() && (a2 = RemoteLogRecords.RemoteLogLevel.Companion.a(logMessage.a())) != null) {
            RemoteLogRecords.RemoteLogLevel f2 = this.f8978c.f();
            Intrinsics.checkExpressionValueIsNotNull(f2, "config.remoteLogLevel");
            if (a2.compareTo(f2) < 0) {
                a2 = null;
            }
            if (a2 == null || (a3 = this.f8976a.a(logMessage)) == null) {
                return;
            }
            if (a()) {
                this.f8979d.execute(new a(a3, this));
            } else {
                this.f8977b.a((com.criteo.publisher.f0.k<RemoteLogRecords>) a3);
            }
        }
    }

    /* compiled from: RemoteHandler.kt */
    /* loaded from: classes2.dex */
    public static final class a extends x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ RemoteLogRecords f8981c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ j f8982d;

        a(RemoteLogRecords remoteLogRecords, j jVar) {
            this.f8981c = remoteLogRecords;
            this.f8982d = jVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            this.f8982d.f8977b.a((com.criteo.publisher.f0.k) this.f8981c);
        }
    }

    public boolean a() {
        Thread currentThread = Thread.currentThread();
        Looper mainLooper = Looper.getMainLooper();
        return Intrinsics.areEqual(currentThread, mainLooper != null ? mainLooper.getThread() : null);
    }
}
