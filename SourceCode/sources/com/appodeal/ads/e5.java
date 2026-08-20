package com.appodeal.ads;

import android.app.Activity;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
/* loaded from: classes.dex */
public final class e5 implements c5 {

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineScope f6645a;

    /* renamed from: b  reason: collision with root package name */
    public final ContextProvider f6646b;

    @DebugMetadata(c = "com.appodeal.ads.SessionTimeTrackerImpl$init$1", f = "SessionTimeTracker.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<Activity, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f6647a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.f6647a = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Activity activity, Continuation<? super Unit> continuation) {
            return ((a) create(activity, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            if (((Activity) this.f6647a) != null) {
                q4.m().l();
            } else {
                q4.m().k();
            }
            return Unit.INSTANCE;
        }
    }

    public e5(CoroutineScope scope, com.appodeal.ads.context.b contextProvider) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        this.f6645a = scope;
        this.f6646b = contextProvider;
    }

    @Override // com.appodeal.ads.c5
    public final void a() {
        FlowKt.launchIn(FlowKt.onEach(this.f6646b.getTopActivityFlow(), new a(null)), this.f6645a);
    }
}
