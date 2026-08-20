package com.criteo.publisher.logging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.z;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteLogRecordsFactory.kt */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleDateFormat f8983a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8984b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f8985c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.n0.b f8986d;

    /* renamed from: e  reason: collision with root package name */
    private final z f8987e;

    /* renamed from: f  reason: collision with root package name */
    private final com.criteo.publisher.i0.c f8988f;

    /* renamed from: g  reason: collision with root package name */
    private final com.criteo.publisher.i f8989g;

    /* renamed from: h  reason: collision with root package name */
    private final i f8990h;

    public k(com.criteo.publisher.n0.g buildConfigWrapper, Context context, com.criteo.publisher.n0.b advertisingInfo, z session, com.criteo.publisher.i0.c integrationRegistry, com.criteo.publisher.i clock, i publisherCodeRemover) {
        Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(advertisingInfo, "advertisingInfo");
        Intrinsics.checkParameterIsNotNull(session, "session");
        Intrinsics.checkParameterIsNotNull(integrationRegistry, "integrationRegistry");
        Intrinsics.checkParameterIsNotNull(clock, "clock");
        Intrinsics.checkParameterIsNotNull(publisherCodeRemover, "publisherCodeRemover");
        this.f8984b = buildConfigWrapper;
        this.f8985c = context;
        this.f8986d = advertisingInfo;
        this.f8987e = session;
        this.f8988f = integrationRegistry;
        this.f8989g = clock;
        this.f8990h = publisherCodeRemover;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ROOT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f8983a = simpleDateFormat;
    }

    public RemoteLogRecords a(e logMessage) {
        Class<?> cls;
        Intrinsics.checkParameterIsNotNull(logMessage, "logMessage");
        RemoteLogRecords.RemoteLogLevel a2 = RemoteLogRecords.RemoteLogLevel.Companion.a(logMessage.a());
        String b2 = b(logMessage);
        String str = null;
        if (a2 == null || b2 == null) {
            return null;
        }
        RemoteLogRecords.b bVar = new RemoteLogRecords.b(a2, CollectionsKt.listOf(b2));
        String q = this.f8984b.q();
        Intrinsics.checkExpressionValueIsNotNull(q, "buildConfigWrapper.sdkVersion");
        String packageName = this.f8985c.getPackageName();
        Intrinsics.checkExpressionValueIsNotNull(packageName, "context.packageName");
        String b3 = this.f8986d.b();
        String b4 = this.f8987e.b();
        int b5 = this.f8988f.b();
        Throwable d2 = logMessage.d();
        if (d2 != null && (cls = d2.getClass()) != null) {
            str = cls.getSimpleName();
        }
        return new RemoteLogRecords(new RemoteLogRecords.a(q, packageName, b3, b4, b5, str, logMessage.b(), "android-" + Build.VERSION.SDK_INT), CollectionsKt.listOf(bVar));
    }

    public String b(e logMessage) {
        Intrinsics.checkParameterIsNotNull(logMessage, "logMessage");
        if (logMessage.c() == null && logMessage.d() == null) {
            return null;
        }
        String format = this.f8983a.format(new Date(this.f8989g.a()));
        String[] strArr = new String[4];
        strArr[0] = logMessage.c();
        Throwable d2 = logMessage.d();
        strArr[1] = d2 != null ? b(d2) : null;
        strArr[2] = "threadId:" + a();
        strArr[3] = format;
        List listOfNotNull = CollectionsKt.listOfNotNull((Object[]) strArr);
        List list = listOfNotNull.isEmpty() ^ true ? listOfNotNull : null;
        if (list != null) {
            return CollectionsKt.joinToString$default(list, ",", null, null, 0, null, null, 62, null);
        }
        return null;
    }

    public String a() {
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkExpressionValueIsNotNull(currentThread, "Thread.currentThread()");
        String name = currentThread.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "Thread.currentThread().name");
        return name;
    }

    private String b(Throwable th) {
        return a(this.f8990h.c(th));
    }

    public String a(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        return Log.getStackTraceString(throwable);
    }
}
