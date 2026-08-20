package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.data.ApplicationData;
import com.appodeal.ads.modules.common.internal.data.DeviceData;
import com.appodeal.ads.modules.common.internal.data.UserPersonalData;
import com.appodeal.ads.modules.common.internal.service.Service;
import com.appodeal.ads.modules.common.internal.service.ServiceOptions;
import com.appodeal.ads.modules.common.internal.service.ServiceVariant;
import com.appodeal.ads.modules.common.internal.service.ServicesRegistry;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.ads.RegisterServicesUseCase$invoke$2", f = "RegisterServicesUseCase.kt", i = {0, 0, 1, 1, 1}, l = {64, 66}, m = "invokeSuspend", n = {"registeredServices", "variant", "registeredServices", "variant", "it"}, s = {"L$0", "L$2", "L$0", "L$2", "L$4"})
/* loaded from: classes.dex */
public final class z2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<Pair<? extends ServiceVariant, ? extends Result<? extends Service<?>>>>>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public Iterator f8005a;

    /* renamed from: b  reason: collision with root package name */
    public ServiceVariant f8006b;

    /* renamed from: c  reason: collision with root package name */
    public Object f8007c;

    /* renamed from: d  reason: collision with root package name */
    public Service f8008d;

    /* renamed from: e  reason: collision with root package name */
    public int f8009e;

    /* renamed from: f  reason: collision with root package name */
    public /* synthetic */ Object f8010f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ a3 f8011g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Context f8012h;
    public final /* synthetic */ com.appodeal.ads.networking.b i;
    public final /* synthetic */ boolean j;
    public final /* synthetic */ String k;
    public final /* synthetic */ ApplicationData l;
    public final /* synthetic */ DeviceData m;
    public final /* synthetic */ UserPersonalData n;
    public final /* synthetic */ ServicesRegistry o;

    @DebugMetadata(c = "com.appodeal.ads.RegisterServicesUseCase$invoke$2$deferredInitServices$1$1$1", f = "RegisterServicesUseCase.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Service<?>>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f8013a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ ServiceVariant f8014b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.ads.networking.b f8015c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ ServicesRegistry f8016d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ ServiceOptions f8017e;

        @DebugMetadata(c = "com.appodeal.ads.RegisterServicesUseCase$invoke$2$deferredInitServices$1$1$1$1", f = "RegisterServicesUseCase.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.appodeal.ads.z2$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0152a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Service<? extends ServiceOptions>>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public int f8018a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ ServicesRegistry f8019b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ ServiceOptions f8020c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0152a(ServicesRegistry servicesRegistry, ServiceOptions serviceOptions, Continuation<? super C0152a> continuation) {
                super(2, continuation);
                this.f8019b = servicesRegistry;
                this.f8020c = serviceOptions;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0152a(this.f8019b, this.f8020c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Service<? extends ServiceOptions>>> continuation) {
                return ((C0152a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object mo147initializegIAlus;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.f8018a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServicesRegistry servicesRegistry = this.f8019b;
                    ServiceOptions serviceOptions = this.f8020c;
                    this.f8018a = 1;
                    mo147initializegIAlus = servicesRegistry.mo147initializegIAlus(serviceOptions, this);
                    if (mo147initializegIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                    mo147initializegIAlus = ((Result) obj).m510unboximpl();
                }
                return Result.m500boximpl(mo147initializegIAlus);
            }
        }

        /* loaded from: classes.dex */
        public /* synthetic */ class b {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ServiceVariant.values().length];
                iArr[ServiceVariant.Appsflyer.ordinal()] = 1;
                iArr[ServiceVariant.Adjust.ordinal()] = 2;
                iArr[ServiceVariant.FacebookAnalytics.ordinal()] = 3;
                iArr[ServiceVariant.Firebase.ordinal()] = 4;
                iArr[ServiceVariant.StackAnalytics.ordinal()] = 5;
                iArr[ServiceVariant.SentryAnalytics.ordinal()] = 6;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ServiceVariant serviceVariant, com.appodeal.ads.networking.b bVar, ServicesRegistry servicesRegistry, ServiceOptions serviceOptions, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f8014b = serviceVariant;
            this.f8015c = bVar;
            this.f8016d = servicesRegistry;
            this.f8017e = serviceOptions;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f8014b, this.f8015c, this.f8016d, this.f8017e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Service<?>>> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00a1 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f8013a
                r2 = 1
                if (r1 == 0) goto L18
                if (r1 != r2) goto L10
                kotlin.ResultKt.throwOnFailure(r8)
                goto La2
            L10:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L18:
                kotlin.ResultKt.throwOnFailure(r8)
                com.appodeal.ads.modules.common.internal.service.ServiceVariant r8 = r7.f8014b
                int[] r1 = com.appodeal.ads.z2.a.b.$EnumSwitchMapping$0
                int r8 = r8.ordinal()
                r8 = r1[r8]
                r1 = 0
                switch(r8) {
                    case 1: goto L75;
                    case 2: goto L67;
                    case 3: goto L59;
                    case 4: goto L4b;
                    case 5: goto L3d;
                    case 6: goto L2f;
                    default: goto L29;
                }
            L29:
                kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
                r8.<init>()
                throw r8
            L2f:
                com.appodeal.ads.networking.b r8 = r7.f8015c
                com.appodeal.ads.networking.b$e r8 = r8.e()
                if (r8 != 0) goto L38
                goto L7d
            L38:
                long r3 = r8.a()
                goto L83
            L3d:
                com.appodeal.ads.networking.b r8 = r7.f8015c
                com.appodeal.ads.networking.b$f r8 = r8.f()
                if (r8 != 0) goto L46
                goto L7d
            L46:
                long r3 = r8.b()
                goto L83
            L4b:
                com.appodeal.ads.networking.b r8 = r7.f8015c
                com.appodeal.ads.networking.b$d r8 = r8.d()
                if (r8 != 0) goto L54
                goto L7d
            L54:
                long r3 = r8.d()
                goto L83
            L59:
                com.appodeal.ads.networking.b r8 = r7.f8015c
                com.appodeal.ads.networking.b$c r8 = r8.c()
                if (r8 != 0) goto L62
                goto L7d
            L62:
                long r3 = r8.a()
                goto L83
            L67:
                com.appodeal.ads.networking.b r8 = r7.f8015c
                com.appodeal.ads.networking.b$a r8 = r8.a()
                if (r8 != 0) goto L70
                goto L7d
            L70:
                long r3 = r8.d()
                goto L83
            L75:
                com.appodeal.ads.networking.b r8 = r7.f8015c
                com.appodeal.ads.networking.b$b r8 = r8.b()
                if (r8 != 0) goto L7f
            L7d:
                r8 = r1
                goto L87
            L7f:
                long r3 = r8.d()
            L83:
                java.lang.Long r8 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r3)
            L87:
                if (r8 != 0) goto L8c
                r3 = 15000(0x3a98, double:7.411E-320)
                goto L90
            L8c:
                long r3 = r8.longValue()
            L90:
                com.appodeal.ads.z2$a$a r8 = new com.appodeal.ads.z2$a$a
                com.appodeal.ads.modules.common.internal.service.ServicesRegistry r5 = r7.f8016d
                com.appodeal.ads.modules.common.internal.service.ServiceOptions r6 = r7.f8017e
                r8.<init>(r5, r6, r1)
                r7.f8013a = r2
                java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r3, r8, r7)
                if (r8 != r0) goto La2
                return r0
            La2:
                kotlin.Result r8 = (kotlin.Result) r8
                if (r8 != 0) goto Lb3
                kotlin.Result$Companion r8 = kotlin.Result.Companion
                com.appodeal.ads.service.ServiceError$InitializationTimeout r8 = com.appodeal.ads.service.ServiceError.InitializationTimeout.INSTANCE
                java.lang.Object r8 = kotlin.ResultKt.createFailure(r8)
                java.lang.Object r8 = kotlin.Result.m501constructorimpl(r8)
                goto Lb7
            Lb3:
                java.lang.Object r8 = r8.m510unboximpl()
            Lb7:
                kotlin.Result r8 = kotlin.Result.m500boximpl(r8)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.z2.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z2(a3 a3Var, Context context, com.appodeal.ads.networking.b bVar, boolean z, String str, ApplicationData applicationData, DeviceData deviceData, UserPersonalData userPersonalData, ServicesRegistry servicesRegistry, Continuation<? super z2> continuation) {
        super(2, continuation);
        this.f8011g = a3Var;
        this.f8012h = context;
        this.i = bVar;
        this.j = z;
        this.k = str;
        this.l = applicationData;
        this.m = deviceData;
        this.n = userPersonalData;
        this.o = servicesRegistry;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        z2 z2Var = new z2(this.f8011g, this.f8012h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, continuation);
        z2Var.f8010f = obj;
        return z2Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<Pair<? extends ServiceVariant, ? extends Result<? extends Service<?>>>>> continuation) {
        return ((z2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b7 A[RETURN] */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x014c -> B:39:0x0151). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x019c -> B:41:0x019d). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r30) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.z2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
