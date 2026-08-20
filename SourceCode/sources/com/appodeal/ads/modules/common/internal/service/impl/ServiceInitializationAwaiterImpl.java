package com.appodeal.ads.modules.common.internal.service.impl;

import com.appodeal.ads.modules.common.internal.service.ServiceInitializationAwaiter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002\u000b\fB\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0013\u0010\u0007\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/impl/ServiceInitializationAwaiterImpl;", "Lcom/appodeal/ads/modules/common/internal/service/ServiceInitializationAwaiter;", "", "releaseAwaiter", "", "timeout", "launchAwaitingAsync", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<init>", "()V", "AwaitingState", "OutcomeState", "apd_internal"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class ServiceInitializationAwaiterImpl implements ServiceInitializationAwaiter {

    /* renamed from: a  reason: collision with root package name */
    public Deferred<? extends OutcomeState> f6956a;

    /* renamed from: b  reason: collision with root package name */
    public final MutableStateFlow<AwaitingState> f6957b = StateFlowKt.MutableStateFlow(AwaitingState.NotLaunched);

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/impl/ServiceInitializationAwaiterImpl$AwaitingState;", "", "NotLaunched", "InProgress", "Completed", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum AwaitingState {
        NotLaunched,
        InProgress,
        Completed
    }

    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/appodeal/ads/modules/common/internal/service/impl/ServiceInitializationAwaiterImpl$OutcomeState;", "", "Completed", "TimedOut", "apd_internal"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes2.dex */
    public enum OutcomeState {
        Completed,
        TimedOut
    }

    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OutcomeState.values().length];
            iArr[OutcomeState.Completed.ordinal()] = 1;
            iArr[OutcomeState.TimedOut.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl", f = "ServiceInitializationAwaiterImpl.kt", i = {0}, l = {37}, m = "await", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public ServiceInitializationAwaiterImpl f6960a;

        /* renamed from: b  reason: collision with root package name */
        public /* synthetic */ Object f6961b;

        /* renamed from: d  reason: collision with root package name */
        public int f6963d;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6961b = obj;
            this.f6963d |= Integer.MIN_VALUE;
            return ServiceInitializationAwaiterImpl.this.await(this);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$launchAwaitingAsync$1", f = "ServiceInitializationAwaiterImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f6964a;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ long f6966c;

        @DebugMetadata(c = "com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$launchAwaitingAsync$1$1", f = "ServiceInitializationAwaiterImpl.kt", i = {}, l = {25}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OutcomeState>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public int f6967a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ ServiceInitializationAwaiterImpl f6968b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ long f6969c;

            @DebugMetadata(c = "com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$launchAwaitingAsync$1$1$1", f = "ServiceInitializationAwaiterImpl.kt", i = {}, l = {26}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0125a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OutcomeState>, Object> {

                /* renamed from: a  reason: collision with root package name */
                public int f6970a;

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ ServiceInitializationAwaiterImpl f6971b;

                @DebugMetadata(c = "com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$launchAwaitingAsync$1$1$1$1", f = "ServiceInitializationAwaiterImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$b$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes2.dex */
                public static final class C0126a extends SuspendLambda implements Function2<AwaitingState, Continuation<? super Boolean>, Object> {

                    /* renamed from: a  reason: collision with root package name */
                    public /* synthetic */ Object f6972a;

                    public C0126a(Continuation<? super C0126a> continuation) {
                        super(2, continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        C0126a c0126a = new C0126a(continuation);
                        c0126a.f6972a = obj;
                        return c0126a;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(AwaitingState awaitingState, Continuation<? super Boolean> continuation) {
                        return ((C0126a) create(awaitingState, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        ResultKt.throwOnFailure(obj);
                        return Boxing.boxBoolean(((AwaitingState) this.f6972a) == AwaitingState.Completed);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0125a(ServiceInitializationAwaiterImpl serviceInitializationAwaiterImpl, Continuation<? super C0125a> continuation) {
                    super(2, continuation);
                    this.f6971b = serviceInitializationAwaiterImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C0125a(this.f6971b, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OutcomeState> continuation) {
                    return ((C0125a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.f6970a;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        MutableStateFlow mutableStateFlow = this.f6971b.f6957b;
                        C0126a c0126a = new C0126a(null);
                        this.f6970a = 1;
                        if (FlowKt.first(mutableStateFlow, c0126a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    return OutcomeState.Completed;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ServiceInitializationAwaiterImpl serviceInitializationAwaiterImpl, long j, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f6968b = serviceInitializationAwaiterImpl;
                this.f6969c = j;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new a(this.f6968b, this.f6969c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OutcomeState> continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.f6967a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f6968b.f6957b.setValue(AwaitingState.InProgress);
                    long j = this.f6969c;
                    C0125a c0125a = new C0125a(this.f6968b, null);
                    this.f6967a = 1;
                    obj = TimeoutKt.withTimeoutOrNull(j, c0125a, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                OutcomeState outcomeState = (OutcomeState) obj;
                return outcomeState == null ? OutcomeState.TimedOut : outcomeState;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f6966c = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(this.f6966c, continuation);
            bVar.f6964a = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Deferred async$default;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.f6964a;
            ServiceInitializationAwaiterImpl serviceInitializationAwaiterImpl = ServiceInitializationAwaiterImpl.this;
            async$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, Dispatchers.getDefault(), null, new a(ServiceInitializationAwaiterImpl.this, this.f6966c, null), 2, null);
            serviceInitializationAwaiterImpl.f6956a = async$default;
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005b  */
    @Override // com.appodeal.ads.modules.common.internal.service.ServiceInitializationAwaiter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object await(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl.a
            if (r0 == 0) goto L13
            r0 = r6
            com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$a r0 = (com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl.a) r0
            int r1 = r0.f6963d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6963d = r1
            goto L18
        L13:
            com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$a r0 = new com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f6961b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6963d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2c
            com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl r0 = r0.f6960a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L56
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.MutableStateFlow<com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$AwaitingState> r6 = r5.f6957b
            java.lang.Object r6 = r6.getValue()
            com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$AwaitingState r2 = com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl.AwaitingState.NotLaunched
            if (r6 != r2) goto L44
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L44:
            kotlinx.coroutines.Deferred<? extends com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$OutcomeState> r6 = r5.f6956a
            if (r6 != 0) goto L4a
            r0 = r5
            goto L79
        L4a:
            r0.f6960a = r5
            r0.f6963d = r4
            java.lang.Object r6 = r6.await(r0)
            if (r6 != r1) goto L55
            return r1
        L55:
            r0 = r5
        L56:
            com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl$OutcomeState r6 = (com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl.OutcomeState) r6
            if (r6 != 0) goto L5b
            goto L79
        L5b:
            int[] r1 = com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r1[r6]
            if (r6 == r4) goto L71
            r1 = 2
            if (r6 != r1) goto L6b
            java.lang.String r6 = "Timed out"
            goto L73
        L6b:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        L71:
            java.lang.String r6 = "Finished successfully"
        L73:
            java.lang.String r1 = "ServiceInitializationAwaiter"
            r2 = 4
            com.appodeal.ads.modules.common.internal.log.InternalLogKt.logInternal$default(r1, r6, r3, r2, r3)
        L79:
            r0.f6956a = r3
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.modules.common.internal.service.impl.ServiceInitializationAwaiterImpl.await(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.appodeal.ads.modules.common.internal.service.ServiceInitializationAwaiter
    public void launchAwaitingAsync(long j) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new b(j, null), 3, null);
    }

    @Override // com.appodeal.ads.modules.common.internal.service.ServiceInitializationAwaiter
    public void releaseAwaiter() {
        this.f6957b.setValue(AwaitingState.Completed);
    }
}
