package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.e8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1506e8 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, C1431b8> f14650a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final B0 f14651b;

    /* renamed from: c  reason: collision with root package name */
    private final Q7 f14652c;

    /* renamed from: d  reason: collision with root package name */
    private final C1406a8 f14653d;

    /* renamed from: e  reason: collision with root package name */
    private final C1406a8 f14654e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f14655f;

    public C1506e8(Context context) {
        this.f14655f = context;
        B0 b0 = new B0();
        this.f14651b = b0;
        Q7 q7 = new Q7(context, "appmetrica_vital.dat", b0);
        this.f14652c = q7;
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        C1507e9 s = g2.s();
        Intrinsics.checkNotNullExpressionValue(s, "GlobalServiceLocator.get…ance().servicePreferences");
        this.f14653d = new C1406a8(s, q7);
        C1632ja a2 = C1632ja.a(context);
        Intrinsics.checkNotNullExpressionValue(a2, "DatabaseStorageFactory.getInstance(context)");
        this.f14654e = new C1406a8(new C1507e9(a2.j()), q7);
    }

    public final C1406a8 a() {
        return this.f14653d;
    }

    public final C1406a8 b() {
        return this.f14654e;
    }

    public final synchronized C1431b8 a(I3 i3) {
        C1431b8 c1431b8;
        String valueOf = String.valueOf(i3.a());
        Map<String, C1431b8> map = this.f14650a;
        c1431b8 = map.get(valueOf);
        if (c1431b8 == null) {
            c1431b8 = new C1431b8(new C1457c9(C1632ja.a(this.f14655f).b(i3)), new Q7(this.f14655f, "appmetrica_vital_" + i3.a() + ".dat", this.f14651b), valueOf);
            map.put(valueOf, c1431b8);
        }
        return c1431b8;
    }
}
