package com.appodeal.consent.internal;

import android.content.Context;
import com.appodeal.consent.Consent;
import com.appodeal.consent.IConsentInfoUpdateListener;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: d  reason: collision with root package name */
    public static boolean f8126d;

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f8123a = LazyKt.lazy(a.f8128a);

    /* renamed from: b  reason: collision with root package name */
    public static final CoroutineScope f8124b = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());

    /* renamed from: c  reason: collision with root package name */
    public static String f8125c = new String();

    /* renamed from: e  reason: collision with root package name */
    public static Consent f8127e = new Consent(null, null, 0, null, 0, 0, null, null, null, 511, null);

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f8128a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final k invoke() {
            return new k();
        }
    }

    public static final k a() {
        return (k) f8123a.getValue();
    }

    public static void a(Context context, String appKey, IConsentInfoUpdateListener listener, Consent consent, Consent.Status status, Consent.Zone zone) {
        Consent a2;
        Consent consent2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (consent != null) {
            consent2 = consent;
        } else {
            if (status == null || zone == null) {
                a2 = b.a(Consent.Companion, context);
                if (a2 == null) {
                    a2 = f8127e;
                }
            } else {
                a2 = new Consent(status, zone, 0, null, 0L, 0L, null, null, null, 508, null);
            }
            consent2 = a2;
        }
        BuildersKt.launch$default(f8124b, null, null, new f(appKey, context, consent2, listener, null), 3, null);
    }

    public static void a(Consent consent) {
        Intrinsics.checkNotNullParameter(consent, "<set-?>");
        f8127e = consent;
    }

    public static void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f8125c = str;
    }

    public static void a(boolean z) {
        f8126d = z;
    }

    public static Consent b() {
        return f8127e;
    }
}
