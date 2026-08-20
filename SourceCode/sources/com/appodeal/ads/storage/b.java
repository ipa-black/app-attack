package com.appodeal.ads.storage;

import android.content.SharedPreferences;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.r0;
import com.appodeal.ads.storage.a;
import com.appodeal.ads.w4;
import com.appodeal.ads.x4;
import com.appodeal.ads.y4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b implements com.appodeal.ads.storage.a, a.InterfaceC0146a {

    /* renamed from: a  reason: collision with root package name */
    public final Lazy f7585a = LazyKt.lazy(f.f7603a);

    /* renamed from: b  reason: collision with root package name */
    public final Lazy f7586b = LazyKt.lazy(new q());

    /* renamed from: c  reason: collision with root package name */
    public final LinkedHashMap f7587c = new LinkedHashMap();

    /* loaded from: classes2.dex */
    public enum a {
        Default("appodeal"),
        Placement(Constants.PLACEMENT_FREQUENCY),
        InstallTracking("install_tracking"),
        CampaignFrequency(Constants.CAMPAIGN_FREQUENCY),
        CampaignFrequencyClicks("freq_clicks");
        

        /* renamed from: a  reason: collision with root package name */
        public final String f7594a;

        a(String str) {
            this.f7594a = str;
        }

        public final String a() {
            return this.f7594a;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$clearClicks$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.appodeal.ads.storage.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0147b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ long f7596b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0147b(long j, Continuation<? super C0147b> continuation) {
            super(2, continuation);
            this.f7596b = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C0147b(this.f7596b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C0147b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Map<String, ?> all = b.this.a(a.CampaignFrequencyClicks).getAll();
            Intrinsics.checkNotNullExpressionValue(all, "getInstance(CampaignFrequencyClicks).all");
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Pair pair = null;
                Long l = value instanceof Long ? (Long) value : null;
                if (l != null) {
                    l.longValue();
                    pair = TuplesKt.to(key, value);
                }
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            Map map = MapsKt.toMap(arrayList);
            SharedPreferences.Editor edit = b.this.a(a.CampaignFrequencyClicks).edit();
            long j = this.f7596b - 259200000;
            for (Map.Entry entry2 : map.entrySet()) {
                String str = (String) entry2.getKey();
                if (((Number) entry2.getValue()).longValue() < j) {
                    edit.remove(str);
                }
            }
            edit.apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$clearExpiredTrackingDataAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ long f7598b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(long j, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f7598b = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new c(this.f7598b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            Map<String, ?> all = b.this.a(a.InstallTracking).getAll();
            Intrinsics.checkNotNullExpressionValue(all, "getInstance(InstallTracking).all");
            long j = this.f7598b;
            b bVar = b.this;
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Long l = value instanceof Long ? (Long) value : null;
                if ((l == null ? 0L : l.longValue()) < j) {
                    bVar.a(a.InstallTracking).edit().remove(key).apply();
                }
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$clearRequestDataAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f7599a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ b f7600b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(b bVar, String str, Continuation continuation) {
            super(2, continuation);
            this.f7599a = str;
            this.f7600b = bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new d(this.f7600b, this.f7599a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            String stringPlus = Intrinsics.stringPlus(this.f7599a, "_timestamp");
            this.f7600b.a(a.Default).edit().remove(this.f7599a).remove(stringPlus).remove(Intrinsics.stringPlus(this.f7599a, "_wst")).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$clearTrackingExpireTimeAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7602b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f7602b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new e(this.f7602b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.InstallTracking).edit().remove(this.f7602b).apply();
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class f extends Lambda implements Function0<ExecutorCoroutineDispatcher> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f7603a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ExecutorCoroutineDispatcher invoke() {
            return ThreadPoolDispatcherKt.newSingleThreadContext("shared_prefs");
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveAllCampaigns$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ JSONObject f7605b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(JSONObject jSONObject, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f7605b = jSONObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new g(this.f7605b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            SharedPreferences.Editor edit = b.this.a(a.CampaignFrequency).edit();
            edit.clear();
            Iterator<String> keys = this.f7605b.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "campaigns.keys()");
            JSONObject jSONObject = this.f7605b;
            while (keys.hasNext()) {
                String next = keys.next();
                edit.putString(next, jSONObject.getString(next));
            }
            edit.apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveCampaign$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7607b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7608c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, String str2, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f7607b = str;
            this.f7608c = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new h(this.f7607b, this.f7608c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.CampaignFrequency).edit().putString(this.f7607b, this.f7608c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveClicks$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7610b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f7611c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, long j, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f7610b = str;
            this.f7611c = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new i(this.f7610b, this.f7611c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.CampaignFrequencyClicks).edit().putLong(this.f7610b, this.f7611c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveEventDataAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7613b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7614c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, String str2, Continuation<? super j> continuation) {
            super(2, continuation);
            this.f7613b = str;
            this.f7614c = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new j(this.f7613b, this.f7614c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.Default).edit().putString(this.f7613b, this.f7614c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveFirstAdSessionLaunchTimeAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ long f7616b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(long j, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f7616b = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new k(this.f7616b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.Default).edit().putLong("first_ad_session_launch_time", this.f7616b).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$savePlacementAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7618b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7619c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, String str2, Continuation<? super l> continuation) {
            super(2, continuation);
            this.f7618b = str;
            this.f7619c = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new l(this.f7618b, this.f7619c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.Placement).edit().putString(this.f7618b, this.f7619c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveSessionUptimeAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ long f7621b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f7622c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(long j, long j2, Continuation<? super m> continuation) {
            super(2, continuation);
            this.f7621b = j;
            this.f7622c = j2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new m(this.f7621b, this.f7622c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((m) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.Default).edit().putLong("session_uptime", this.f7621b).putLong("session_uptime_m", this.f7622c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveSessionsData$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class n extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7624b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f7625c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(String str, long j, Continuation<? super n> continuation) {
            super(2, continuation);
            this.f7624b = str;
            this.f7625c = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new n(this.f7624b, this.f7625c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((n) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.Default).edit().putString(Constants.SESSIONS, this.f7624b).putLong("sessions_size", this.f7625c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveTrackingExpireTimeAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class o extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7627b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f7628c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(String str, long j, Continuation<? super o> continuation) {
            super(2, continuation);
            this.f7627b = str;
            this.f7628c = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new o(this.f7627b, this.f7628c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((o) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.InstallTracking).edit().putLong(this.f7627b, this.f7628c).apply();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveUserToken$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class p extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f7630b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(String str, Continuation<? super p> continuation) {
            super(2, continuation);
            this.f7630b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new p(this.f7630b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((p) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.a(a.Default).edit().putString("user_token", this.f7630b).apply();
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class q extends Lambda implements Function0<CoroutineScope> {
        public q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(b.this.e());
        }
    }

    public final SharedPreferences a(a aVar) {
        Object obj = this.f7587c.get(aVar);
        if (obj != null) {
            return ((com.appodeal.ads.storage.q) obj).a();
        }
        throw new IllegalArgumentException(("Prefs " + aVar + " is not initialized").toString());
    }

    public final Object a(r0.a aVar) {
        return BuildersKt.withContext(e(), new com.appodeal.ads.storage.e(this, null), aVar);
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(w4 w4Var) {
        return BuildersKt.withContext(e(), new com.appodeal.ads.storage.c(this, null), w4Var);
    }

    @Override // com.appodeal.ads.storage.a.InterfaceC0146a
    public final Object a(x4.a aVar) {
        Object withContext = BuildersKt.withContext(e(), new com.appodeal.ads.storage.f(this, null), aVar);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(y4 y4Var) {
        Object withContext = BuildersKt.withContext(e(), new com.appodeal.ads.storage.l(this, null), y4Var);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(String str, y4 y4Var) {
        Object withContext = BuildersKt.withContext(e(), new com.appodeal.ads.storage.g(this, str, null), y4Var);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    public final Object a(LinkedHashSet linkedHashSet, r0.b bVar) {
        Object withContext = BuildersKt.withContext(e(), new com.appodeal.ads.storage.k(this, linkedHashSet, null), bVar);
        return withContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? withContext : Unit.INSTANCE;
    }

    @Override // com.appodeal.ads.storage.a
    public final Object a(ContinuationImpl continuationImpl) {
        return BuildersKt.withContext(e(), new com.appodeal.ads.storage.d(this, null), continuationImpl);
    }

    @Override // com.appodeal.ads.storage.a
    public final String a() {
        return a(a.Default).getString("user_token", null);
    }

    @Override // com.appodeal.ads.storage.a
    public final Triple<JSONObject, Long, Integer> a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String stringPlus = Intrinsics.stringPlus(key, "_timestamp");
        String stringPlus2 = Intrinsics.stringPlus(key, "_wst");
        a aVar = a.Default;
        String string = a(aVar).getString(key, null);
        return new Triple<>(string != null ? new JSONObject(string) : null, Long.valueOf(a(aVar).getLong(stringPlus, 0L)), Integer.valueOf(a(aVar).getInt(stringPlus2, 86400000)));
    }

    @Override // com.appodeal.ads.storage.a
    public final void a(int i2) {
        Intrinsics.checkNotNullParameter("part_of_audience", "key");
        BuildersKt.launch$default(g(), null, null, new com.appodeal.ads.storage.h(this, "part_of_audience", i2, null), 3, null);
    }

    @Override // com.appodeal.ads.storage.a
    public final void a(int i2, long j2, String key, String jsonString) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        BuildersKt.launch$default(g(), null, null, new com.appodeal.ads.storage.i(this, key, jsonString, Intrinsics.stringPlus(key, "_timestamp"), j2, Intrinsics.stringPlus(key, "_wst"), i2, null), 3, null);
    }

    public final void a(long j2) {
        BuildersKt.launch$default(g(), null, null, new C0147b(j2, null), 3, null);
    }

    public final void a(long j2, long j3) {
        BuildersKt.launch$default(g(), null, null, new m(j2, j3, null), 3, null);
    }

    public final void a(String campaignId, long j2) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        BuildersKt.launch$default(g(), null, null, new i(campaignId, j2, null), 3, null);
    }

    public final void a(String uuid, long j2, long j3, long j4, long j5, long j6) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        BuildersKt.launch$default(g(), null, null, new com.appodeal.ads.storage.j(this, uuid, j2, 0L, 0L, j3, j4, j5, j6, null), 3, null);
    }

    public final void a(String campaignId, String campaignData) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        Intrinsics.checkNotNullParameter(campaignData, "campaignData");
        BuildersKt.launch$default(g(), null, null, new h(campaignId, campaignData, null), 3, null);
    }

    public final void a(JSONObject campaigns) {
        Intrinsics.checkNotNullParameter(campaigns, "campaigns");
        BuildersKt.launch$default(g(), null, null, new g(campaigns, null), 3, null);
    }

    @Override // com.appodeal.ads.storage.a
    public final int b() {
        Intrinsics.checkNotNullParameter("part_of_audience", "key");
        return a(a.Default).getInt("part_of_audience", -1);
    }

    public final void b(long j2) {
        BuildersKt.launch$default(g(), null, null, new c(j2, null), 3, null);
    }

    @Override // com.appodeal.ads.storage.a
    public final void b(String userToken) {
        Intrinsics.checkNotNullParameter(userToken, "userToken");
        BuildersKt.launch$default(g(), null, null, new p(userToken, null), 3, null);
    }

    public final void b(String sessions, long j2) {
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        BuildersKt.launch$default(g(), null, null, new n(sessions, j2, null), 3, null);
    }

    public final void b(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        BuildersKt.launch$default(g(), null, null, new j(key, value, null), 3, null);
    }

    @Override // com.appodeal.ads.storage.a
    @Deprecated(message = "Use getAppKey() and refactor chain to suspend")
    public final String c() {
        return a(a.Default).getString(Constants.APP_KEY, null);
    }

    public final void c(long j2) {
        BuildersKt.launch$default(g(), null, null, new k(j2, null), 3, null);
    }

    @Override // com.appodeal.ads.storage.a
    public final void c(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        BuildersKt.launch$default(g(), null, null, new d(this, key, null), 3, null);
    }

    public final void c(String key, long j2) {
        Intrinsics.checkNotNullParameter(key, "key");
        BuildersKt.launch$default(g(), null, null, new o(key, j2, null), 3, null);
    }

    public final void c(String key, String string) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(string, "string");
        BuildersKt.launch$default(g(), null, null, new l(key, string, null), 3, null);
    }

    public final Map<String, String> d() {
        Map<String, ?> all = a(a.CampaignFrequency).getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getInstance(CampaignFrequency).all");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Pair pair = (value instanceof String ? (String) value : null) != null ? TuplesKt.to(key, value) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    public final void d(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        BuildersKt.launch$default(g(), null, null, new e(key, null), 3, null);
    }

    public final String e(String campaignId) {
        Intrinsics.checkNotNullParameter(campaignId, "campaignId");
        return a(a.CampaignFrequency).getString(campaignId, null);
    }

    public final ExecutorCoroutineDispatcher e() {
        return (ExecutorCoroutineDispatcher) this.f7585a.getValue();
    }

    public final String f(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String string = a(a.Default).getString(key, JsonUtils.EMPTY_JSON);
        return string == null ? JsonUtils.EMPTY_JSON : string;
    }

    public final Map<String, String> f() {
        Map<String, ?> all = a(a.Placement).getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getInstance(Placement).all");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Pair pair = value == null ? null : TuplesKt.to(key, value.toString());
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    public final Long g(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        a aVar = a.InstallTracking;
        if (a(aVar).contains(key)) {
            return Long.valueOf(a(aVar).getLong(key, 0L));
        }
        return null;
    }

    public final CoroutineScope g() {
        return (CoroutineScope) this.f7586b.getValue();
    }

    public final long h() {
        return a(a.Default).getLong("session_id", 0L);
    }

    public final long i() {
        return a(a.Default).getLong("session_start_ts_m", 0L);
    }

    public final long j() {
        return a(a.Default).getLong("session_start_ts", 0L);
    }

    public final long k() {
        return a(a.Default).getLong("session_uptime_m", 0L);
    }

    public final long l() {
        return a(a.Default).getLong("session_uptime", 0L);
    }

    public final String m() {
        return a(a.Default).getString("session_uuid", null);
    }
}
