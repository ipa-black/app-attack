package com.appodeal.ads;

import android.util.SparseArray;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.ads.utils.Log;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f7055a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f7056b;

    /* renamed from: c  reason: collision with root package name */
    public final Lazy f7057c;

    /* renamed from: d  reason: collision with root package name */
    public AppodealRequestCallbacks f7058d;

    /* renamed from: e  reason: collision with root package name */
    public final SparseArray<JSONObject> f7059e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray<Pair<String, Long>> f7060f;

    @DebugMetadata(c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onClick$1", f = "AppodealRequestCallbacksWrapper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdType f7062b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7063c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f7064d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ double f7065e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdType adType, String str, String str2, double d2, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f7062b = adType;
            this.f7063c = str;
            this.f7064d = str2;
            this.f7065e = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f7062b, this.f7063c, this.f7064d, this.f7065e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AppodealRequestCallbacks appodealRequestCallbacks = n0.this.f7058d;
            if (appodealRequestCallbacks != null) {
                appodealRequestCallbacks.onClick(this.f7062b.getDisplayName(), this.f7063c, this.f7064d, this.f7065e);
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onImpression$1", f = "AppodealRequestCallbacksWrapper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdType f7067b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7068c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f7069d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ double f7070e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AdType adType, String str, String str2, double d2, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f7067b = adType;
            this.f7068c = str;
            this.f7069d = str2;
            this.f7070e = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f7067b, this.f7068c, this.f7069d, this.f7070e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AppodealRequestCallbacks appodealRequestCallbacks = n0.this.f7058d;
            if (appodealRequestCallbacks != null) {
                appodealRequestCallbacks.onImpression(this.f7067b.getDisplayName(), this.f7068c, this.f7069d, this.f7070e);
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onRequestFinish$1", f = "AppodealRequestCallbacksWrapper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdType f7072b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7073c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f7074d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ boolean f7075e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ double f7076f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(AdType adType, String str, String str2, boolean z, double d2, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f7072b = adType;
            this.f7073c = str;
            this.f7074d = str2;
            this.f7075e = z;
            this.f7076f = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new c(this.f7072b, this.f7073c, this.f7074d, this.f7075e, this.f7076f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AppodealRequestCallbacks appodealRequestCallbacks = n0.this.f7058d;
            if (appodealRequestCallbacks != null) {
                String displayName = this.f7072b.getDisplayName();
                String str = this.f7073c;
                String str2 = this.f7074d;
                boolean z = this.f7075e;
                appodealRequestCallbacks.onRequestFinish(displayName, str, str2, z ? this.f7076f : 0.0d, z);
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onRequestStart$1", f = "AppodealRequestCallbacksWrapper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdType f7078b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7079c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f7080d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ double f7081e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(AdType adType, String str, String str2, double d2, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f7078b = adType;
            this.f7079c = str;
            this.f7080d = str2;
            this.f7081e = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new d(this.f7078b, this.f7079c, this.f7080d, this.f7081e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AppodealRequestCallbacks appodealRequestCallbacks = n0.this.f7058d;
            if (appodealRequestCallbacks != null) {
                appodealRequestCallbacks.onRequestStart(this.f7078b.getDisplayName(), this.f7079c, this.f7080d, this.f7081e);
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onWaterfallFinish$1", f = "AppodealRequestCallbacksWrapper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdType f7083b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ boolean f7084c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ double f7085d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(AdType adType, boolean z, double d2, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f7083b = adType;
            this.f7084c = z;
            this.f7085d = d2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new e(this.f7083b, this.f7084c, this.f7085d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AppodealRequestCallbacks appodealRequestCallbacks = n0.this.f7058d;
            if (appodealRequestCallbacks != null) {
                String displayName = this.f7083b.getDisplayName();
                boolean z = this.f7084c;
                appodealRequestCallbacks.onWaterfallFinish(displayName, z ? this.f7085d : 0.0d, z);
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealRequestCallbacksWrapper$onWaterfallStart$1", f = "AppodealRequestCallbacksWrapper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdType f7087b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(AdType adType, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f7087b = adType;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new f(this.f7087b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            AppodealRequestCallbacks appodealRequestCallbacks = n0.this.f7058d;
            if (appodealRequestCallbacks != null) {
                appodealRequestCallbacks.onWaterfallStart(this.f7087b.getDisplayName());
            }
            return Unit.INSTANCE;
        }
    }

    public n0() {
        this(0);
    }

    public /* synthetic */ n0(int i) {
        this(q0.a(), "https://rri.appodeal.com/api/stat");
    }

    public n0(JSONObject defaultWaterfall, String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(defaultWaterfall, "defaultWaterfall");
        this.f7055a = url;
        this.f7056b = defaultWaterfall;
        this.f7057c = LazyKt.lazy(o0.f7262a);
        this.f7059e = new SparseArray<>();
        this.f7060f = new SparseArray<>();
    }

    public static boolean a(int i) {
        if (i != 128) {
            if (i != 256) {
                if (i != 512) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                return o1.a().s || w2.a().s;
                            } else if (i != 4) {
                                return false;
                            } else {
                                return t0.a().s;
                            }
                        }
                        return w2.a().s;
                    }
                    return o1.a().s;
                }
                return Native.a().s;
            }
            return h2.a().s;
        }
        return o4.a().s;
    }

    public final CoroutineScope a() {
        return (CoroutineScope) this.f7057c.getValue();
    }

    public final void a(AdType adType, double d2, String str, String str2) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        BuildersKt__Builders_commonKt.launch$default(a(), null, null, new a(adType, str, str2, d2, null), 3, null);
    }

    public final void a(AdType adType, double d2, String str, String str2, boolean z, int i) {
        Pair<String, Long> pair;
        Intrinsics.checkNotNullParameter(adType, "adType");
        try {
            int notifyType = adType.getNotifyType();
            if (a(notifyType) && (pair = this.f7060f.get(notifyType)) != null) {
                String first = pair.getFirst();
                long longValue = pair.getSecond().longValue();
                JSONObject jSONObject = this.f7059e.get(notifyType);
                if (jSONObject != null) {
                    JSONArray jSONArray = jSONObject.getJSONArray("ad_units");
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("aid", first);
                    jSONObject2.put("network_name", str);
                    jSONObject2.put("fill", z);
                    jSONObject2.put("delta", System.currentTimeMillis() - longValue);
                    if (!z) {
                        jSONObject2.put(IronSourceConstants.EVENTS_ERROR_REASON, i);
                    }
                    jSONArray.put(jSONObject2);
                    BuildersKt__Builders_commonKt.launch$default(a(), null, null, new c(adType, str, str2, z, d2, null), 3, null);
                }
            }
            BuildersKt__Builders_commonKt.launch$default(a(), null, null, new c(adType, str, str2, z, d2, null), 3, null);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public final void b(AdType adType, double d2, String str, String str2) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        BuildersKt__Builders_commonKt.launch$default(a(), null, null, new b(adType, str, str2, d2, null), 3, null);
    }

    public final void c(AdType adType, double d2, String str, String str2) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        a(adType, d2, str, str2, true, 0);
    }

    public final void d(AdType adType, double d2, String str, String str2) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        int notifyType = adType.getNotifyType();
        if (a(notifyType)) {
            this.f7060f.put(notifyType, TuplesKt.to(str2, Long.valueOf(System.currentTimeMillis())));
        }
        BuildersKt__Builders_commonKt.launch$default(a(), null, null, new d(adType, str, str2, d2, null), 3, null);
    }

    public final void a(AdType adType, double d2, boolean z) {
        JSONObject waterfall;
        Intrinsics.checkNotNullParameter(adType, "adType");
        try {
            int notifyType = adType.getNotifyType();
            if (a(notifyType) && (waterfall = this.f7059e.get(notifyType)) != null) {
                waterfall.put(IronSourceConstants.EVENTS_RESULT, z);
                Intrinsics.checkNotNullParameter(waterfall, "waterfall");
                this.f7059e.remove(notifyType);
                this.f7060f.remove(notifyType);
                com.appodeal.ads.utils.s.f7824e.execute(new com.appodeal.ads.utils.v(waterfall.toString(), this.f7055a));
            }
            BuildersKt__Builders_commonKt.launch$default(a(), null, null, new e(adType, z, d2, null), 3, null);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public final void a(AdType adType) {
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(adType, "adType");
        int notifyType = adType.getNotifyType();
        if (a(notifyType)) {
            SparseArray<JSONObject> sparseArray = this.f7059e;
            synchronized (this) {
                try {
                    jSONObject = JsonObjectBuilderKt.jsonObject(new m0(this, notifyType));
                } catch (Exception e2) {
                    Log.log(e2);
                    jSONObject = null;
                }
            }
            sparseArray.put(notifyType, jSONObject);
        }
        BuildersKt__Builders_commonKt.launch$default(a(), null, null, new f(adType, null), 3, null);
    }
}
