package com.appodeal.ads.services;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.service.RevenueTracker;
import com.appodeal.ads.modules.common.internal.service.Service;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import com.appodeal.ads.modules.common.internal.service.ServiceDataProvider;
import com.appodeal.ads.modules.common.internal.service.ServiceOptions;
import com.appodeal.ads.n5;
import com.appodeal.ads.revenue.RevenueInfo;
import com.appodeal.ads.services.c;
import com.appodeal.ads.utils.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
/* loaded from: classes2.dex */
public final class d implements c, c.a {

    /* renamed from: a  reason: collision with root package name */
    public final MutableStateFlow<Set<Service<? extends ServiceOptions>>> f7555a = StateFlowKt.MutableStateFlow(SetsKt.emptySet());

    @DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl$logEvent$2", f = "ServicesSolutionImpl.kt", i = {}, l = {29}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f7556a;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f7558c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ Map<String, Object> f7559d;

        @DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl$logEvent$2$1", f = "ServicesSolutionImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.appodeal.ads.services.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0145a extends SuspendLambda implements Function2<Set<? extends Service<? extends ServiceOptions>>, Continuation<? super Boolean>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public /* synthetic */ Object f7560a;

            public C0145a(Continuation<? super C0145a> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C0145a c0145a = new C0145a(continuation);
                c0145a.f7560a = obj;
                return c0145a;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Set<? extends Service<? extends ServiceOptions>> set, Continuation<? super Boolean> continuation) {
                return ((C0145a) create(set, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(!((Set) this.f7560a).isEmpty());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Map<String, ? extends Object> map, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f7558c = str;
            this.f7559d = map;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f7558c, this.f7559d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7556a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MutableStateFlow mutableStateFlow = d.this.f7555a;
                C0145a c0145a = new C0145a(null);
                this.f7556a = 1;
                obj = FlowKt.first(mutableStateFlow, c0145a, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            String str = this.f7558c;
            Map<String, ? extends Object> map = this.f7559d;
            for (Service service : (Iterable) obj) {
                service.logEvent(str, map);
                String a2 = n5.a(service.getInfo().getName());
                Intrinsics.checkNotNullExpressionValue(a2, "capitalize((service as Service<*>).info.name)");
                Log.log(LogConstants.KEY_SERVICE, LogConstants.EVENT_INFO, a2 + ' ' + ("logEvent - " + str + " with params: " + map));
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl$trackRevenue$2", f = "ServicesSolutionImpl.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f7561a;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ RevenueInfo f7563c;

        @DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl$trackRevenue$2$services$1", f = "ServicesSolutionImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<Set<? extends Service<? extends ServiceOptions>>, Continuation<? super Boolean>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public /* synthetic */ Object f7564a;

            public a(Continuation<? super a> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                a aVar = new a(continuation);
                aVar.f7564a = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Set<? extends Service<? extends ServiceOptions>> set, Continuation<? super Boolean> continuation) {
                return ((a) create(set, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(!((Set) this.f7564a).isEmpty());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(RevenueInfo revenueInfo, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f7563c = revenueInfo;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f7563c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7561a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MutableStateFlow mutableStateFlow = d.this.f7555a;
                a aVar = new a(null);
                this.f7561a = 1;
                obj = FlowKt.first(mutableStateFlow, aVar, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            List<RevenueTracker> filterIsInstance = CollectionsKt.filterIsInstance((Iterable) obj, RevenueTracker.class);
            RevenueInfo revenueInfo = this.f7563c;
            for (RevenueTracker revenueTracker : filterIsInstance) {
                revenueTracker.trackRevenue(revenueInfo);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @Override // com.appodeal.ads.services.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.appodeal.ads.inapp.InAppPurchase r11, com.appodeal.ads.inapp.InAppPurchaseValidateCallback r12, com.appodeal.ads.q4.h.a r13, kotlin.coroutines.Continuation r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.appodeal.ads.services.e
            if (r0 == 0) goto L13
            r0 = r14
            com.appodeal.ads.services.e r0 = (com.appodeal.ads.services.e) r0
            int r1 = r0.f7569e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7569e = r1
            goto L18
        L13:
            com.appodeal.ads.services.e r0 = new com.appodeal.ads.services.e
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.f7567c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7569e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            com.appodeal.ads.inapp.InAppPurchaseValidateCallback r12 = r0.f7566b
            com.appodeal.ads.inapp.InAppPurchase r11 = r0.f7565a
            kotlin.ResultKt.throwOnFailure(r14)
            goto L52
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L35:
            kotlin.ResultKt.throwOnFailure(r14)
            com.appodeal.ads.services.f r14 = new com.appodeal.ads.services.f
            r9 = 0
            r4 = r14
            r5 = r10
            r6 = r12
            r7 = r11
            r8 = r13
            r4.<init>(r5, r6, r7, r8, r9)
            r0.f7565a = r11
            r0.f7566b = r12
            r0.f7569e = r3
            r2 = 10000(0x2710, double:4.9407E-320)
            java.lang.Object r14 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r2, r14, r0)
            if (r14 != r1) goto L52
            return r1
        L52:
            kotlin.Unit r14 = (kotlin.Unit) r14
            if (r14 != 0) goto L62
            if (r12 != 0) goto L59
            goto L62
        L59:
            com.appodeal.ads.service.ServiceError$IAPValidationTimeout r13 = com.appodeal.ads.service.ServiceError.IAPValidationTimeout.INSTANCE
            java.util.List r13 = kotlin.collections.CollectionsKt.listOf(r13)
            r12.onInAppPurchaseValidateFail(r11, r13)
        L62:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.services.d.a(com.appodeal.ads.inapp.InAppPurchase, com.appodeal.ads.inapp.InAppPurchaseValidateCallback, com.appodeal.ads.q4$h$a, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.appodeal.ads.services.c
    public final Object a(RevenueInfo revenueInfo, Continuation<? super Unit> continuation) {
        return TimeoutKt.withTimeoutOrNull(10000L, new b(revenueInfo, null), continuation);
    }

    @Override // com.appodeal.ads.services.c
    public final Object a(String str, Map<String, ? extends Object> map, Continuation<? super Unit> continuation) {
        return TimeoutKt.withTimeoutOrNull(10000L, new a(str, map, null), continuation);
    }

    @Override // com.appodeal.ads.services.c.a
    public final Object a(List<? extends Service<? extends ServiceOptions>> list, Continuation<? super Unit> continuation) {
        Object emit = this.f7555a.emit(CollectionsKt.toSet(list), continuation);
        return emit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? emit : Unit.INSTANCE;
    }

    @Override // com.appodeal.ads.services.c
    public final ArrayList getServicesData() {
        List<ServiceDataProvider> filterIsInstance = CollectionsKt.filterIsInstance(this.f7555a.getValue(), ServiceDataProvider.class);
        ArrayList arrayList = new ArrayList();
        for (ServiceDataProvider serviceDataProvider : filterIsInstance) {
            ServiceData serviceData = serviceDataProvider.getServiceData();
            if (serviceData != null) {
                arrayList.add(serviceData);
            }
        }
        return arrayList;
    }
}
