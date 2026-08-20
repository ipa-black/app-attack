package com.appodeal.ads.regulator;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.appodeal.ads.regulator.a;
import com.appodeal.ads.regulator.b;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentForm;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Context f7391a;

    /* renamed from: b  reason: collision with root package name */
    public final com.appodeal.ads.regulator.usecases.a f7392b;

    /* renamed from: c  reason: collision with root package name */
    public final CoroutineScope f7393c;

    /* renamed from: d  reason: collision with root package name */
    public final MutableStateFlow<com.appodeal.ads.regulator.b> f7394d;

    /* renamed from: e  reason: collision with root package name */
    public final MutableSharedFlow<com.appodeal.ads.regulator.a> f7395e;

    /* renamed from: f  reason: collision with root package name */
    public final Lazy f7396f;

    @DebugMetadata(c = "com.appodeal.ads.regulator.ConsentSdkImpl$1", f = "ConsentSdk.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function3<com.appodeal.ads.regulator.b, com.appodeal.ads.regulator.a, Continuation<? super com.appodeal.ads.regulator.b>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ com.appodeal.ads.regulator.a f7397a;

        public a(Continuation<? super a> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(com.appodeal.ads.regulator.b bVar, com.appodeal.ads.regulator.a aVar, Continuation<? super com.appodeal.ads.regulator.b> continuation) {
            a aVar2 = new a(continuation);
            aVar2.f7397a = aVar;
            return aVar2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object aVar;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.appodeal.ads.regulator.a aVar2 = this.f7397a;
            if (aVar2 instanceof a.f) {
                a.f fVar = (a.f) aVar2;
                d.a(d.this, fVar.a(), fVar.b(), fVar.c(), fVar.d());
                return b.d.f7388a;
            } else if (aVar2 instanceof a.b) {
                InternalLogKt.logInternal$default("ConsentSdk", String.valueOf(aVar2), null, 4, null);
                a.b bVar = (a.b) aVar2;
                if (bVar.b()) {
                    d.e(d.this);
                    return b.e.f7389a;
                }
                d.a(d.this, new a.c(bVar.a()));
                return b.a.f7385a;
            } else if (aVar2 instanceof a.e) {
                ((a.e) aVar2).a().show();
                return b.C0139b.f7386a;
            } else {
                if (aVar2 instanceof a.c) {
                    InternalLogKt.logInternal$default("ConsentSdk", String.valueOf(aVar2), null, 4, null);
                    aVar = new b.f.C0140b(((a.c) aVar2).a());
                } else if (aVar2 instanceof a.C0138a) {
                    InternalLogKt.logInternal$default("ConsentSdk", String.valueOf(aVar2), null, 4, null);
                    aVar = new b.f.C0140b(((a.C0138a) aVar2).a());
                } else if (!(aVar2 instanceof a.d)) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    a.d dVar = (a.d) aVar2;
                    InternalLogKt.logInternal$default("ConsentSdk", new StringBuilder().append(aVar2).append('[').append(dVar.a()).append(']').toString(), null, 4, null);
                    aVar = new b.f.a(dVar.a());
                }
                return aVar;
            }
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.regulator.ConsentSdkImpl$2", f = "ConsentSdk.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<com.appodeal.ads.regulator.b, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7399a;

        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(continuation);
            bVar.f7399a = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(com.appodeal.ads.regulator.b bVar, Continuation<? super Unit> continuation) {
            return ((b) create(bVar, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.appodeal.ads.regulator.b bVar = (com.appodeal.ads.regulator.b) this.f7399a;
            InternalLogKt.logInternal$default("ConsentSdk", Intrinsics.stringPlus("Consent state updated: ", bVar.getClass().getSimpleName()), null, 4, null);
            d.this.f7394d.setValue(bVar);
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends Lambda implements Function0<com.appodeal.ads.regulator.e> {
        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.regulator.e invoke() {
            return new com.appodeal.ads.regulator.e(d.this);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.regulator.ConsentSdkImpl", f = "ConsentSdk.kt", i = {}, l = {169}, m = "getRegulatorData", n = {}, s = {})
    /* renamed from: com.appodeal.ads.regulator.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0141d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7402a;

        /* renamed from: c  reason: collision with root package name */
        public int f7404c;

        public C0141d(Continuation<? super C0141d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7402a = obj;
            this.f7404c |= Integer.MIN_VALUE;
            return d.this.a((String) null, (Consent) null, (Consent.Status) null, (Consent.Zone) null, this);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.regulator.ConsentSdkImpl$getRegulatorData$resultState$1", f = "ConsentSdk.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e extends SuspendLambda implements Function2<com.appodeal.ads.regulator.b, Continuation<? super Boolean>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7405a;

        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            e eVar = new e(continuation);
            eVar.f7405a = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(com.appodeal.ads.regulator.b bVar, Continuation<? super Boolean> continuation) {
            return ((e) create(bVar, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(((com.appodeal.ads.regulator.b) this.f7405a) instanceof b.f);
        }
    }

    public d(Context context, com.appodeal.ads.regulator.usecases.a loadConsent, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(loadConsent, "loadConsent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f7391a = context;
        this.f7392b = loadConsent;
        this.f7393c = scope;
        MutableStateFlow<com.appodeal.ads.regulator.b> MutableStateFlow = StateFlowKt.MutableStateFlow(b.c.f7387a);
        this.f7394d = MutableStateFlow;
        MutableSharedFlow<com.appodeal.ads.regulator.a> MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this.f7395e = MutableSharedFlow$default;
        this.f7396f = LazyKt.lazy(new c());
        FlowKt.launchIn(FlowKt.onEach(FlowKt.scan(MutableSharedFlow$default, MutableStateFlow.getValue(), new a(null)), new b(null)), scope);
    }

    public static final void a(d dVar, String str, Consent consent, Consent.Status status, Consent.Zone zone) {
        BuildersKt__Builders_commonKt.launch$default(dVar.f7393c, null, null, new f(dVar, str, status, zone, consent, null), 3, null);
    }

    public static final void e(d dVar) {
        dVar.getClass();
        new ConsentForm(dVar.f7391a, (com.appodeal.ads.regulator.e) dVar.f7396f.getValue()).load();
    }

    public static final void a(d dVar, com.appodeal.ads.regulator.a aVar) {
        BuildersKt__Builders_commonKt.launch$default(dVar.f7393c, null, null, new g(dVar, aVar, null), 3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r14, com.appodeal.consent.Consent r15, com.appodeal.consent.Consent.Status r16, com.appodeal.consent.Consent.Zone r17, kotlin.coroutines.Continuation<? super com.appodeal.consent.Consent> r18) {
        /*
            r13 = this;
            r0 = r13
            r1 = r18
            boolean r2 = r1 instanceof com.appodeal.ads.regulator.d.C0141d
            if (r2 == 0) goto L16
            r2 = r1
            com.appodeal.ads.regulator.d$d r2 = (com.appodeal.ads.regulator.d.C0141d) r2
            int r3 = r2.f7404c
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.f7404c = r3
            goto L1b
        L16:
            com.appodeal.ads.regulator.d$d r2 = new com.appodeal.ads.regulator.d$d
            r2.<init>(r1)
        L1b:
            java.lang.Object r1 = r2.f7402a
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.f7404c
            r5 = 1
            r6 = 0
            if (r4 == 0) goto L35
            if (r4 != r5) goto L2d
            kotlin.ResultKt.throwOnFailure(r1)
            goto L61
        L2d:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L35:
            kotlin.ResultKt.throwOnFailure(r1)
            com.appodeal.ads.regulator.a$f r1 = new com.appodeal.ads.regulator.a$f
            r4 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            r1.<init>(r14, r15, r8, r9)
            kotlinx.coroutines.CoroutineScope r7 = r0.f7393c
            com.appodeal.ads.regulator.g r10 = new com.appodeal.ads.regulator.g
            r10.<init>(r13, r1, r6)
            r11 = 3
            r12 = 0
            r8 = 0
            r9 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r7, r8, r9, r10, r11, r12)
            kotlinx.coroutines.flow.MutableStateFlow<com.appodeal.ads.regulator.b> r1 = r0.f7394d
            com.appodeal.ads.regulator.d$e r4 = new com.appodeal.ads.regulator.d$e
            r4.<init>(r6)
            r2.f7404c = r5
            java.lang.Object r1 = kotlinx.coroutines.flow.FlowKt.first(r1, r4, r2)
            if (r1 != r3) goto L61
            return r3
        L61:
            com.appodeal.ads.regulator.b r1 = (com.appodeal.ads.regulator.b) r1
            boolean r2 = r1 instanceof com.appodeal.ads.regulator.b.f.C0140b
            if (r2 == 0) goto L6a
            com.appodeal.ads.regulator.b$f$b r1 = (com.appodeal.ads.regulator.b.f.C0140b) r1
            goto L6b
        L6a:
            r1 = r6
        L6b:
            if (r1 != 0) goto L6e
            goto L72
        L6e:
            com.appodeal.consent.Consent r6 = r1.a()
        L72:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.regulator.d.a(java.lang.String, com.appodeal.consent.Consent, com.appodeal.consent.Consent$Status, com.appodeal.consent.Consent$Zone, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
