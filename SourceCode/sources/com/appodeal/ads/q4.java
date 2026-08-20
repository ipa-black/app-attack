package com.appodeal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import android.widget.FrameLayout;
import com.appodeal.ads.Native;
import com.appodeal.ads.UserSettings;
import com.appodeal.ads.h2;
import com.appodeal.ads.inapp.InAppPurchase;
import com.appodeal.ads.inapp.InAppPurchaseValidateCallback;
import com.appodeal.ads.initializing.ApdInitializationCallback;
import com.appodeal.ads.initializing.ApdInitializationError;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.modules.common.internal.domain.ParsePriceUseCase;
import com.appodeal.ads.modules.libs.network.NetworkStatus;
import com.appodeal.ads.o1;
import com.appodeal.ads.o4;
import com.appodeal.ads.regulator.UserConsent;
import com.appodeal.ads.revenue.AdRevenueCallbacks;
import com.appodeal.ads.revenue.RevenueInfo;
import com.appodeal.ads.rewarded.Reward;
import com.appodeal.ads.t0;
import com.appodeal.ads.unified.UnifiedAd;
import com.appodeal.ads.unified.UnifiedAdCallback;
import com.appodeal.ads.unified.UnifiedAdParams;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.x;
import com.appodeal.ads.w2;
import com.appodeal.consent.Consent;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
/* loaded from: classes.dex */
public final class q4 {

    /* renamed from: b */
    public static boolean f7304b;

    /* renamed from: c */
    public static boolean f7305c;

    /* renamed from: d */
    public static TestActivity f7306d;

    /* renamed from: f */
    public static AdRevenueCallbacks f7308f;

    /* renamed from: h */
    public static String f7310h;
    public static String i;

    /* renamed from: a */
    public static final q4 f7303a = new q4();

    /* renamed from: e */
    public static final Lazy f7307e = LazyKt.lazy(e.f7324a);

