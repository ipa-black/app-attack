package com.appodeal.ads.regulator;

import com.explorestack.protobuf.openrtb.LossReason;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableSharedFlow;
@DebugMetadata(c = "com.appodeal.ads.regulator.ConsentSdkImpl$sendAction$1", f = "ConsentSdk.kt", i = {}, l = {LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public int f7415a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f7416b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ a f7417c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(d dVar, a aVar, Continuation<? super g> continuation) {
        super(2, continuation);
        this.f7416b = dVar;
        this.f7417c = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new g(this.f7416b, this.f7417c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((g) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MutableSharedFlow mutableSharedFlow;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f7415a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            mutableSharedFlow = this.f7416b.f7395e;
            a aVar = this.f7417c;
            this.f7415a = 1;
            if (mutableSharedFlow.emit(aVar, this) == coroutine_suspended) {
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
