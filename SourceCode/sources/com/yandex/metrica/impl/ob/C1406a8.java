package com.yandex.metrica.impl.ob;

import android.util.Base64;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.a8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1406a8 {

    /* renamed from: a  reason: collision with root package name */
    private final C1456c8 f14399a;

    /* renamed from: com.yandex.metrica.impl.ob.a8$a */
    /* loaded from: classes5.dex */
    static final class a implements InterfaceC1481d8 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f14400a = new a();

        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1481d8
        public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("device_id", Tl.a(jSONObject, jSONObject2, "device_id"));
            jSONObject3.put("device_id_hash", Tl.a(jSONObject, jSONObject2, "device_id_hash"));
            jSONObject3.put("referrer", Tl.a(jSONObject, jSONObject2, "referrer"));
            jSONObject3.put("referrer_checked", Tl.a(jSONObject2, "referrer_checked", Tl.a(jSONObject, "referrer_checked", Boolean.FALSE)));
            jSONObject3.put(FirebaseAnalytics.Param.LOCATION_ID, Tl.a(jSONObject2, FirebaseAnalytics.Param.LOCATION_ID, Tl.a(jSONObject, FirebaseAnalytics.Param.LOCATION_ID, (Long) (-1L))));
            jSONObject3.put("lbs_id", Tl.a(jSONObject2, "lbs_id", Tl.a(jSONObject, "lbs_id", (Long) (-1L))));
            jSONObject3.put("location_request_id", Tl.a(jSONObject2, "location_request_id", Tl.a(jSONObject, "location_request_id", (Long) (-1L))));
            jSONObject3.put("last_migration_api_level", Tl.a(jSONObject2, "last_migration_api_level", Tl.a(jSONObject, "last_migration_api_level", (Integer) (-1))));
            return jSONObject3;
        }
    }

    public C1406a8(InterfaceC1531f8 interfaceC1531f8, InterfaceC1531f8 interfaceC1531f82) {
        this.f14399a = new C1456c8(interfaceC1531f8, interfaceC1531f82, "[VitalCommonDataProvider]", a.f14400a);
    }

    public final synchronized String a() {
        return Tl.b(this.f14399a.a(), "device_id");
    }

    public final synchronized String b() {
        return Tl.b(this.f14399a.a(), "device_id_hash");
    }

    public final synchronized void c(long j) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put("location_request_id", j);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…CATION_REQUEST_ID, value)");
        c1456c8.a(put);
    }

    public final synchronized long d() {
        return this.f14399a.a().optLong("lbs_id", -1L);
    }

    public final synchronized long e() {
        return this.f14399a.a().optLong(FirebaseAnalytics.Param.LOCATION_ID, -1L);
    }

    public final synchronized long f() {
        return this.f14399a.a().optLong("location_request_id", -1L);
    }

    public final synchronized C1489dg g() {
        C1489dg a2;
        String b2 = Tl.b(this.f14399a.a(), "referrer");
        if (b2 != null) {
            try {
                byte[] bytes = b2.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                a2 = C1489dg.a(Base64.decode(bytes, 0));
            } catch (Throwable unused) {
            }
        }
        a2 = null;
        return a2;
    }

    public final synchronized boolean h() {
        return this.f14399a.a().optBoolean("referrer_checked", false);
    }

    public final synchronized void a(String str) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put("device_id", str);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…put(KEY_DEVICE_ID, value)");
        c1456c8.a(put);
    }

    public final synchronized void b(String str) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put("device_id_hash", str);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…EY_DEVICE_ID_HASH, value)");
        c1456c8.a(put);
    }

    public final synchronized int c() {
        return this.f14399a.a().optInt("last_migration_api_level", -1);
    }

    public final synchronized void a(C1489dg c1489dg) {
        String str;
        C1456c8 c1456c8 = this.f14399a;
        JSONObject a2 = c1456c8.a();
        if (c1489dg != null) {
            byte[] encode = Base64.encode(c1489dg.a(), 0);
            Intrinsics.checkNotNullExpressionValue(encode, "Base64.encode(toProto(), 0)");
            str = new String(encode, Charsets.UTF_8);
        } else {
            str = null;
        }
        JSONObject put = a2.put("referrer", str);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…value?.toEncodedString())");
        c1456c8.a(put);
    }

    public final synchronized void b(long j) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put(FirebaseAnalytics.Param.LOCATION_ID, j);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…t(KEY_LOCATION_ID, value)");
        c1456c8.a(put);
    }

    public final synchronized void a(boolean z) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put("referrer_checked", z);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…_REFERRER_CHECKED, value)");
        c1456c8.a(put);
    }

    public final synchronized void a(long j) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put("lbs_id", j);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…().put(KEY_LBS_ID, value)");
        c1456c8.a(put);
    }

    public final synchronized void a(int i) {
        C1456c8 c1456c8 = this.f14399a;
        JSONObject put = c1456c8.a().put("last_migration_api_level", i);
        Intrinsics.checkNotNullExpressionValue(put, "vitalDataProvider.getOrL…GRATION_API_LEVEL, value)");
        c1456c8.a(put);
    }

    public final synchronized void a(String str, String str2, String str3, Boolean bool, Long l, Long l2, Long l3, Integer num) {
        JSONObject json = new JSONObject().put("device_id", str).put("device_id_hash", str2).put("referrer", str3).put("referrer_checked", bool).put(FirebaseAnalytics.Param.LOCATION_ID, l).put("lbs_id", l2).put("location_request_id", l3).put("last_migration_api_level", num);
        C1456c8 c1456c8 = this.f14399a;
        Intrinsics.checkNotNullExpressionValue(json, "json");
        c1456c8.a(json);
    }
}
