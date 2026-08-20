package com.criteo.publisher.i0;

import android.content.SharedPreferences;
import com.criteo.publisher.n0.o;
import com.criteo.publisher.n0.q;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: IntegrationRegistry.kt */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final q f8872a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f8873b;

    /* renamed from: c  reason: collision with root package name */
    private final b f8874c;

    static {
        new a(null);
    }

    public c(SharedPreferences sharedPreferences, b integrationDetector) {
        Intrinsics.checkParameterIsNotNull(sharedPreferences, "sharedPreferences");
        Intrinsics.checkParameterIsNotNull(integrationDetector, "integrationDetector");
        this.f8873b = sharedPreferences;
        this.f8874c = integrationDetector;
        this.f8872a = new q(sharedPreferences);
    }

    public int b() {
        return c().a();
    }

    public void a(com.criteo.publisher.i0.a integration) {
        Intrinsics.checkParameterIsNotNull(integration, "integration");
        this.f8873b.edit().putString("CriteoCachedIntegration", integration.name()).apply();
    }

    public com.criteo.publisher.i0.a c() {
        com.criteo.publisher.i0.a a2 = a();
        if (a2 != null) {
            return a2;
        }
        String a3 = this.f8872a.a("CriteoCachedIntegration", com.criteo.publisher.i0.a.FALLBACK.name());
        if (a3 == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(a3, "safeSharedPreferences.ge…ion.FALLBACK.name\n    )!!");
        try {
            return com.criteo.publisher.i0.a.valueOf(a3);
        } catch (IllegalArgumentException e2) {
            o.a((Throwable) e2);
            return com.criteo.publisher.i0.a.FALLBACK;
        }
    }

    private com.criteo.publisher.i0.a a() {
        boolean b2 = this.f8874c.b();
        boolean a2 = this.f8874c.a();
        if (b2 && a2) {
            return com.criteo.publisher.i0.a.FALLBACK;
        }
        if (b2) {
            return com.criteo.publisher.i0.a.MOPUB_MEDIATION;
        }
        if (a2) {
            return com.criteo.publisher.i0.a.ADMOB_MEDIATION;
        }
        return null;
    }

    /* compiled from: IntegrationRegistry.kt */
    /* loaded from: classes2.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
