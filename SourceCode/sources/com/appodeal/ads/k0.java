package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.s1;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.y2;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a  reason: collision with root package name */
    public static final k0 f6758a = new k0();

    /* renamed from: b  reason: collision with root package name */
    public static final Lazy f6759b = LazyKt.lazy(j.f6801a);

    /* renamed from: c  reason: collision with root package name */
    public static final Lazy f6760c = LazyKt.lazy(b.f6766a);

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$clickRequest$1", f = "AppodealNetworkRequestApi.kt", i = {}, l = {155}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f6761a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ s1.a.C0143a f6762b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ u1 f6763c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ y1 f6764d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ x1 f6765e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(s1.a.C0143a c0143a, u1 u1Var, y1 y1Var, x1 x1Var, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f6762b = c0143a;
            this.f6763c = u1Var;
            this.f6764d = y1Var;
            this.f6765e = x1Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f6762b, this.f6763c, this.f6764d, this.f6765e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6761a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                s1.a.C0143a c0143a = this.f6762b;
                this.f6761a = 1;
                a2 = com.appodeal.ads.networking.c.a(c0143a, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a2 = ((Result) obj).m510unboximpl();
            }
            u1 u1Var = this.f6763c;
            y1 y1Var = this.f6764d;
            x1 x1Var = this.f6765e;
            if (Result.m508isSuccessimpl(a2)) {
                JSONObject jSONObject = (JSONObject) a2;
                u1Var.a(jSONObject);
                y1Var.getClass();
                y1.a(jSONObject);
                x1Var.getClass();
                x1.a(jSONObject);
            }
            u1 u1Var2 = this.f6763c;
            y1 y1Var2 = this.f6764d;
            x1 x1Var2 = this.f6765e;
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(a2);
            if (m504exceptionOrNullimpl != null) {
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                u1Var2.a();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                y1Var2.getClass();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                x1Var2.getClass();
            }
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Lambda implements Function0<CoroutineScope> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f6766a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(k0.a());
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi", f = "AppodealNetworkRequestApi.kt", i = {0, 0}, l = {27}, m = "configRequest-IoAF18A", n = {"baseCallback", "userTokenCallback"}, s = {"L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public t1 f6767a;

        /* renamed from: b  reason: collision with root package name */
        public x1 f6768b;

        /* renamed from: c  reason: collision with root package name */
        public /* synthetic */ Object f6769c;

        /* renamed from: e  reason: collision with root package name */
        public int f6771e;

        public c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6769c = obj;
            this.f6771e |= Integer.MIN_VALUE;
            Object a2 = k0.this.a(this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$finishRequest$1", f = "AppodealNetworkRequestApi.kt", i = {}, l = {213}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f6772a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ s1.a.b f6773b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ y1 f6774c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ x1 f6775d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(s1.a.b bVar, y1 y1Var, x1 x1Var, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f6773b = bVar;
            this.f6774c = y1Var;
            this.f6775d = x1Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new d(this.f6773b, this.f6774c, this.f6775d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6772a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                s1.a.b bVar = this.f6773b;
                this.f6772a = 1;
                a2 = com.appodeal.ads.networking.c.a(bVar, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a2 = ((Result) obj).m510unboximpl();
            }
            y1 y1Var = this.f6774c;
            x1 x1Var = this.f6775d;
            if (Result.m508isSuccessimpl(a2)) {
                JSONObject jSONObject = (JSONObject) a2;
                y1Var.getClass();
                y1.a(jSONObject);
                x1Var.getClass();
                x1.a(jSONObject);
            }
            y1 y1Var2 = this.f6774c;
            x1 x1Var2 = this.f6775d;
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(a2);
            if (m504exceptionOrNullimpl != null) {
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                y1Var2.getClass();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                x1Var2.getClass();
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$getRequest$1", f = "AppodealNetworkRequestApi.kt", i = {0, 0}, l = {123}, m = "invokeSuspend", n = {"baseCallback", "userTokenCallback"}, s = {"L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public t1 f6776a;

        /* renamed from: b  reason: collision with root package name */
        public x1 f6777b;

        /* renamed from: c  reason: collision with root package name */
        public int f6778c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ r<?> f6779d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ s<?> f6780e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ u<?, ?, ?> f6781f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ Context f6782g;

        /* renamed from: h  reason: collision with root package name */
        public final /* synthetic */ u<?, ?, ?>.e f6783h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(r<?> rVar, s<?> sVar, u<?, ?, ?> uVar, Context context, u<?, ?, ?>.e eVar, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f6779d = rVar;
            this.f6780e = sVar;
            this.f6781f = uVar;
            this.f6782g = context;
            this.f6783h = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new e(this.f6779d, this.f6780e, this.f6781f, this.f6782g, this.f6783h, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            t1 t1Var;
            Object a2;
            x1 x1Var;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6778c;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                s1.c cVar = new s1.c(this.f6779d, this.f6780e, this.f6781f);
                t1Var = new t1(this.f6782g);
                x1 x1Var2 = new x1();
                this.f6776a = t1Var;
                this.f6777b = x1Var2;
                this.f6778c = 1;
                a2 = com.appodeal.ads.networking.c.a(cVar, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                x1Var = x1Var2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                x1Var = this.f6777b;
                t1Var = this.f6776a;
                ResultKt.throwOnFailure(obj);
                a2 = ((Result) obj).m510unboximpl();
            }
            u<?, ?, ?>.e eVar = this.f6783h;
            if (Result.m508isSuccessimpl(a2)) {
                JSONObject jSONObject = (JSONObject) a2;
                t1Var.a(jSONObject);
                x1Var.getClass();
                x1.a(jSONObject);
                eVar.a(jSONObject);
            }
            u<?, ?, ?>.e eVar2 = this.f6783h;
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(a2);
            if (m504exceptionOrNullimpl != null) {
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                t1Var.getClass();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                x1Var.getClass();
                eVar2.a(com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl));
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$iapRequest$1", f = "AppodealNetworkRequestApi.kt", i = {0, 0}, l = {79}, m = "invokeSuspend", n = {"callback", "userTokenCallback"}, s = {"L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public v1 f6784a;

        /* renamed from: b  reason: collision with root package name */
        public x1 f6785b;

        /* renamed from: c  reason: collision with root package name */
        public int f6786c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ Context f6787d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ s1.d f6788e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Context context, s1.d dVar, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f6787d = context;
            this.f6788e = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new f(this.f6787d, this.f6788e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            v1 v1Var;
            x1 x1Var;
            Object obj2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6786c;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                v1Var = new v1(this.f6787d);
                x1 x1Var2 = new x1();
                s1.d dVar = this.f6788e;
                this.f6784a = v1Var;
                this.f6785b = x1Var2;
                this.f6786c = 1;
                Object a2 = com.appodeal.ads.networking.c.a(dVar, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                x1Var = x1Var2;
                obj2 = a2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                x1Var = this.f6785b;
                v1Var = this.f6784a;
                ResultKt.throwOnFailure(obj);
                obj2 = ((Result) obj).m510unboximpl();
            }
            if (Result.m508isSuccessimpl(obj2)) {
                JSONObject jSONObject = (JSONObject) obj2;
                v1Var.a(jSONObject);
                x1Var.getClass();
                x1.a(jSONObject);
            }
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(obj2);
            if (m504exceptionOrNullimpl != null) {
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                v1Var.getClass();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                x1Var.getClass();
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi", f = "AppodealNetworkRequestApi.kt", i = {0, 0}, l = {42}, m = "initRequest-IoAF18A", n = {"baseCallback", "userTokenCallback"}, s = {"L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public t1 f6789a;

        /* renamed from: b  reason: collision with root package name */
        public x1 f6790b;

        /* renamed from: c  reason: collision with root package name */
        public /* synthetic */ Object f6791c;

        /* renamed from: e  reason: collision with root package name */
        public int f6793e;

        public g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6791c = obj;
            this.f6793e |= Integer.MIN_VALUE;
            Object b2 = k0.this.b(this);
            return b2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? b2 : Result.m500boximpl(b2);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi", f = "AppodealNetworkRequestApi.kt", i = {0, 0}, l = {63}, m = "installRequest", n = {"baseCallback", "userTokenCallback"}, s = {"L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class h extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public t1 f6794a;

        /* renamed from: b  reason: collision with root package name */
        public x1 f6795b;

        /* renamed from: c  reason: collision with root package name */
        public /* synthetic */ Object f6796c;

        /* renamed from: e  reason: collision with root package name */
        public int f6798e;

        public h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6796c = obj;
            this.f6798e |= Integer.MIN_VALUE;
            return k0.this.a(null, this);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$installRequestAsync$1", f = "AppodealNetworkRequestApi.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f6799a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f6800b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f6800b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new i(this.f6800b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6799a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                k0 k0Var = k0.f6758a;
                String str = this.f6800b;
                this.f6799a = 1;
                if (k0Var.a(str, this) == coroutine_suspended) {
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

    /* loaded from: classes.dex */
    public static final class j extends Lambda implements Function0<ExecutorCoroutineDispatcher> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f6801a = new j();

        public j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ExecutorCoroutineDispatcher invoke() {
            return ThreadPoolDispatcherKt.newSingleThreadContext("networking");
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$sessionsRequest$1", f = "AppodealNetworkRequestApi.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f6802a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ s1.g f6803b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ w1 f6804c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ x1 f6805d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(s1.g gVar, w1 w1Var, x1 x1Var, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f6803b = gVar;
            this.f6804c = w1Var;
            this.f6805d = x1Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new k(this.f6803b, this.f6804c, this.f6805d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6802a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                s1.g gVar = this.f6803b;
                this.f6802a = 1;
                a2 = com.appodeal.ads.networking.c.a(gVar, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a2 = ((Result) obj).m510unboximpl();
            }
            w1 w1Var = this.f6804c;
            x1 x1Var = this.f6805d;
            if (Result.m508isSuccessimpl(a2)) {
                JSONObject jSONObject = (JSONObject) a2;
                w1Var.getClass();
                w1.a(jSONObject);
                x1Var.getClass();
                x1.a(jSONObject);
            }
            w1 w1Var2 = this.f6804c;
            x1 x1Var2 = this.f6805d;
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(a2);
            if (m504exceptionOrNullimpl != null) {
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                w1Var2.getClass();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                x1Var2.getClass();
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$showRequest$1", f = "AppodealNetworkRequestApi.kt", i = {}, l = {185}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f6806a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ s1.a.c f6807b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ y1 f6808c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ x1 f6809d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(s1.a.c cVar, y1 y1Var, x1 x1Var, Continuation<? super l> continuation) {
            super(2, continuation);
            this.f6807b = cVar;
            this.f6808c = y1Var;
            this.f6809d = x1Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new l(this.f6807b, this.f6808c, this.f6809d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6806a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                s1.a.c cVar = this.f6807b;
                this.f6806a = 1;
                a2 = com.appodeal.ads.networking.c.a(cVar, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a2 = ((Result) obj).m510unboximpl();
            }
            y1 y1Var = this.f6808c;
            x1 x1Var = this.f6809d;
            if (Result.m508isSuccessimpl(a2)) {
                JSONObject jSONObject = (JSONObject) a2;
                y1Var.getClass();
                y1.a(jSONObject);
                x1Var.getClass();
                x1.a(jSONObject);
            }
            y1 y1Var2 = this.f6808c;
            x1 x1Var2 = this.f6809d;
            Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(a2);
            if (m504exceptionOrNullimpl != null) {
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                y1Var2.getClass();
                com.appodeal.ads.networking.f.a(m504exceptionOrNullimpl);
                x1Var2.getClass();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Incorrect field signature: TAdRequestType; */
    @DebugMetadata(c = "com.appodeal.ads.AppodealNetworkRequestApi$statsRequest$1", f = "AppodealNetworkRequestApi.kt", i = {}, l = {242}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f6810a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ y2.a f6811b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ u<AdObjectType, AdRequestType, ?> f6812c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ r f6813d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Incorrect types in method signature: (Lcom/appodeal/ads/y2$a;Lcom/appodeal/ads/u<TAdObjectType;TAdRequestType;*>;TAdRequestType;Lkotlin/coroutines/Continuation<-Lcom/appodeal/ads/k0$m;>;)V */
        public m(y2.a aVar, u uVar, r rVar, Continuation continuation) {
            super(2, continuation);
            this.f6811b = aVar;
            this.f6812c = uVar;
            this.f6813d = rVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new m(this.f6811b, this.f6812c, this.f6813d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((m) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object a2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f6810a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                y2.a aVar = this.f6811b;
                this.f6810a = 1;
                a2 = com.appodeal.ads.networking.c.a(aVar, this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a2 = ((Result) obj).m510unboximpl();
            }
            u<AdObjectType, AdRequestType, ?> uVar = this.f6812c;
            r rVar = this.f6813d;
            if (Result.m508isSuccessimpl(a2)) {
                JSONObject jSONObject = (JSONObject) a2;
                Log.log("PostBid", "ApiNetworkRequest: onSuccess");
                Log.logObject(LogConstants.KEY_SDK, LogConstants.EVENT_RESPONSE, jSONObject, Log.LogLevel.verbose);
                uVar.a((u<AdObjectType, AdRequestType, ?>) rVar, jSONObject);
            }
            u<AdObjectType, AdRequestType, ?> uVar2 = this.f6812c;
            r rVar2 = this.f6813d;
            if (Result.m504exceptionOrNullimpl(a2) != null) {
                Log.log("PostBid", "ApiNetworkRequest: onFail");
                uVar2.a((u<AdObjectType, AdRequestType, ?>) rVar2, (JSONObject) null);
            }
            return Unit.INSTANCE;
        }
    }

    public static final ExecutorCoroutineDispatcher a() {
        return (ExecutorCoroutineDispatcher) f6759b.getValue();
    }

    @JvmStatic
    public static final void a(Context context, double d2, String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new f(context, new s1.d(d2, str), null), 3, null);
    }

    @JvmStatic
    public static final void a(Context context, u<?, ?, ?> adTypeController, r<?> adRequest, s<?> adRequestParams, u<?, ?, ?>.e callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adTypeController, "adTypeController");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new e(adRequest, adRequestParams, adTypeController, context, callback, null), 3, null);
    }

    @JvmStatic
    public static final void a(r<?> adRequest, com.appodeal.ads.l<?, ?, ?, ?> adObject, Integer num, Double d2) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        String id = adObject.getId();
        Intrinsics.checkNotNullExpressionValue(id, "adObject.id");
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new d(new s1.a.b(adRequest, id, adObject.getEcpm(), num, d2), new y1(), new x1(), null), 3, null);
    }

    @JvmStatic
    public static final void a(r<?> adRequest, com.appodeal.ads.l<?, ?, ?, ?> adObject, Integer num, Double d2, UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        String id = adObject.getId();
        Intrinsics.checkNotNullExpressionValue(id, "adObject.id");
        s1.a.C0143a c0143a = new s1.a.C0143a(adRequest, id, adObject.getEcpm(), num, d2);
        y1 y1Var = new y1();
        x1 x1Var = new x1();
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new a(c0143a, new u1(unifiedAdCallbackClickTrackListener), y1Var, x1Var, null), 3, null);
    }

    @JvmStatic
    public static final <AdObjectType extends com.appodeal.ads.l<?, ?, ?, ?>, AdRequestType extends r<AdObjectType>> void a(u<AdObjectType, AdRequestType, ?> adController, AdRequestType adRequest, AdObjectType adobjecttype) {
        Intrinsics.checkNotNullParameter(adController, "adController");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        com.appodeal.ads.services.c b2 = com.appodeal.ads.services.g.b();
        Context applicationContext = com.appodeal.ads.context.b.f6583b.getApplicationContext();
        j4 instance = j4.f6751a;
        Intrinsics.checkNotNullExpressionValue(instance, "instance");
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new m(new y2.a(applicationContext, adController, adRequest, adobjecttype, b2.getServicesData()), adController, adRequest, null), 3, null);
    }

    public static void a(String packageName) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new i(packageName, null), 3, null);
    }

    public static CoroutineScope b() {
        return (CoroutineScope) f6760c.getValue();
    }

    @JvmStatic
    public static final void b(r<?> adRequest, com.appodeal.ads.l<?, ?, ?, ?> adObject, Integer num, Double d2) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        String id = adObject.getId();
        Intrinsics.checkNotNullExpressionValue(id, "adObject.id");
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new l(new s1.a.c(adRequest, id, adObject.getEcpm(), num, d2), new y1(), new x1(), null), 3, null);
    }

    @JvmStatic
    public static final void c() {
        BuildersKt__Builders_commonKt.launch$default(b(), null, null, new k(new s1.g(), new w1(), new x1(), null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.appodeal.ads.k0.h
            if (r0 == 0) goto L13
            r0 = r7
            com.appodeal.ads.k0$h r0 = (com.appodeal.ads.k0.h) r0
            int r1 = r0.f6798e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6798e = r1
            goto L18
        L13:
            com.appodeal.ads.k0$h r0 = new com.appodeal.ads.k0$h
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f6796c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6798e
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            com.appodeal.ads.x1 r6 = r0.f6795b
            com.appodeal.ads.t1 r0 = r0.f6794a
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.m510unboximpl()
            goto L64
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r7)
            com.appodeal.ads.context.b r7 = com.appodeal.ads.context.b.f6583b
            android.content.Context r7 = r7.getApplicationContext()
            com.appodeal.ads.s1$f r2 = new com.appodeal.ads.s1$f
            r2.<init>(r6)
            com.appodeal.ads.t1 r6 = new com.appodeal.ads.t1
            r6.<init>(r7)
            com.appodeal.ads.x1 r7 = new com.appodeal.ads.x1
            r7.<init>()
            r0.f6794a = r6
            r0.f6795b = r7
            r0.f6798e = r3
            java.lang.Object r0 = com.appodeal.ads.networking.c.a(r2, r0)
            if (r0 != r1) goto L60
            return r1
        L60:
            r4 = r0
            r0 = r6
            r6 = r7
            r7 = r4
        L64:
            boolean r1 = kotlin.Result.m508isSuccessimpl(r7)
            if (r1 == 0) goto L76
            r1 = r7
            org.json.JSONObject r1 = (org.json.JSONObject) r1
            r0.a(r1)
            r6.getClass()
            com.appodeal.ads.x1.a(r1)
        L76:
            java.lang.Throwable r7 = kotlin.Result.m504exceptionOrNullimpl(r7)
            if (r7 != 0) goto L7d
            goto L89
        L7d:
            com.appodeal.ads.networking.f.a(r7)
            r0.getClass()
            com.appodeal.ads.networking.f.a(r7)
            r6.getClass()
        L89:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.k0.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.Result<? extends org.json.JSONObject>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.appodeal.ads.k0.c
            if (r0 == 0) goto L13
            r0 = r6
            com.appodeal.ads.k0$c r0 = (com.appodeal.ads.k0.c) r0
            int r1 = r0.f6771e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6771e = r1
            goto L18
        L13:
            com.appodeal.ads.k0$c r0 = new com.appodeal.ads.k0$c
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f6769c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6771e
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            com.appodeal.ads.x1 r1 = r0.f6768b
            com.appodeal.ads.t1 r0 = r0.f6767a
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.m510unboximpl()
            goto L62
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            com.appodeal.ads.s1$b r6 = new com.appodeal.ads.s1$b
            r6.<init>()
            com.appodeal.ads.context.b r2 = com.appodeal.ads.context.b.f6583b
            android.content.Context r2 = r2.getApplicationContext()
            com.appodeal.ads.t1 r4 = new com.appodeal.ads.t1
            r4.<init>(r2)
            com.appodeal.ads.x1 r2 = new com.appodeal.ads.x1
            r2.<init>()
            r0.f6767a = r4
            r0.f6768b = r2
            r0.f6771e = r3
            java.lang.Object r6 = com.appodeal.ads.networking.c.a(r6, r0)
            if (r6 != r1) goto L60
            return r1
        L60:
            r1 = r2
            r0 = r4
        L62:
            boolean r2 = kotlin.Result.m508isSuccessimpl(r6)
            if (r2 == 0) goto L74
            r2 = r6
            org.json.JSONObject r2 = (org.json.JSONObject) r2
            r0.a(r2)
            r1.getClass()
            com.appodeal.ads.x1.a(r2)
        L74:
            java.lang.Throwable r2 = kotlin.Result.m504exceptionOrNullimpl(r6)
            if (r2 != 0) goto L7b
            goto L87
        L7b:
            com.appodeal.ads.networking.f.a(r2)
            r0.getClass()
            com.appodeal.ads.networking.f.a(r2)
            r1.getClass()
        L87:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.k0.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation<? super kotlin.Result<? extends org.json.JSONObject>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.appodeal.ads.k0.g
            if (r0 == 0) goto L13
            r0 = r6
            com.appodeal.ads.k0$g r0 = (com.appodeal.ads.k0.g) r0
            int r1 = r0.f6793e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6793e = r1
            goto L18
        L13:
            com.appodeal.ads.k0$g r0 = new com.appodeal.ads.k0$g
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f6791c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6793e
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            com.appodeal.ads.x1 r1 = r0.f6790b
            com.appodeal.ads.t1 r0 = r0.f6789a
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.m510unboximpl()
            goto L62
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            com.appodeal.ads.s1$e r6 = new com.appodeal.ads.s1$e
            r6.<init>()
            com.appodeal.ads.context.b r2 = com.appodeal.ads.context.b.f6583b
            android.content.Context r2 = r2.getApplicationContext()
            com.appodeal.ads.t1 r4 = new com.appodeal.ads.t1
            r4.<init>(r2)
            com.appodeal.ads.x1 r2 = new com.appodeal.ads.x1
            r2.<init>()
            r0.f6789a = r4
            r0.f6790b = r2
            r0.f6793e = r3
            java.lang.Object r6 = com.appodeal.ads.networking.c.a(r6, r0)
            if (r6 != r1) goto L60
            return r1
        L60:
            r1 = r2
            r0 = r4
        L62:
            boolean r2 = kotlin.Result.m508isSuccessimpl(r6)
            if (r2 == 0) goto L74
            r2 = r6
            org.json.JSONObject r2 = (org.json.JSONObject) r2
            r0.a(r2)
            r1.getClass()
            com.appodeal.ads.x1.a(r2)
        L74:
            java.lang.Throwable r2 = kotlin.Result.m504exceptionOrNullimpl(r6)
            if (r2 != 0) goto L7b
            goto L87
        L7b:
            com.appodeal.ads.networking.f.a(r2)
            r0.getClass()
            com.appodeal.ads.networking.f.a(r2)
            r1.getClass()
        L87:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.k0.b(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
