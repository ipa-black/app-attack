package com.criteo.publisher.logging;

import android.util.Log;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ConsoleHandler.kt */
/* loaded from: classes2.dex */
public class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private int f8958a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8959b;

    static {
        new a(null);
    }

    public c(com.criteo.publisher.n0.g buildConfigWrapper) {
        Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
        this.f8959b = buildConfigWrapper;
        this.f8958a = -1;
    }

    /* compiled from: ConsoleHandler.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public void b(int i) {
        this.f8958a = i;
    }

    public int a() {
        Integer valueOf = Integer.valueOf(this.f8958a);
        if (valueOf.intValue() == -1) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : this.f8959b.g();
    }

    @Override // com.criteo.publisher.logging.d
    public void a(String tag, e logMessage) {
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(logMessage, "logMessage");
        int a2 = logMessage.a();
        if (a(a2)) {
            String[] strArr = new String[2];
            strArr[0] = logMessage.c();
            Throwable d2 = logMessage.d();
            strArr[1] = d2 != null ? b(d2) : null;
            String joinToString$default = CollectionsKt.joinToString$default(CollectionsKt.listOfNotNull((Object[]) strArr), "\n", null, null, 0, null, null, 62, null);
            if (joinToString$default.length() > 0) {
                a(a2, tag, joinToString$default);
            }
        }
    }

    public void a(int i, String tag, String message) {
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(message, "message");
        Log.println(i, f.a(tag), message);
    }

    private String b(Throwable th) {
        return a(th);
    }

    public String a(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        return Log.getStackTraceString(throwable);
    }

    private boolean a(int i) {
        return i >= a();
    }
}