    /* renamed from: g */
    public static String f7309g = MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID;
    public static final Lazy j = LazyKt.lazy(g.f7326a);
    public static final Lazy k = LazyKt.lazy(a.f7311a);
    public static final LinkedHashSet l = new LinkedHashSet();
    public static final Lazy m = LazyKt.lazy(f.f7325a);
    public static final Lazy n = LazyKt.lazy(d.f7323a);
    public static final MutableStateFlow<Boolean> o = StateFlowKt.MutableStateFlow(Boolean.FALSE);
    public static final ArrayList p = new ArrayList();

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function0<List<? extends u<? extends l<? extends r<? extends l<?, ?, ?, ?>>, ? extends UnifiedAd<? extends UnifiedAdParams, ? extends UnifiedAdCallback, ? extends Object>, ? extends UnifiedAdParams, ? extends UnifiedAdCallback>, ? extends r<? extends l<? extends r<?>, ? extends UnifiedAd<?, ?, ?>, ? extends UnifiedAdParams, ? extends UnifiedAdCallback>>, ? extends s<?>>>> {

        /* renamed from: a */
        public static final a f7311a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final List<? extends u<? extends l<? extends r<? extends l<?, ?, ?, ?>>, ? extends UnifiedAd<? extends UnifiedAdParams, ? extends UnifiedAdCallback, ? extends Object>, ? extends UnifiedAdParams, ? extends UnifiedAdCallback>, ? extends r<? extends l<? extends r<?>, ? extends UnifiedAd<?, ?, ?>, ? extends UnifiedAdParams, ? extends UnifiedAdCallback>>, ? extends s<?>>> invoke() {
            return CollectionsKt.listOf((Object[]) new u[]{t0.a(), Native.a(), o1.a(), w2.a(), o4.a(), h2.a()});
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.SdkCore$logEvent$1", f = "SdkCore.kt", i = {}, l = {810}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        public int f7312a;

        /* renamed from: b */
        public final /* synthetic */ String f7313b;

        /* renamed from: c */
        public final /* synthetic */ Map<String, Object> f7314c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Map<String, ? extends Object> map, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f7313b = str;
            this.f7314c = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f7313b, this.f7314c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7312a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.appodeal.ads.services.c c2 = q4.c(q4.f7303a);
                String str = this.f7313b;
                Map<String, ? extends Object> map = this.f7314c;
                this.f7312a = 1;
                if (c2.a(str, map, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.SdkCore$onImpression$1", f = "SdkCore.kt", i = {0}, l = {851}, m = "invokeSuspend", n = {"revenueInfo"}, s = {"L$0"})
    /* loaded from: classes.dex */
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        public RevenueInfo f7315a;

        /* renamed from: b */
        public int f7316b;

        /* renamed from: c */
        public final /* synthetic */ String f7317c;

        /* renamed from: d */
        public final /* synthetic */ String f7318d;

        /* renamed from: e */
        public final /* synthetic */ String f7319e;

        /* renamed from: f */
        public final /* synthetic */ com.appodeal.ads.segments.g f7320f;

        /* renamed from: g */
        public final /* synthetic */ double f7321g;

        /* renamed from: h */
        public final /* synthetic */ AdType f7322h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, String str2, String str3, com.appodeal.ads.segments.g gVar, double d2, AdType adType, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f7317c = str;
            this.f7318d = str2;
            this.f7319e = str3;
            this.f7320f = gVar;
            this.f7321g = d2;
            this.f7322h = adType;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new c(this.f7317c, this.f7318d, this.f7319e, this.f7320f, this.f7321g, this.f7322h, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            RevenueInfo revenueInfo;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7316b;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String str = this.f7317c;
                String str2 = str == null ? "" : str;
                String str3 = this.f7318d;
                String str4 = str3 == null ? "" : str3;
                String str5 = this.f7319e;
                String str6 = str5 == null ? "" : str5;
                com.appodeal.ads.segments.g gVar = this.f7320f;
                String b2 = gVar == null ? null : gVar.b();
                RevenueInfo revenueInfo2 = new RevenueInfo(str2, str4, str6, b2 == null ? "" : b2, this.f7321g / 1000, this.f7322h.getCode(), this.f7322h.getCodeName());
                com.appodeal.ads.services.c c2 = q4.c(q4.f7303a);
                this.f7315a = revenueInfo2;
                this.f7316b = 1;
                if (c2.a(revenueInfo2, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                revenueInfo = revenueInfo2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                revenueInfo = this.f7315a;
                ResultKt.throwOnFailure(obj);
            }
            AdRevenueCallbacks e2 = q4.e();
            if (e2 != null) {
                e2.onAdRevenueReceive(revenueInfo);
            }
            q4.k().b(this.f7322h, this.f7321g, this.f7317c, this.f7319e);
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends Lambda implements Function0<ParsePriceUseCase> {

        /* renamed from: a */
        public static final d f7323a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParsePriceUseCase invoke() {
            return new ParsePriceUseCase();
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends Lambda implements Function0<n0> {

        /* renamed from: a */
        public static final e f7324a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final n0 invoke() {
            return new n0(0);
        }
    }

    /* loaded from: classes.dex */
    public static final class f extends Lambda implements Function0<CoroutineScope> {

        /* renamed from: a */
        public static final f f7325a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
        }
    }

    /* loaded from: classes.dex */
    public static final class g extends Lambda implements Function0<com.appodeal.ads.utils.x> {

        /* renamed from: a */
        public static final g f7326a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.utils.x invoke() {
            HashMap hashMap = com.appodeal.ads.utils.x.l;
            return x.a.a();
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.SdkCore$validateInAppPurchase$1", f = "SdkCore.kt", i = {}, l = {822}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        public int f7327a;

        /* renamed from: b */
        public final /* synthetic */ InAppPurchase f7328b;

        /* renamed from: c */
        public final /* synthetic */ InAppPurchaseValidateCallback f7329c;

        /* renamed from: d */
        public final /* synthetic */ Context f7330d;

        /* loaded from: classes.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a */
            public final /* synthetic */ Context f7331a;

            /* renamed from: b */
            public final /* synthetic */ InAppPurchase f7332b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context, InAppPurchase inAppPurchase) {
                super(0);
                this.f7331a = context;
                this.f7332b = inAppPurchase;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Unit invoke() {
                Context applicationContext = this.f7331a.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
                Double invoke = q4.b(q4.f7303a).invoke(this.f7332b.getPrice(), this.f7332b.getCurrency());
                q4.a(applicationContext, invoke == null ? 0.0d : invoke.doubleValue(), this.f7332b.getCurrency());
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(InAppPurchase inAppPurchase, InAppPurchaseValidateCallback inAppPurchaseValidateCallback, Context context, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f7328b = inAppPurchase;
            this.f7329c = inAppPurchaseValidateCallback;
            this.f7330d = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new h(this.f7328b, this.f7329c, this.f7330d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7327a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.appodeal.ads.services.c c2 = q4.c(q4.f7303a);
                InAppPurchase inAppPurchase = this.f7328b;
                InAppPurchaseValidateCallback inAppPurchaseValidateCallback = this.f7329c;
                a aVar = new a(this.f7330d, this.f7328b);
                this.f7327a = 1;
                if (c2.a(inAppPurchase, inAppPurchaseValidateCallback, aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @JvmStatic
    public static final BannerView a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Log.log(LogConstants.KEY_SDK_PUBLIC, LogConstants.EVENT_GET, "BannerView", Log.LogLevel.verbose);
        BannerView bannerView = new BannerView(context, null);
        t0.c().a(-1);
        t0.c().a((FrameLayout) bannerView);
        return bannerView;
    }

    public static final com.appodeal.ads.context.b a(q4 q4Var) {
        q4Var.getClass();
        return com.appodeal.ads.context.b.f6583b;
    }

    @JvmStatic
    public static final ArrayList a(int i2) {
        Log.log(LogConstants.KEY_SDK_PUBLIC, LogConstants.EVENT_GET, Intrinsics.stringPlus("NativeAds: ", Integer.valueOf(i2)), Log.LogLevel.verbose);
        ArrayList a2 = Native.c().a(i2);
        Intrinsics.checkNotNullExpressionValue(a2, "getNativeAdBox().getNativeAds(count)");
        return a2;
    }

    @JvmStatic
    public static final List<String> a(Context context, int i2) {
        List emptyList;
        Intrinsics.checkNotNullParameter(context, "context");
        f7303a.getClass();
        List<u> d2 = d();
        ArrayList arrayList = new ArrayList();
        for (u uVar : d2) {
            if ((s4.a(uVar) & i2) > 0) {
                Set<String> a2 = uVar.g().b(context).a();
                Intrinsics.checkNotNullExpressionValue(a2, "adController.networkRegi…  .availableNetworksNames");
                emptyList = CollectionsKt.filterNotNull(a2);
            } else {
                emptyList = CollectionsKt.emptyList();
            }
            CollectionsKt.addAll(arrayList, emptyList);
        }
        return CollectionsKt.sorted(CollectionsKt.distinct(arrayList));
    }

    @JvmStatic
    public static final void a(Context context, double d2, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!f7305c && !f7304b) {
            g1.w.b("Appodeal is not initialized");
        } else if (str == null) {
            g1.w.b("currency is null");
        } else if (j4.f6751a.isUserProtected()) {
            g1.w.b("The user did not accept the agreement");
        } else {
            g1.w.a("inapp purchase, amount: " + d2 + ", currency: " + ((Object) str));
            k0.a(context, d2, str);
        }
    }

    @JvmStatic
    public static final void a(Native.MediaAssetType requiredMediaAssetType) {
        Intrinsics.checkNotNullParameter(requiredMediaAssetType, "requiredMediaAssetType");
        g1.v.a(Intrinsics.stringPlus("required native media assets type: ", requiredMediaAssetType));
        Native.f6383c = requiredMediaAssetType;
    }

    public static final void a(Native.NativeAdType nativeAdType) {
        if (nativeAdType == null) {
            g1.j.b("adType is null");
            return;
        }
        g1.j.a(Intrinsics.stringPlus("NativeAd type: ", nativeAdType));
        Native.f6382b = nativeAdType;
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void a(UserSettings.Gender gender) {
        Intrinsics.checkNotNullParameter(gender, "gender");
        g1.z.a();
        l5.a().setGender(gender);
    }

    @JvmStatic
    public static final void a(UserConsent userConsent) {
        Intrinsics.checkNotNullParameter(userConsent, "userConsent");
        g1.f6670b.a(userConsent.getZone().name() + " consent is " + userConsent.getStatus());
        x2.f7895a.getClass();
        x2.a(userConsent);
    }

    public static final void a(Log.LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        r0.f7344d = logLevel;
        g1.C.a(Intrinsics.stringPlus("log level: ", logLevel));
    }

    @JvmStatic
    public static final void a(Consent consent) {
        Consent.Status status;
        g1.f6670b.a(Intrinsics.stringPlus("consent is ", (consent == null || (status = consent.getStatus()) == null) ? null : status.name()));
        x2.f7895a.getClass();
        x2.a(consent);
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void a(Boolean bool) {
        g1.f6670b.a(Intrinsics.stringPlus("consent is ", bool == null ? null : bool.toString()));
        x2.a(bool);
    }

    @JvmStatic
    public static final void a(String name, Object obj) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (StringsKt.isBlank(name)) {
            g1.D.b("name is blank");
            return;
        }
        g1.D.a("set custom filter: " + name + ", value: " + obj);
        com.appodeal.ads.segments.j.a(name, obj);
    }

    @JvmStatic
    public static final void a(String str, String str2, String str3) {
        f7309g = str;
        f7310h = str2;
        i = str3;
        g1.F.a((str3 != null ? new StringBuilder("framework: ").append((Object) str).append(", pluginVersion: ").append((Object) str2).append(", engineVersion: ").append((Object) str3) : new StringBuilder("framework: ").append((Object) str).append(", pluginVersion: ").append((Object) str2)).toString());
    }

    @JvmStatic
    public static final void a(boolean z) {
        g1.G.a(Intrinsics.stringPlus("muteVideosIfCallsMuted: ", Boolean.valueOf(z)));
        r0.f7345e = z;
    }

    @JvmStatic
    public static final boolean a(Activity activity, int i2, String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        f7303a.getClass();
        boolean b2 = b(activity, i2, placementName);
        g1.l.a(((Object) n5.a(i2)) + ", result: " + b2);
        return b2;
    }

    @JvmStatic
    public static final MrecView b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Log.log(LogConstants.KEY_SDK_PUBLIC, LogConstants.EVENT_GET, "MrecView", Log.LogLevel.verbose);
        MrecView mrecView = new MrecView(context, null);
        h2.c().a(-1);
        h2.c().a((FrameLayout) mrecView);
        return mrecView;
    }

    public static final ParsePriceUseCase b(q4 q4Var) {
        q4Var.getClass();
        return (ParsePriceUseCase) n.getValue();
    }

    @JvmStatic
    public static final Reward b(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        com.appodeal.ads.segments.g a2 = com.appodeal.ads.segments.h.a(placementName);
        return new Reward(a2.c(), a2.d());
    }

    @JvmStatic
    public static final void b(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (StringsKt.isBlank(key)) {
            g1.L.b("key is blank");
            return;
        }
        g1.L.a();
        ExtraData.INSTANCE.putExtra(key, obj);
    }

    @JvmStatic
    public static final void b(boolean z) {
        g1.r.a(Intrinsics.stringPlus("728x90 Banners: ", Boolean.valueOf(z)));
        t0.f7671c = z;
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final Pair<Double, String> c(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        com.appodeal.ads.segments.g a2 = com.appodeal.ads.segments.h.a(placementName);
        return new Pair<>(Double.valueOf(a2.c()), a2.d());
    }

    public static final com.appodeal.ads.services.c c(q4 q4Var) {
        q4Var.getClass();
        return com.appodeal.ads.services.g.b();
    }

    @JvmStatic
    public static final void c(boolean z) {
        g1.s.a(Intrinsics.stringPlus("Banner animation: ", Boolean.valueOf(z)));
        t0.c().a(z);
    }

    public static List d() {
        return (List) k.getValue();
    }

    @JvmStatic
    public static final void d(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        g1.y.a();
        l5.a().setUserId(userId);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x002a, code lost:
        if (r2 != 2048) goto L25;
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean d(int r2) {
        /*
            r0 = 1
            if (r2 == r0) goto L59
            r1 = 2
            if (r2 == r1) goto L54
            r1 = 3
            if (r2 == r1) goto L41
            r0 = 4
            if (r2 == r0) goto L3c
            r0 = 8
            if (r2 == r0) goto L3c
            r0 = 16
            if (r2 == r0) goto L3c
            r0 = 64
            if (r2 == r0) goto L3c
            r0 = 128(0x80, float:1.794E-43)
            if (r2 == r0) goto L37
            r0 = 256(0x100, float:3.59E-43)
            if (r2 == r0) goto L32
            r0 = 512(0x200, float:7.175E-43)
            if (r2 == r0) goto L2d
            r0 = 1024(0x400, float:1.435E-42)
            if (r2 == r0) goto L3c
            r0 = 2048(0x800, float:2.87E-42)
            if (r2 == r0) goto L3c
            goto L52
        L2d:
            com.appodeal.ads.Native$a r2 = com.appodeal.ads.Native.a()
            goto L5d
        L32:
            com.appodeal.ads.h2$b r2 = com.appodeal.ads.h2.a()
            goto L5d
        L37:
            com.appodeal.ads.o4$b r2 = com.appodeal.ads.o4.a()
            goto L5d
        L3c:
            com.appodeal.ads.t0$b r2 = com.appodeal.ads.t0.a()
            goto L5d
        L41:
            com.appodeal.ads.o1$a r2 = com.appodeal.ads.o1.a()
            boolean r2 = r2.i
            if (r2 == 0) goto L52
            com.appodeal.ads.w2$b r2 = com.appodeal.ads.w2.a()
            boolean r2 = r2.i
            if (r2 == 0) goto L52
            goto L5f
        L52:
            r0 = 0
            goto L5f
        L54:
            com.appodeal.ads.w2$b r2 = com.appodeal.ads.w2.a()
            goto L5d
        L59:
            com.appodeal.ads.o1$a r2 = com.appodeal.ads.o1.a()
        L5d:
            boolean r0 = r2.i
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.q4.d(int):boolean");
    }

    public static final AdRevenueCallbacks e() {
        return f7308f;
    }

    @JvmStatic
    public static final void e(boolean z) {
        g1.q.a(Intrinsics.stringPlus("smart Banners: ", Boolean.valueOf(z)));
        t0.f7670b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x0045, code lost:
        if (r0.v != false) goto L60;
     */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.appodeal.ads.r] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.appodeal.ads.r] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean e(int r5) {
        /*
            boolean r0 = o()
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = r5 & 3
            r2 = 1
            java.lang.String r3 = "getAdController()"
            if (r0 <= 0) goto L4b
            com.appodeal.ads.q4 r0 = com.appodeal.ads.q4.f7303a     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.o1$a r4 = com.appodeal.ads.o1.a()     // Catch: java.lang.Exception -> L48
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)     // Catch: java.lang.Exception -> L48
            r0.getClass()     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.r r0 = r4.f()     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L2e
            boolean r4 = r0.C     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L2e
            boolean r4 = r0.u     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L47
            boolean r0 = r0.v     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L2e
            goto L47
        L2e:
            com.appodeal.ads.w2$b r0 = com.appodeal.ads.w2.a()     // Catch: java.lang.Exception -> L48
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r3)     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.r r0 = r0.f()     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L4b
            boolean r4 = r0.C     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L4b
            boolean r4 = r0.u     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L47
            boolean r0 = r0.v     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L4b
        L47:
            return r2
        L48:
            r5 = move-exception
            goto Lc3
        L4b:
            r0 = r5 & 128(0x80, float:1.794E-43)
            if (r0 <= 0) goto L6e
            com.appodeal.ads.q4 r0 = com.appodeal.ads.q4.f7303a     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.o4$b r4 = com.appodeal.ads.o4.a()     // Catch: java.lang.Exception -> L48
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)     // Catch: java.lang.Exception -> L48
            r0.getClass()     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.r r0 = r4.f()     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L6e
            boolean r4 = r0.C     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L6e
            boolean r4 = r0.u     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L6d
            boolean r0 = r0.v     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L6e
        L6d:
            return r2
        L6e:
            r0 = r5 & 3164(0xc5c, float:4.434E-42)
            if (r0 <= 0) goto L91
            com.appodeal.ads.q4 r0 = com.appodeal.ads.q4.f7303a     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.t0$b r4 = com.appodeal.ads.t0.a()     // Catch: java.lang.Exception -> L48
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)     // Catch: java.lang.Exception -> L48
            r0.getClass()     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.r r0 = r4.f()     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L91
            boolean r4 = r0.C     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L91
            boolean r4 = r0.u     // Catch: java.lang.Exception -> L48
            if (r4 != 0) goto L90
            boolean r0 = r0.v     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto L91
        L90:
            return r2
        L91:
            r0 = r5 & 256(0x100, float:3.59E-43)
            if (r0 <= 0) goto Lb4
            com.appodeal.ads.q4 r0 = com.appodeal.ads.q4.f7303a     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.h2$b r4 = com.appodeal.ads.h2.a()     // Catch: java.lang.Exception -> L48
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)     // Catch: java.lang.Exception -> L48
            r0.getClass()     // Catch: java.lang.Exception -> L48
            com.appodeal.ads.r r0 = r4.f()     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto Lb4
            boolean r3 = r0.C     // Catch: java.lang.Exception -> L48
            if (r3 != 0) goto Lb4
            boolean r3 = r0.u     // Catch: java.lang.Exception -> L48
            if (r3 != 0) goto Lb3
            boolean r0 = r0.v     // Catch: java.lang.Exception -> L48
            if (r0 == 0) goto Lb4
        Lb3:
            return r2
        Lb4:
            r5 = r5 & 512(0x200, float:7.175E-43)
            if (r5 <= 0) goto Lc6
            com.appodeal.ads.n2 r5 = com.appodeal.ads.Native.c()     // Catch: java.lang.Exception -> L48
            boolean r5 = r5.b()     // Catch: java.lang.Exception -> L48
            if (r5 == 0) goto Lc6
            return r2
        Lc3:
            com.appodeal.ads.utils.Log.log(r5)
        Lc6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.q4.e(int):boolean");
    }

    public static final Date f() {
        return Constants.BUILD_DATE;
    }

    @JvmStatic
    public static final void f(boolean z) {
        g1.B.a(Intrinsics.stringPlus("testing: ", Boolean.valueOf(z)));
        r0.f7342b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0089, code lost:
        if (r0 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0090, code lost:
        if (r0.v() != true) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0025, code lost:
        if (r6 != 2048) goto L22;
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean f(int r6) {
        /*
            boolean r0 = o()
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 3
            r2 = 1
            if (r6 == r0) goto L51
            r0 = 4
            if (r6 == r0) goto L3d
            r0 = 8
            if (r6 == r0) goto L3d
            r0 = 16
            if (r6 == r0) goto L3d
            r0 = 64
            if (r6 == r0) goto L3d
            r0 = 256(0x100, float:3.59E-43)
            if (r6 == r0) goto L29
            r0 = 1024(0x400, float:1.435E-42)
            if (r6 == r0) goto L3d
            r0 = 2048(0x800, float:2.87E-42)
            if (r6 == r0) goto L3d
            goto L97
        L29:
            com.appodeal.ads.h2$b r6 = com.appodeal.ads.h2.a()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.r r6 = r6.f()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.k2 r6 = (com.appodeal.ads.k2) r6     // Catch: java.lang.Exception -> L93
            if (r6 != 0) goto L36
            goto L97
        L36:
            boolean r6 = r6.v()     // Catch: java.lang.Exception -> L93
            if (r6 != r2) goto L97
            return r2
        L3d:
            com.appodeal.ads.t0$b r6 = com.appodeal.ads.t0.a()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.r r6 = r6.f()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.w0 r6 = (com.appodeal.ads.w0) r6     // Catch: java.lang.Exception -> L93
            if (r6 != 0) goto L4a
            goto L97
        L4a:
            boolean r6 = r6.v()     // Catch: java.lang.Exception -> L93
            if (r6 != r2) goto L97
            return r2
        L51:
            com.appodeal.ads.o1$a r6 = com.appodeal.ads.o1.a()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.r r6 = r6.f()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.r1 r6 = (com.appodeal.ads.r1) r6     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.w2$b r0 = com.appodeal.ads.w2.a()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.r r0 = r0.f()     // Catch: java.lang.Exception -> L93
            com.appodeal.ads.q5 r0 = (com.appodeal.ads.q5) r0     // Catch: java.lang.Exception -> L93
            if (r6 == 0) goto L7b
            if (r0 == 0) goto L7b
            double r2 = r6.t     // Catch: java.lang.Exception -> L93
            double r4 = r0.t     // Catch: java.lang.Exception -> L93
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 <= 0) goto L76
            boolean r6 = r6.v()     // Catch: java.lang.Exception -> L93
            goto L7a
        L76:
            boolean r6 = r0.v()     // Catch: java.lang.Exception -> L93
        L7a:
            return r6
        L7b:
            if (r0 != 0) goto L87
            if (r6 != 0) goto L80
            goto L87
        L80:
            boolean r3 = r6.v()     // Catch: java.lang.Exception -> L93
            if (r3 != r2) goto L87
            goto L92
        L87:
            if (r6 != 0) goto L97
            if (r0 != 0) goto L8c
            goto L97
        L8c:
            boolean r6 = r0.v()     // Catch: java.lang.Exception -> L93
            if (r6 != r2) goto L97
        L92:
            return r2
        L93:
            r6 = move-exception
            com.appodeal.ads.utils.Log.log(r6)
        L97:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.q4.f(int):boolean");
    }

    public static final String g() {
        return i;
    }

    @JvmStatic
    public static final void g(int i2) {
        g1.p.a(Intrinsics.stringPlus("Banner ViewId: ", Integer.valueOf(i2)));
        t0.c().a(i2);
        t0.c().a((FrameLayout) null);
    }

    public static final String h() {
        return f7309g;
    }

    @JvmStatic
    public static final void h(int i2) {
        g1.u.a(Intrinsics.stringPlus("Mrec ViewId: ", Integer.valueOf(i2)));
        h2.c().a(i2);
        h2.c().a((FrameLayout) null);
    }

    public static final Log.LogLevel i() {
        return r0.f7344d;
    }

    public static final String j() {
        return f7310h;
    }

    public static final n0 k() {
        return (n0) f7307e.getValue();
    }

    public static final long l() {
        return com.appodeal.ads.segments.n.c().f7528a;
    }

    public static final com.appodeal.ads.utils.x m() {
        return (com.appodeal.ads.utils.x) j.getValue();
    }

    public static final String n() {
        return Constants.SDK_VERSION;
    }

    public static final boolean o() {
        return f1.j() < 21;
    }

    public static boolean p() {
        return com.appodeal.ads.c.f6575b.f6576a.f6609e.get();
    }

    public static final void a(q4 q4Var, Context context, int i2, List list) {
        q4Var.getClass();
        if (c1.b()) {
            a(4095, false);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((u) it.next()).a(context);
            }
            Activity activity = com.appodeal.ads.context.b.f6583b.getActivity();
            if (activity == null) {
                return;
            }
            a(activity);
            return;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            u uVar = (u) it2.next();
            if ((s4.a(uVar) & i2) > 0) {
                uVar.a(context);
            }
        }
        if (f7305c) {
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                ((u) it3.next()).q();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [com.appodeal.ads.r] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.appodeal.ads.r] */
    @JvmStatic
    public static final double b(int i2) {
        if (i2 == 1) {
            q4 q4Var = f7303a;
            r1 f2 = o1.a().f();
            q4Var.getClass();
            if (f2 == null || f2.C) {
                return 0.0d;
            }
            if (f2.u || f2.v) {
                return f2.t;
            }
            return 0.0d;
        } else if (i2 == 2) {
            q4 q4Var2 = f7303a;
            q5 f3 = w2.a().f();
            q4Var2.getClass();
            if (f3 == null || f3.C) {
                return 0.0d;
            }
            if (f3.u || f3.v) {
                return f3.t;
            }
            return 0.0d;
        } else if (i2 != 3) {
            if (i2 != 4 && i2 != 8 && i2 != 16 && i2 != 64) {
                if (i2 == 128) {
                    q4 q4Var3 = f7303a;
                    n4 f4 = o4.a().f();
                    q4Var3.getClass();
                    if (f4 == null || f4.C) {
                        return 0.0d;
                    }
                    if (f4.u || f4.v) {
                        return f4.t;
                    }
                    return 0.0d;
                } else if (i2 == 256) {
                    q4 q4Var4 = f7303a;
                    ?? f5 = h2.a().f();
                    q4Var4.getClass();
                    if (f5 == 0 || f5.C) {
                        return 0.0d;
                    }
                    if (f5.u || f5.v) {
                        return f5.t;
                    }
                    return 0.0d;
                } else if (i2 != 1024 && i2 != 2048) {
                    return 0.0d;
                }
            }
            q4 q4Var5 = f7303a;
            ?? f6 = t0.a().f();
            q4Var5.getClass();
            if (f6 == 0 || f6.C) {
                return 0.0d;
            }
            if (f6.u || f6.v) {
                return f6.t;
            }
            return 0.0d;
        } else {
            return Math.max(b(1), b(2));
        }
    }

    @JvmStatic
    public static final boolean c(int i2) {
        u a2;
        if (i2 != 3) {
            if (i2 != 4 && i2 != 8 && i2 != 16 && i2 != 64) {
                if (i2 == 128) {
                    a2 = o4.a();
                } else if (i2 == 256) {
                    a2 = h2.a();
                } else if (i2 == 512) {
                    a2 = Native.a();
                } else if (i2 != 1024 && i2 != 2048) {
                    return false;
                }
                return a2.k;
            }
            a2 = t0.a();
            return a2.k;
        }
        return q1.a().f7292c;
    }

    @JvmStatic
    public static final void a(Activity activity, int i2, int i3) {
        if (activity == null) {
            g1.k.b("activity is null");
        } else if (o()) {
        } else {
            g1.k.a();
            f7303a.getClass();
            com.appodeal.ads.context.g.f6601b.setActivity(activity);
            if ((i2 & 3) > 0) {
                q5 f2 = w2.a().f();
                r1 f3 = o1.a().f();
                if ((f2 == null && f3 == null) || !q1.a().b()) {
                    q1.a().c();
                    o1.a().c(activity);
                    w2.a().c(activity);
                }
            }
            if ((i2 & 128) > 0) {
                o4.a().d(activity);
            }
            if ((i2 & 3164) > 0) {
                t0.a().d(activity);
            }
            if ((i2 & 256) > 0) {
                h2.a().d(activity);
            }
            if ((i2 & 512) > 0) {
                Native.c().b(i3);
                Native.c().c();
            }
        }
    }

    public static final void d(boolean z) {
        g1.M.a(Intrinsics.stringPlus("value: ", Boolean.valueOf(z)));
        f7303a.getClass();
        com.appodeal.ads.context.g.f6601b.setAutomaticActivityObserving(z);
        r0.l = z;
    }

    /* JADX WARN: Type inference failed for: r1v23, types: [com.appodeal.ads.r] */
    /* JADX WARN: Type inference failed for: r1v25, types: [com.appodeal.ads.r] */
    @JvmStatic
    public static final boolean a(int i2, String placementName) {
        i1 i1Var;
        String str;
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        if (!f7305c) {
            i1Var = g1.E;
            str = "Appodeal is not initialized";
        } else if (NetworkStatus.INSTANCE.isConnected()) {
            g1.E.a();
            try {
                com.appodeal.ads.segments.g a2 = com.appodeal.ads.segments.h.a(placementName);
                q4 q4Var = f7303a;
                t0.b a3 = t0.a();
                Intrinsics.checkNotNullExpressionValue(a3, "getAdController()");
                q4Var.getClass();
                if (!((i2 & 3164) > 0 ? a((r) a3.f(), a2) : false)) {
                    h2.b a4 = h2.a();
                    Intrinsics.checkNotNullExpressionValue(a4, "getAdController()");
                    if (!((i2 & 256) > 0 ? a((r) a4.f(), a2) : false)) {
                        o1.a a5 = o1.a();
                        Intrinsics.checkNotNullExpressionValue(a5, "getAdController()");
                        if (!((i2 & 1) > 0 ? a(a5.f(), a2) : false)) {
                            o4.b a6 = o4.a();
                            Intrinsics.checkNotNullExpressionValue(a6, "getAdController()");
                            if (!((i2 & 128) > 0 ? a(a6.f(), a2) : false)) {
                                w2.b a7 = w2.a();
                                Intrinsics.checkNotNullExpressionValue(a7, "getAdController()");
                                if (!((i2 & 2) > 0 ? a(a7.f(), a2) : false)) {
                                    return false;
                                }
                            }
                        }
                    }
                }
                return true;
            } catch (Exception e2) {
                Log.log(e2);
                return false;
            }
        } else {
            i1Var = g1.E;
            str = "no Internet";
        }
        i1Var.b(str);
        return false;
    }

    @JvmStatic
    public static final void b(Activity activity, int i2) {
        if (activity == null) {
            g1.m.b("activity is null");
        } else if (o()) {
        } else {
            g1.m.a(n5.a(i2));
            f7303a.getClass();
            com.appodeal.ads.context.g.f6601b.setActivity(activity);
            if ((i2 & 3164) > 0) {
                t0.a(activity);
            }
            if ((i2 & 256) > 0) {
                h2.a(activity);
            }
        }
    }

    public static boolean a(r rVar, com.appodeal.ads.segments.g gVar) {
        if (rVar != null && !rVar.C && (rVar.u || rVar.v)) {
            Context applicationContext = com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext();
            AdType n2 = rVar.n();
            gVar.getClass();
            if (gVar.a(applicationContext, n2, rVar.t)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void b(int i2, boolean z) {
        g1.o.a(h0.a("triggerOnLoadedOnPrecache for ").append((Object) n5.a(i2)).append(": ").append(z).toString());
        if ((i2 & 3) > 0) {
            o1.a().t = z;
            w2.a().t = z;
        }
        if ((i2 & 128) > 0) {
            o4.a().t = z;
        }
        if ((i2 & 3164) > 0) {
            t0.a().t = z;
        }
        if ((i2 & 256) > 0) {
            h2.a().t = z;
        }
    }

    @JvmStatic
    public static final void a(String network, int i2) {
        Intrinsics.checkNotNullParameter(network, "network");
        if (StringsKt.isBlank(network)) {
            g1.x.b("network is blank");
        } else if (!o()) {
            g1.x.a(network + " - " + ((Object) n5.a(i2)));
            f7303a.getClass();
            for (u uVar : d()) {
                q4 q4Var = f7303a;
                int a2 = s4.a(uVar);
                q4Var.getClass();
                if ((i2 & a2) > 0 && !uVar.i) {
                    uVar.f7690e.a(network);
                }
            }
        }
    }

    @JvmStatic
    public static final void a(Activity activity, String appKey, int i2, Consent consent, Boolean bool, ApdInitializationCallback apdInitializationCallback) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        ArrayList arrayList = new ArrayList();
        if (activity == null) {
            arrayList.add(ApdInitializationError.Critical.ActivityIsNull.INSTANCE);
        }
        if (StringsKt.isBlank(appKey)) {
            String bundleId = activity != null ? activity.getPackageName() : "your app";
            Intrinsics.checkNotNullExpressionValue(bundleId, "bundleId");
            arrayList.add(new ApdInitializationError.Critical.AppKeyIsNullOrEmpty(bundleId));
        }
        if (o()) {
            arrayList.add(ApdInitializationError.Critical.SdkVersionIsNotSupported.INSTANCE);
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                g1.f6669a.b(((ApdInitializationError.Critical) it.next()).getDescription());
            }
            if (apdInitializationCallback == null) {
                return;
            }
            apdInitializationCallback.onInitializationFinished(arrayList);
        } else if (activity != null) {
            Application application = activity.getApplication();
            f7303a.getClass();
            com.appodeal.ads.context.g gVar = com.appodeal.ads.context.g.f6601b;
            Context applicationContext = activity.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "checkedActivity.applicationContext");
            gVar.setApplicationContext(applicationContext);
            gVar.setActivity(activity);
            Intrinsics.checkNotNullExpressionValue(application, "application");
            BuildersKt__Builders_commonKt.launch$default((CoroutineScope) m.getValue(), null, null, new r4(apdInitializationCallback, z4.a(), application, appKey, consent, bool, i2, null), 3, null);
        } else {
            throw new IllegalStateException("Required value was null.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:480:?, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.app.Activity r21, int r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 1069
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.q4.b(android.app.Activity, int, java.lang.String):boolean");
    }

    @JvmStatic
    public static final void a(String eventName, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        if (StringsKt.isBlank(eventName)) {
            g1.N.b("event name is blank");
            return;
        }
        g1.N.a("event: " + eventName + ", params: " + map);
        f7303a.getClass();
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) m.getValue(), null, null, new b(eventName, map, null), 3, null);
    }

    @JvmStatic
    public static final void a(AdType adType, String str, String str2, String str3, com.appodeal.ads.segments.g gVar, double d2) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        f7303a.getClass();
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) m.getValue(), null, null, new c(str, str2, str3, gVar, d2, adType, null), 3, null);
    }

    @JvmStatic
    public static final void a(int i2, boolean z) {
        g1.n.a(h0.a("auto cache for ").append((Object) n5.a(i2)).append(": ").append(z).toString());
        if ((i2 & 3) > 0) {
            q1.a().f7292c = z;
        }
        if ((i2 & 128) > 0) {
            o4.a().k = z;
        }
        if ((i2 & 3164) > 0) {
            t0.a().k = z;
        }
        if ((i2 & 256) > 0) {
            h2.a().k = z;
        }
        if ((i2 & 512) > 0) {
            Native.a().k = z;
        }
    }

    @JvmStatic
    public static final void a(BannerCallbacks bannerCallbacks) {
        g1.f6675g.a(null);
        t0.f7669a.f7704a = bannerCallbacks;
    }

    @JvmStatic
    public static final void a(InterstitialCallbacks interstitialCallbacks) {
        g1.f6673e.a(null);
        q1.a().f7290a = interstitialCallbacks;
    }

    @JvmStatic
    public static final void a(MrecCallbacks mrecCallbacks) {
        g1.f6676h.a(null);
        h2.f6707a.f6738a = mrecCallbacks;
    }

    @JvmStatic
    public static final void a(NativeCallbacks nativeCallbacks) {
        g1.i.a(null);
        n2.f7088e = nativeCallbacks;
    }

    @JvmStatic
    public static final void a(RewardedVideoCallbacks rewardedVideoCallbacks) {
        g1.f6674f.a(null);
        o4.f7269a.f7286a = rewardedVideoCallbacks;
    }

    @JvmStatic
    public static final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        g1.I.a();
        f7303a.getClass();
        com.appodeal.ads.context.g.f6601b.setActivity(activity);
        activity.startActivity(new Intent(activity, TestActivity.class));
    }

    @JvmStatic
    public static final void a(Context context, InAppPurchase purchase, InAppPurchaseValidateCallback inAppPurchaseValidateCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        g1.O.a(Intrinsics.stringPlus("purchase: ", purchase));
        f7303a.getClass();
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) m.getValue(), null, null, new h(purchase, inAppPurchaseValidateCallback, context, null), 3, null);
    }
}
