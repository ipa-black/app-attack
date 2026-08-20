package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.regulator.UserConsent;
import com.appodeal.advertising.AdvertisingInfo;
import com.appodeal.consent.Consent;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class x2 {

    /* renamed from: e  reason: collision with root package name */
    public static JSONObject f7899e;

    /* renamed from: g  reason: collision with root package name */
    public static final Set<String> f7901g;

    /* renamed from: h  reason: collision with root package name */
    public static final HashSet f7902h;

    /* renamed from: a  reason: collision with root package name */
    public static final x2 f7895a = new x2();

    /* renamed from: b  reason: collision with root package name */
    public static final Lazy f7896b = LazyKt.lazy(d.f7909a);

    /* renamed from: c  reason: collision with root package name */
    public static final Lazy f7897c = LazyKt.lazy(c.f7908a);

    /* renamed from: d  reason: collision with root package name */
    public static final Lazy f7898d = LazyKt.lazy(b.f7907a);

    /* renamed from: f  reason: collision with root package name */
    public static AdvertisingInfo.AdvertisingProfile f7900f = AdvertisingInfo.DefaultAdvertisingProfile.INSTANCE;

    @DebugMetadata(c = "com.appodeal.ads.PersonalData", f = "PersonalData.kt", i = {0}, l = {58}, m = Constants.INIT, n = {"this"}, s = {"L$0"})
    /* loaded from: classes.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public x2 f7903a;

        /* renamed from: b  reason: collision with root package name */
        public /* synthetic */ Object f7904b;

        /* renamed from: d  reason: collision with root package name */
        public int f7906d;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7904b = obj;
            this.f7906d |= Integer.MIN_VALUE;
            return x2.this.a(null, null, null, this);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Lambda implements Function0<com.appodeal.ads.networking.cache.c> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f7907a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.networking.cache.c invoke() {
            x2.f7895a.getClass();
            return new com.appodeal.ads.networking.cache.c("init_response", x2.b());
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends Lambda implements Function0<com.appodeal.ads.storage.o> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f7908a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.storage.o invoke() {
            return com.appodeal.ads.storage.o.f7663b;
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends Lambda implements Function0<com.appodeal.ads.regulator.i> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f7909a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.regulator.i invoke() {
            return new com.appodeal.ads.regulator.i();
        }
    }

    static {
        Set<String> of = SetsKt.setOf((Object[]) new String[]{"lt", com.appnext.base.b.i.fC, "lon", "ad_stats", "user_settings", Constants.INAPPS});
        f7901g = of;
        f7902h = new HashSet(of);
    }

    public static final String a() {
        return f7900f.getId();
    }

    @JvmStatic
    public static final boolean a(AdvertisingInfo.AdvertisingProfile applyAdvertisingProfile) {
        Intrinsics.checkNotNullParameter(applyAdvertisingProfile, "applyAdvertisingProfile");
        if (f7900f.isLimitAdTrackingEnabled() == applyAdvertisingProfile.isLimitAdTrackingEnabled() && Intrinsics.areEqual(f7900f.getId(), applyAdvertisingProfile.getId())) {
            return false;
        }
        x2 x2Var = f7895a;
        x2Var.getClass();
        boolean z = (e().a() && !g()) || (e().g() && !g());
        f7900f = applyAdvertisingProfile;
        x2Var.getClass();
        return z != ((e().a() && !g()) || (e().g() && !g()));
    }

    @JvmStatic
    public static final boolean a(String str) {
        return CollectionsKt.contains(f7902h, str);
    }

    public static com.appodeal.ads.storage.a b() {
        return (com.appodeal.ads.storage.a) f7897c.getValue();
    }

    @JvmStatic
    public static final void b(JSONObject jSONObject) {
        j4 restrictedData = j4.f6751a;
        Intrinsics.checkNotNullParameter(restrictedData, "restrictedData");
        if (!restrictedData.isUserProtected() || jSONObject == null) {
            return;
        }
        Iterator it = f7902h.iterator();
        while (it.hasNext()) {
            jSONObject.remove((String) it.next());
        }
    }

    @JvmStatic
    public static final Boolean c() {
        f7895a.getClass();
        return e().d();
    }

    public static final void c(JSONObject jSONObject) {
        f7899e = jSONObject;
        f7895a.getClass();
        com.appodeal.ads.storage.a b2 = b();
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "it.toString()");
        b2.b(jSONObject2);
    }

    @JvmStatic
    public static final Consent d() {
        f7895a.getClass();
        return e().c();
    }

    public static com.appodeal.ads.regulator.h e() {
        return (com.appodeal.ads.regulator.h) f7896b.getValue();
    }

    public static final JSONObject f() {
        JSONObject jSONObject = f7899e;
        if (jSONObject == null) {
            f7895a.getClass();
            String a2 = b().a();
            if (a2 == null) {
                return null;
            }
            return new JSONObject(a2);
        }
        return jSONObject;
    }

    @JvmStatic
    public static final boolean g() {
        if (!f7900f.isLimitAdTrackingEnabled()) {
            f7895a.getClass();
            if (e().e()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean h() {
        return f7900f.isAdvertisingIdWasGenerated();
    }

    public static final boolean i() {
        return f7900f.isLimitAdTrackingEnabled();
    }

    @JvmStatic
    public static final boolean j() {
        f7895a.getClass();
        return e().b();
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void a(Boolean bool) {
        x2 x2Var = f7895a;
        x2Var.getClass();
        if (e().a(bool) && q4.f7305c) {
            x2Var.getClass();
            if (!e().a()) {
                x2Var.getClass();
                if (!e().g()) {
                    return;
                }
            }
            r0.d();
        }
    }

    public static void a(Consent consent) {
        if (e().a(consent) && q4.f7305c) {
            x2 x2Var = f7895a;
            x2Var.getClass();
            if (!e().a()) {
                x2Var.getClass();
                if (!e().g()) {
                    return;
                }
            }
            r0.d();
        }
    }

    public static void a(UserConsent publisherZoneConsent) {
        Intrinsics.checkNotNullParameter(publisherZoneConsent, "publisherZoneConsent");
        if (e().a(publisherZoneConsent) && q4.f7305c) {
            x2 x2Var = f7895a;
            x2Var.getClass();
            if (!e().a()) {
                x2Var.getClass();
                if (!e().g()) {
                    return;
                }
            }
            r0.d();
        }
    }

    @JvmStatic
    public static final void a(JSONObject jObject) {
        Intrinsics.checkNotNullParameter(jObject, "jObject");
        f7895a.getClass();
        e().a(jObject);
        HashSet hashSet = f7902h;
        hashSet.clear();
        int i = 0;
        if (jObject.has("gdpr")) {
            JSONObject optJSONObject = jObject.optJSONObject("gdpr");
            if (optJSONObject == null || !optJSONObject.has("do_not_collect")) {
                hashSet.addAll(f7901g);
            } else {
                JSONArray optJSONArray = optJSONObject.optJSONArray("do_not_collect");
                if (optJSONArray != null) {
                    int length = optJSONArray.length();
                    int i2 = 0;
                    while (i2 < length) {
                        int i3 = i2 + 1;
                        String optString = optJSONArray.optString(i2, null);
                        if (optString != null) {
                            f7902h.add(optString);
                        }
                        i2 = i3;
                    }
                }
            }
        }
        if (jObject.has("ccpa")) {
            JSONObject optJSONObject2 = jObject.optJSONObject("ccpa");
            if (optJSONObject2 == null || !optJSONObject2.has("do_not_collect")) {
                f7902h.addAll(f7901g);
                return;
            }
            JSONArray optJSONArray2 = optJSONObject2.optJSONArray("do_not_collect");
            if (optJSONArray2 != null) {
                int length2 = optJSONArray2.length();
                while (i < length2) {
                    int i4 = i + 1;
                    String optString2 = optJSONArray2.optString(i, null);
                    if (optString2 != null) {
                        f7902h.add(optString2);
                    }
                    i = i4;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r5, android.content.Context r6, com.appodeal.advertising.AdvertisingInfo.AdvertisingProfile r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.appodeal.ads.x2.a
            if (r0 == 0) goto L13
            r0 = r8
            com.appodeal.ads.x2$a r0 = (com.appodeal.ads.x2.a) r0
            int r1 = r0.f7906d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7906d = r1
            goto L18
        L13:
            com.appodeal.ads.x2$a r0 = new com.appodeal.ads.x2$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f7904b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7906d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            com.appodeal.ads.x2 r5 = r0.f7903a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            a(r7)
            com.appodeal.ads.regulator.h r7 = e()
            r0.f7903a = r4
            r0.f7906d = r3
            java.lang.Object r5 = r7.a(r6, r5, r0)
            if (r5 != r1) goto L48
            return r1
        L48:
            r5 = r4
        L49:
            r5.getClass()
            kotlin.Lazy r5 = com.appodeal.ads.x2.f7898d
            java.lang.Object r5 = r5.getValue()
            com.appodeal.ads.networking.cache.c r5 = (com.appodeal.ads.networking.cache.c) r5
            org.json.JSONObject r5 = r5.a()
            if (r5 != 0) goto L5b
            goto L5e
        L5b:
            a(r5)
        L5e:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x2.a(java.lang.String, android.content.Context, com.appodeal.advertising.AdvertisingInfo$AdvertisingProfile, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
