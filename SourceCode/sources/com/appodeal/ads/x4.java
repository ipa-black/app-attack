package com.appodeal.ads;

import android.app.Application;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.services.c;
import com.appodeal.ads.storage.a;
import com.appodeal.consent.Consent;
import com.google.android.exoplayer2.util.MimeTypes;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
/* loaded from: classes.dex */
public final class x4 implements t4 {

    /* renamed from: a  reason: collision with root package name */
    public final com.appodeal.ads.networking.usecases.a f7911a;

    /* renamed from: b  reason: collision with root package name */
    public final c.a f7912b;

    /* renamed from: c  reason: collision with root package name */
    public final a3 f7913c;

    /* renamed from: d  reason: collision with root package name */
    public final com.appodeal.ads.initializing.a f7914d;

    /* renamed from: e  reason: collision with root package name */
    public final m1 f7915e;

    /* renamed from: f  reason: collision with root package name */
    public final com.appodeal.ads.utils.tracker.a f7916f;

    /* renamed from: g  reason: collision with root package name */
    public final c5 f7917g;

    /* renamed from: h  reason: collision with root package name */
    public final com.appodeal.ads.b f7918h;
    public final com.appodeal.ads.storage.a i;
    public final a.InterfaceC0146a j;

    @DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl", f = "SdkCoreInitializer.kt", i = {0, 0, 0, 0, 0, 0, 1}, l = {84, 85}, m = "invoke-yxL6bBk", n = {"this", MimeTypes.BASE_TYPE_APPLICATION, Constants.APP_KEY, "consent", "hasConsent", "applicationContext", "this"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0"})
    /* loaded from: classes.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public x4 f7919a;

        /* renamed from: b  reason: collision with root package name */
        public Application f7920b;

        /* renamed from: c  reason: collision with root package name */
        public String f7921c;

        /* renamed from: d  reason: collision with root package name */
        public Consent f7922d;

        /* renamed from: e  reason: collision with root package name */
        public Boolean f7923e;

        /* renamed from: f  reason: collision with root package name */
        public Context f7924f;

        /* renamed from: g  reason: collision with root package name */
        public /* synthetic */ Object f7925g;
        public int i;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7925g = obj;
            this.i |= Integer.MIN_VALUE;
            Object a2 = x4.this.a(null, null, null, null, this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl$invoke$2", f = "SdkCoreInitializer.kt", i = {0, 1, 2, 3, 4, 5}, l = {86, 90, 96, 97, 101, 105}, m = "invokeSuspend", n = {"$this$withContext", "$this$withContext", "$this$withContext", "$this$withContext", "$this$withContext", "$this$withContext"}, s = {"L$0", "L$0", "L$0", "L$0", "L$0", "L$0"})
    /* loaded from: classes.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public Object f7927a;

        /* renamed from: b  reason: collision with root package name */
        public x4 f7928b;

        /* renamed from: c  reason: collision with root package name */
        public int f7929c;

        /* renamed from: d  reason: collision with root package name */
        public /* synthetic */ Object f7930d;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ Application f7932f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ String f7933g;

        /* renamed from: h  reason: collision with root package name */
        public final /* synthetic */ Context f7934h;
        public final /* synthetic */ Consent i;
        public final /* synthetic */ Boolean j;

        @DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl$invoke$2$3", f = "SdkCoreInitializer.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes.dex */
        public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public int f7935a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ x4 f7936b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Context f7937c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(x4 x4Var, Context context, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f7936b = x4Var;
                this.f7937c = context;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new a(this.f7936b, this.f7937c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.f7935a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    x4 x4Var = this.f7936b;
                    Context applicationContext = this.f7937c;
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                    this.f7935a = 1;
                    if (x4.a(x4Var, applicationContext, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Application application, String str, Context context, Consent consent, Boolean bool, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f7932f = application;
            this.f7933g = str;
            this.f7934h = context;
            this.i = consent;
            this.j = bool;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(this.f7932f, this.f7933g, this.f7934h, this.i, this.j, continuation);
            bVar.f7930d = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x008f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00a1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00db A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0105 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0106  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 302
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x4.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public x4(com.appodeal.ads.networking.usecases.a getConfig, c.a servicesSolutionInitializer, a3 registerServices, com.appodeal.ads.initializing.b errorContainer, m1 initRequest, com.appodeal.ads.utils.tracker.b memoryTracker, d5 sessionTimeTracker, c adLifecycleTracker, com.appodeal.ads.storage.o keyValueStorage, com.appodeal.ads.storage.n keyValueStorageInitializer) {
        Intrinsics.checkNotNullParameter(getConfig, "getConfig");
        Intrinsics.checkNotNullParameter(servicesSolutionInitializer, "servicesSolutionInitializer");
        Intrinsics.checkNotNullParameter(registerServices, "registerServices");
        Intrinsics.checkNotNullParameter(errorContainer, "errorContainer");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(memoryTracker, "memoryTracker");
        Intrinsics.checkNotNullParameter(sessionTimeTracker, "sessionTimeTracker");
        Intrinsics.checkNotNullParameter(adLifecycleTracker, "adLifecycleTracker");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        Intrinsics.checkNotNullParameter(keyValueStorageInitializer, "keyValueStorageInitializer");
        this.f7911a = getConfig;
        this.f7912b = servicesSolutionInitializer;
        this.f7913c = registerServices;
        this.f7914d = errorContainer;
        this.f7915e = initRequest;
        this.f7916f = memoryTracker;
        this.f7917g = sessionTimeTracker;
        this.f7918h = adLifecycleTracker;
        this.i = keyValueStorage;
        this.j = keyValueStorageInitializer;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.appodeal.ads.x4 r5, android.content.Context r6, com.appodeal.consent.Consent r7, java.lang.Boolean r8, java.lang.String r9, kotlin.coroutines.Continuation r10) {
        /*
            r5.getClass()
            boolean r0 = r10 instanceof com.appodeal.ads.u4
            if (r0 == 0) goto L16
            r0 = r10
            com.appodeal.ads.u4 r0 = (com.appodeal.ads.u4) r0
            int r1 = r0.f7714g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f7714g = r1
            goto L1b
        L16:
            com.appodeal.ads.u4 r0 = new com.appodeal.ads.u4
            r0.<init>(r5, r10)
        L1b:
            java.lang.Object r5 = r0.f7712e
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.f7714g
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L43
            if (r1 == r3) goto L37
            if (r1 != r2) goto L2f
            kotlin.ResultKt.throwOnFailure(r5)
            goto L83
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            java.lang.String r9 = r0.f7711d
            java.lang.Boolean r8 = r0.f7710c
            com.appodeal.consent.Consent r7 = r0.f7709b
            android.content.Context r6 = r0.f7708a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L59
        L43:
            kotlin.ResultKt.throwOnFailure(r5)
            com.appodeal.advertising.AdvertisingInfo r5 = com.appodeal.advertising.AdvertisingInfo.INSTANCE
            r0.f7708a = r6
            r0.f7709b = r7
            r0.f7710c = r8
            r0.f7711d = r9
            r0.f7714g = r3
            java.lang.Object r5 = r5.getAdvertisingProfile(r6, r0)
            if (r5 != r10) goto L59
            goto L85
        L59:
            com.appodeal.advertising.AdvertisingInfo$AdvertisingProfile r5 = (com.appodeal.advertising.AdvertisingInfo.AdvertisingProfile) r5
            java.lang.String r1 = java.lang.String.valueOf(r5)
            java.lang.String r3 = "AdvertisingProfile"
            java.lang.String r4 = "Extract"
            com.appodeal.ads.utils.Log.log(r3, r4, r1)
            com.appodeal.ads.x2.a(r8)
            com.appodeal.ads.x2 r8 = com.appodeal.ads.x2.f7895a
            r8.getClass()
            com.appodeal.ads.x2.a(r7)
            r7 = 0
            r0.f7708a = r7
            r0.f7709b = r7
            r0.f7710c = r7
            r0.f7711d = r7
            r0.f7714g = r2
            java.lang.Object r5 = r8.a(r9, r6, r5, r0)
            if (r5 != r10) goto L83
            goto L85
        L83:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
        L85:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x4.a(com.appodeal.ads.x4, android.content.Context, com.appodeal.consent.Consent, java.lang.Boolean, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
        if (r7 == r1) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d4 A[EDGE_INSN: B:58:0x00d4->B:47:0x00d4 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.appodeal.ads.x4 r4, android.content.Context r5, com.appodeal.ads.networking.b r6, kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x4.a(com.appodeal.ads.x4, android.content.Context, com.appodeal.ads.networking.b, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.appodeal.ads.x4 r5, android.content.Context r6, kotlin.coroutines.Continuation r7) {
        /*
            r5.getClass()
            boolean r0 = r7 instanceof com.appodeal.ads.w4
            if (r0 == 0) goto L16
            r0 = r7
            com.appodeal.ads.w4 r0 = (com.appodeal.ads.w4) r0
            int r1 = r0.f7881d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.f7881d = r1
            goto L1b
        L16:
            com.appodeal.ads.w4 r0 = new com.appodeal.ads.w4
            r0.<init>(r5, r7)
        L1b:
            java.lang.Object r7 = r0.f7879b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7881d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6c
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            android.content.Context r6 = r0.f7878a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L3d:
            kotlin.ResultKt.throwOnFailure(r7)
            com.appodeal.ads.storage.a r5 = r5.i
            r0.f7878a = r6
            r0.f7881d = r4
            java.lang.Object r7 = r5.a(r0)
            if (r7 != r1) goto L4d
            goto L6e
        L4d:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r5 = r7.booleanValue()
            if (r5 != 0) goto L6c
            com.appodeal.ads.k0 r5 = com.appodeal.ads.k0.f6758a
            java.lang.String r6 = r6.getPackageName()
            java.lang.String r7 = "applicationContext.packageName"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
            r7 = 0
            r0.f7878a = r7
            r0.f7881d = r3
            java.lang.Object r5 = r5.a(r6, r0)
            if (r5 != r1) goto L6c
            goto L6e
        L6c:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
        L6e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x4.a(com.appodeal.ads.x4, android.content.Context, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(2:3|(6:5|6|7|(1:(1:(1:(16:12|13|14|(1:16)|17|18|(1:20)(1:47)|21|(1:46)|24|(1:26)(1:42)|27|(4:31|32|(1:34)(1:36)|35)|37|38|39)(2:48|49))(5:50|51|52|53|(2:55|56)(15:57|14|(0)|17|18|(0)(0)|21|(1:23)(2:43|46)|24|(0)(0)|27|(5:29|31|32|(0)(0)|35)|37|38|39)))(3:58|59|60))(3:66|67|(2:69|70))|61|(2:63|64)(3:65|53|(0)(0))))|76|6|7|(0)(0)|61|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0244, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0245, code lost:
        r1 = com.appodeal.ads.g1.f6669a;
        r0 = r0.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x024b, code lost:
        if (r0 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x024d, code lost:
        r0 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x024f, code lost:
        r1.b(r0);
        com.appodeal.ads.q4.f7304b = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0133 A[Catch: Exception -> 0x0244, LOOP:0: B:37:0x0131->B:38:0x0133, LOOP_END, TryCatch #0 {Exception -> 0x0244, blocks: (B:14:0x004a, B:36:0x0119, B:38:0x0133, B:39:0x013e, B:43:0x018b, B:50:0x01a7, B:54:0x01bf, B:56:0x01cc, B:58:0x01d2, B:61:0x01dc, B:63:0x021d, B:62:0x0204, B:64:0x0228, B:46:0x019c, B:49:0x01a3, B:42:0x0187, B:19:0x0069, B:32:0x00ed, B:22:0x0083, B:28:0x00b8, B:25:0x0091), top: B:73:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0187 A[Catch: Exception -> 0x0244, TryCatch #0 {Exception -> 0x0244, blocks: (B:14:0x004a, B:36:0x0119, B:38:0x0133, B:39:0x013e, B:43:0x018b, B:50:0x01a7, B:54:0x01bf, B:56:0x01cc, B:58:0x01d2, B:61:0x01dc, B:63:0x021d, B:62:0x0204, B:64:0x0228, B:46:0x019c, B:49:0x01a3, B:42:0x0187, B:19:0x0069, B:32:0x00ed, B:22:0x0083, B:28:0x00b8, B:25:0x0091), top: B:73:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01dc A[Catch: Exception -> 0x0244, TRY_ENTER, TryCatch #0 {Exception -> 0x0244, blocks: (B:14:0x004a, B:36:0x0119, B:38:0x0133, B:39:0x013e, B:43:0x018b, B:50:0x01a7, B:54:0x01bf, B:56:0x01cc, B:58:0x01d2, B:61:0x01dc, B:63:0x021d, B:62:0x0204, B:64:0x0228, B:46:0x019c, B:49:0x01a3, B:42:0x0187, B:19:0x0069, B:32:0x00ed, B:22:0x0083, B:28:0x00b8, B:25:0x0091), top: B:73:0x0036 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0204 A[Catch: Exception -> 0x0244, TryCatch #0 {Exception -> 0x0244, blocks: (B:14:0x004a, B:36:0x0119, B:38:0x0133, B:39:0x013e, B:43:0x018b, B:50:0x01a7, B:54:0x01bf, B:56:0x01cc, B:58:0x01d2, B:61:0x01dc, B:63:0x021d, B:62:0x0204, B:64:0x0228, B:46:0x019c, B:49:0x01a3, B:42:0x0187, B:19:0x0069, B:32:0x00ed, B:22:0x0083, B:28:0x00b8, B:25:0x0091), top: B:73:0x0036 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.appodeal.ads.x4 r17, android.app.Application r18, java.lang.String r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x4.a(com.appodeal.ads.x4, android.app.Application, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c0  */
    @Override // com.appodeal.ads.t4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.app.Application r17, java.lang.String r18, com.appodeal.consent.Consent r19, java.lang.Boolean r20, kotlin.coroutines.Continuation<? super kotlin.Result<? extends java.util.List<? extends com.appodeal.ads.initializing.ApdInitializationError>>> r21) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.x4.a(android.app.Application, java.lang.String, com.appodeal.consent.Consent, java.lang.Boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
