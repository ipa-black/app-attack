package com.appodeal.ads.networking.usecases;

import com.appodeal.ads.k0;
import com.appodeal.ads.modules.common.internal.ext.JsonExtKt;
import com.appodeal.ads.modules.common.internal.service.ServiceOptions;
import com.appodeal.ads.networking.b;
import com.google.android.exoplayer2.C;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final k0 f7254a;

    @DebugMetadata(c = "com.appodeal.ads.networking.usecases.GetConfigUseCase", f = "GetConfigUseCase.kt", i = {0}, l = {16}, m = "invoke-IoAF18A", n = {"this"}, s = {"L$0"})
    /* renamed from: com.appodeal.ads.networking.usecases.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0137a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public a f7255a;

        /* renamed from: b  reason: collision with root package name */
        public /* synthetic */ Object f7256b;

        /* renamed from: d  reason: collision with root package name */
        public int f7258d;

        public C0137a(Continuation<? super C0137a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7256b = obj;
            this.f7258d |= Integer.MIN_VALUE;
            Object a2 = a.this.a(this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    public a(k0 appodealNetworkRequestApi) {
        Intrinsics.checkNotNullParameter(appodealNetworkRequestApi, "appodealNetworkRequestApi");
        this.f7254a = appodealNetworkRequestApi;
    }

    public static b a(JSONObject jSONObject) {
        b.C0130b c0130b;
        b.a aVar;
        b.d dVar;
        b.f fVar;
        JSONObject optJSONObject = jSONObject.optJSONObject("appsflyer");
        b.e eVar = null;
        if (optJSONObject == null) {
            c0130b = null;
        } else {
            String optString = optJSONObject.optString("dev_key");
            Intrinsics.checkNotNullExpressionValue(optString, "appsflyerJson.optString(\"dev_key\")");
            String optString2 = optJSONObject.optString(OSOutcomeConstants.APP_ID);
            Intrinsics.checkNotNullExpressionValue(optString2, "appsflyerJson.optString(\"app_id\")");
            String optString3 = optJSONObject.optString("ad_id");
            Intrinsics.checkNotNullExpressionValue(optString3, "appsflyerJson.optString(\"ad_id\")");
            c0130b = new b.C0130b(optString, optString2, optString3, JsonExtKt.asList(optJSONObject.optJSONArray("conversion_keys")), optJSONObject.optBoolean("event_tracking", false), optJSONObject.optBoolean("ad_revenue_tracking", false), optJSONObject.optLong("tmax", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS), optJSONObject.optString("mode"));
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("adjust");
        if (optJSONObject2 == null) {
            aVar = null;
        } else {
            String optString4 = optJSONObject2.optString("app_token");
            Map map = JsonExtKt.toMap(optJSONObject2.optJSONObject("events"));
            String optString5 = optJSONObject2.optString("environment");
            boolean optBoolean = optJSONObject2.optBoolean("event_tracking", false);
            boolean optBoolean2 = optJSONObject2.optBoolean("ad_revenue_tracking", false);
            long optLong = optJSONObject2.optLong("tmax", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
            String optString6 = optJSONObject2.optString("mode");
            Intrinsics.checkNotNullExpressionValue(optString4, "optString(\"app_token\")");
            Intrinsics.checkNotNullExpressionValue(optString5, "optString(\"environment\")");
            aVar = new b.a(optString4, optString5, map, optBoolean, optBoolean2, optLong, optString6);
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("facebook_analytics");
        b.c cVar = optJSONObject3 == null ? null : new b.c(optJSONObject3.optBoolean("event_tracking", false), optJSONObject3.optBoolean("ad_revenue_tracking", false), optJSONObject3.optLong("tmax", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS));
        JSONObject optJSONObject4 = jSONObject.optJSONObject("firebase");
        if (optJSONObject4 == null) {
            dVar = null;
        } else {
            List asList = JsonExtKt.asList(optJSONObject4.optJSONArray("config_keys"));
            Long valueOf = Long.valueOf(optJSONObject4.optLong("expiration_duration"));
            Long l = valueOf.longValue() != 0 ? valueOf : null;
            boolean optBoolean3 = optJSONObject4.optBoolean("event_tracking", false);
            boolean optBoolean4 = optJSONObject4.optBoolean("ad_revenue_tracking", false);
            String optString7 = optJSONObject4.optString("ad_revenue_key", ServiceOptions.Firebase.DefaultAdRevenueKey);
            Intrinsics.checkNotNullExpressionValue(optString7, "firebaseJson.optString(\"…ey\", DefaultAdRevenueKey)");
            dVar = new b.d(asList, l, optBoolean3, optBoolean4, optString7, optJSONObject4.optLong("tmax", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS), optJSONObject4.optString("mode"));
        }
        JSONObject optJSONObject5 = jSONObject.optJSONObject("stack_analytics");
        if (optJSONObject5 == null) {
            fVar = null;
        } else {
            String optString8 = optJSONObject5.optString("crash_log_level", "off");
            String optString9 = optJSONObject5.optString("report_url");
            long optLong2 = optJSONObject5.optLong("report_size");
            String optString10 = optJSONObject5.optString("report_log_level");
            boolean optBoolean5 = optJSONObject5.optBoolean("event_tracking", false);
            long optLong3 = optJSONObject5.optLong("report_interval");
            boolean optBoolean6 = optJSONObject5.optBoolean("is_native_reports_enabled", false);
            long optLong4 = optJSONObject5.optLong("tmax", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS);
            Intrinsics.checkNotNullExpressionValue(optString9, "optString(\"report_url\")");
            Intrinsics.checkNotNullExpressionValue(optString8, "optString(\"crash_log_level\", \"off\")");
            Intrinsics.checkNotNullExpressionValue(optString10, "optString(\"report_log_level\")");
            fVar = new b.f(optString9, optLong2, optString8, optString10, optBoolean5, optLong3, optBoolean6, optLong4);
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("sentry_analytics");
        if (optJSONObject6 != null) {
            String optString11 = optJSONObject6.optString("sentry_dsn");
            Intrinsics.checkNotNullExpressionValue(optString11, "sentryAnalyticJson.optString(\"sentry_dsn\")");
            String optString12 = optJSONObject6.optString("sentry_environment", "production");
            Intrinsics.checkNotNullExpressionValue(optString12, "sentryAnalyticJson.optSt…vironment\", \"production\")");
            boolean optBoolean7 = optJSONObject6.optBoolean("sentry_collect_threads", false);
            boolean optBoolean8 = optJSONObject6.optBoolean("sentry_event_tracking", false);
            String optString13 = optJSONObject6.optString("mds_report_url");
            Intrinsics.checkNotNullExpressionValue(optString13, "sentryAnalyticJson.optString(\"mds_report_url\")");
            eVar = new b.e(optString11, optString12, optBoolean7, optBoolean8, optString13, optJSONObject6.optBoolean("mds_event_tracking", false), optJSONObject6.optLong("tmax", C.DEFAULT_SEEK_FORWARD_INCREMENT_MS));
        }
        return new b(c0130b, aVar, cVar, dVar, fVar, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.Result<com.appodeal.ads.networking.b>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.appodeal.ads.networking.usecases.a.C0137a
            if (r0 == 0) goto L13
            r0 = r5
            com.appodeal.ads.networking.usecases.a$a r0 = (com.appodeal.ads.networking.usecases.a.C0137a) r0
            int r1 = r0.f7258d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7258d = r1
            goto L18
        L13:
            com.appodeal.ads.networking.usecases.a$a r0 = new com.appodeal.ads.networking.usecases.a$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f7256b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7258d
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            com.appodeal.ads.networking.usecases.a r0 = r0.f7255a
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.m510unboximpl()
            goto L4a
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L39:
            kotlin.ResultKt.throwOnFailure(r5)
            com.appodeal.ads.k0 r5 = r4.f7254a
            r0.f7255a = r4
            r0.f7258d = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            r0 = r4
        L4a:
            boolean r1 = kotlin.Result.m508isSuccessimpl(r5)
            if (r1 == 0) goto L87
            kotlin.Result$Companion r1 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L80
            org.json.JSONObject r5 = (org.json.JSONObject) r5     // Catch: java.lang.Throwable -> L80
            java.lang.String r1 = "Required value was null."
            if (r5 == 0) goto L76
            java.lang.String r2 = "services"
            org.json.JSONObject r5 = r5.optJSONObject(r2)     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L6c
            r0.getClass()     // Catch: java.lang.Throwable -> L80
            com.appodeal.ads.networking.b r5 = a(r5)     // Catch: java.lang.Throwable -> L80
            java.lang.Object r5 = kotlin.Result.m501constructorimpl(r5)     // Catch: java.lang.Throwable -> L80
            goto L8b
        L6c:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L80
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> L80
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L80
            throw r5     // Catch: java.lang.Throwable -> L80
        L76:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L80
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> L80
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L80
            throw r5     // Catch: java.lang.Throwable -> L80
        L80:
            r5 = move-exception
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r5 = kotlin.ResultKt.createFailure(r5)
        L87:
            java.lang.Object r5 = kotlin.Result.m501constructorimpl(r5)
        L8b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.networking.usecases.a.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
