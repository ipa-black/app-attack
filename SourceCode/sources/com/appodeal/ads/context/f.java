package com.appodeal.ads.context;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.appodeal.ads.context.a;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
/* loaded from: classes2.dex */
public final class f implements ContextProvider, ContextProvider.Synchronizer {

    /* renamed from: a  reason: collision with root package name */
    public Context f6589a;

    /* renamed from: b  reason: collision with root package name */
    public final Lazy f6590b = LazyKt.lazy(new a());

    /* renamed from: c  reason: collision with root package name */
    public final MutableStateFlow<com.appodeal.ads.context.a> f6591c;

    /* renamed from: d  reason: collision with root package name */
    public Activity f6592d;

    /* renamed from: e  reason: collision with root package name */
    public final b f6593e;

    /* renamed from: f  reason: collision with root package name */
    public final MutableStateFlow<Activity> f6594f;

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<h> {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final h invoke() {
            return new h(new d(f.this), new e(f.this));
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements Flow<Activity> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Flow f6596a;

        /* loaded from: classes2.dex */
        public static final class a<T> implements FlowCollector, SuspendFunction {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ FlowCollector f6597a;

            @DebugMetadata(c = "com.appodeal.ads.context.ContextProviderImpl$special$$inlined$map$1$2", f = "ContextProviderImpl.kt", i = {}, l = {224}, m = "emit", n = {}, s = {})
            /* renamed from: com.appodeal.ads.context.f$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0123a extends ContinuationImpl {

                /* renamed from: a  reason: collision with root package name */
                public /* synthetic */ Object f6598a;

                /* renamed from: b  reason: collision with root package name */
                public int f6599b;

                public C0123a(Continuation continuation) {
                    super(continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f6598a = obj;
                    this.f6599b |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(FlowCollector flowCollector) {
                this.f6597a = flowCollector;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
            @Override // kotlinx.coroutines.flow.FlowCollector
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                /*
                    r4 = this;
                    boolean r0 = r6 instanceof com.appodeal.ads.context.f.b.a.C0123a
                    if (r0 == 0) goto L13
                    r0 = r6
                    com.appodeal.ads.context.f$b$a$a r0 = (com.appodeal.ads.context.f.b.a.C0123a) r0
                    int r1 = r0.f6599b
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f6599b = r1
                    goto L18
                L13:
                    com.appodeal.ads.context.f$b$a$a r0 = new com.appodeal.ads.context.f$b$a$a
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f6598a
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.f6599b
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.ResultKt.throwOnFailure(r6)
                    goto L45
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    kotlin.ResultKt.throwOnFailure(r6)
                    kotlinx.coroutines.flow.FlowCollector r6 = r4.f6597a
                    com.appodeal.ads.context.a r5 = (com.appodeal.ads.context.a) r5
                    android.app.Activity r5 = r5.getActivity()
                    r0.f6599b = r3
                    java.lang.Object r5 = r6.emit(r5, r0)
                    if (r5 != r1) goto L45
                    return r1
                L45:
                    kotlin.Unit r5 = kotlin.Unit.INSTANCE
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.context.f.b.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

        public b(MutableStateFlow mutableStateFlow) {
            this.f6596a = mutableStateFlow;
        }

        @Override // kotlinx.coroutines.flow.Flow
        public final Object collect(FlowCollector<? super Activity> flowCollector, Continuation continuation) {
            Object collect = this.f6596a.collect(new a(flowCollector), continuation);
            return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
        }
    }

    public f() {
        MutableStateFlow<com.appodeal.ads.context.a> MutableStateFlow = StateFlowKt.MutableStateFlow(a());
        this.f6591c = MutableStateFlow;
        this.f6593e = new b(MutableStateFlow);
        this.f6594f = StateFlowKt.MutableStateFlow(this.f6592d);
    }

    public static final void a(f fVar, Activity activity) {
        MutableStateFlow<com.appodeal.ads.context.a> mutableStateFlow;
        com.appodeal.ads.context.a c0122a;
        InternalLogKt.logInternal$default("ContextProvider", ((Object) Reflection.getOrCreateKotlinClass(fVar.f6591c.getValue().getClass()).getSimpleName()) + ". Activity is destroyed: " + activity, null, 4, null);
        if (Intrinsics.areEqual(fVar.f6592d, activity)) {
            fVar.f6592d = null;
        }
        Activity activity2 = fVar.f6592d;
        if (activity2 != null && activity2.isDestroyed()) {
            fVar.f6592d = null;
        }
        if (Intrinsics.areEqual(fVar.f6591c.getValue().getActivity(), activity)) {
            com.appodeal.ads.context.a value = fVar.f6591c.getValue();
            if (value instanceof a.b) {
                mutableStateFlow = fVar.f6591c;
                c0122a = new a.b(null);
            } else if (!(value instanceof a.C0122a)) {
                return;
            } else {
                mutableStateFlow = fVar.f6591c;
                c0122a = new a.C0122a(null);
            }
            mutableStateFlow.setValue(c0122a);
        }
    }

    public static final void b(f fVar, Activity activity) {
        InternalLogKt.logInternal$default("ContextProvider", ((Object) Reflection.getOrCreateKotlinClass(fVar.f6591c.getValue().getClass()).getSimpleName()) + " Resumed Activity updated: " + activity, null, 4, null);
        fVar.f6592d = activity;
        fVar.f6594f.tryEmit(activity);
        com.appodeal.ads.context.a value = fVar.f6591c.getValue();
        if (value instanceof a.b) {
            fVar.f6591c.setValue(new a.b(activity));
        } else {
            boolean z = value instanceof a.C0122a;
        }
    }

    public final a.C0122a a() {
        return new a.C0122a(this.f6592d);
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Activity getActivity() {
        return this.f6591c.getValue().getActivity();
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Flow<Activity> getActivityFlow() {
        return this.f6593e;
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Context getApplicationContext() {
        Context context = this.f6589a;
        if (context != null) {
            return context;
        }
        throw new IllegalArgumentException("Context not provided".toString());
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Context getApplicationContextOrNull() {
        return this.f6589a;
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final StateFlow getTopActivityFlow() {
        return this.f6594f;
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider.Synchronizer
    public final void setActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        com.appodeal.ads.context.a value = this.f6591c.getValue();
        if ((value instanceof a.b) || !(value instanceof a.C0122a) || Intrinsics.areEqual(value.getActivity(), activity)) {
            return;
        }
        this.f6591c.setValue(new a.C0122a(activity));
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider.Synchronizer
    public final void setApplicationContext(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        if (this.f6589a == null) {
            this.f6589a = applicationContext;
            Context applicationContext2 = getApplicationContext();
            Application application = applicationContext2 instanceof Application ? (Application) applicationContext2 : null;
            if (application == null) {
                return;
            }
            application.registerActivityLifecycleCallbacks((h) this.f6590b.getValue());
        }
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider.Synchronizer
    public final void setAutomaticActivityObserving(boolean z) {
        MutableStateFlow<com.appodeal.ads.context.a> mutableStateFlow;
        com.appodeal.ads.context.a c0122a;
        com.appodeal.ads.context.a value = this.f6591c.getValue();
        if (z) {
            if (value instanceof a.b) {
                return;
            }
            mutableStateFlow = this.f6591c;
            c0122a = new a.b(this.f6592d);
        } else if (value instanceof a.C0122a) {
            return;
        } else {
            mutableStateFlow = this.f6591c;
            c0122a = new a.C0122a(this.f6592d);
        }
        mutableStateFlow.setValue(c0122a);
    }
}
