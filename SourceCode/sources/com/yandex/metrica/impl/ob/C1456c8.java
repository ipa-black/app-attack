package com.yandex.metrica.impl.ob;

import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.c8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1456c8 {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f14532a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1531f8 f14533b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1531f8 f14534c;

    /* renamed from: d  reason: collision with root package name */
    private final String f14535d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1481d8 f14536e;

    public C1456c8(InterfaceC1531f8 interfaceC1531f8, InterfaceC1531f8 interfaceC1531f82, String str, InterfaceC1481d8 interfaceC1481d8) {
        this.f14533b = interfaceC1531f8;
        this.f14534c = interfaceC1531f82;
        this.f14535d = str;
        this.f14536e = interfaceC1481d8;
    }

    public final synchronized JSONObject a() {
        JSONObject jSONObject;
        if (this.f14532a == null) {
            JSONObject a2 = this.f14536e.a(a(this.f14533b), a(this.f14534c));
            this.f14532a = a2;
            a(a2);
        }
        jSONObject = this.f14532a;
        if (jSONObject == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fileContents");
        }
        return jSONObject;
    }

    private final JSONObject a(InterfaceC1531f8 interfaceC1531f8) {
        try {
            String c2 = interfaceC1531f8.c();
            return c2 != null ? new JSONObject(c2) : new JSONObject();
        } catch (Throwable th) {
            a(th);
            return new JSONObject();
        }
    }

    public final synchronized void a(JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "contents.toString()");
        this.f14533b.a(jSONObject2);
        this.f14534c.a(jSONObject2);
    }

    private final void a(Throwable th) {
        ((C1739nh) C1764oh.a()).reportEvent("vital_data_provider_exception", MapsKt.mapOf(TuplesKt.to("tag", this.f14535d), TuplesKt.to("exception", Reflection.getOrCreateKotlinClass(th.getClass()).getSimpleName())));
        ((C1739nh) C1764oh.a()).reportError("Error during reading vital data for tag = " + this.f14535d, th);
    }
}
