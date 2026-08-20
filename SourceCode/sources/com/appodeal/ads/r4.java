package com.appodeal.ads;

import android.app.Application;
import com.appodeal.ads.initializing.ApdInitializationCallback;
import com.appodeal.consent.Consent;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.ads.SdkCore$initializeSdkCore$1", f = "SdkCore.kt", i = {}, l = {873, 892}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class r4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public int f7358a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ApdInitializationCallback f7359b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ t4 f7360c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Application f7361d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f7362e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Consent f7363f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Boolean f7364g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ int f7365h;

    @DebugMetadata(c = "com.appodeal.ads.SdkCore$initializeSdkCore$1$4", f = "SdkCore.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<Boolean, Continuation<? super Boolean>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ boolean f7366a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.f7366a = ((Boolean) obj).booleanValue();
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Boolean bool, Continuation<? super Boolean> continuation) {
            return ((a) create(Boolean.valueOf(bool.booleanValue()), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(this.f7366a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(ApdInitializationCallback apdInitializationCallback, t4 t4Var, Application application, String str, Consent consent, Boolean bool, int i, Continuation<? super r4> continuation) {
        super(2, continuation);
        this.f7359b = apdInitializationCallback;
        this.f7360c = t4Var;
        this.f7361d = application;
        this.f7362e = str;
        this.f7363f = consent;
        this.f7364g = bool;
        this.f7365h = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new r4(this.f7359b, this.f7360c, this.f7361d, this.f7362e, this.f7363f, this.f7364g, this.f7365h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((r4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.f7358a
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L26
            if (r1 == r4) goto L1c
            if (r1 != r3) goto L14
            kotlin.ResultKt.throwOnFailure(r12)
            goto L9e
        L14:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L1c:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r12 = r12.m510unboximpl()
            goto L57
        L26:
            kotlin.ResultKt.throwOnFailure(r12)
            com.appodeal.ads.initializing.ApdInitializationCallback r12 = r11.f7359b
            if (r12 != 0) goto L2e
            goto L39
        L2e:
            java.util.LinkedHashSet r1 = com.appodeal.ads.q4.a()
            boolean r12 = r1.add(r12)
            kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r12)
        L39:
            boolean r12 = com.appodeal.ads.q4.f7305c
            if (r12 != 0) goto L8c
            boolean r12 = com.appodeal.ads.q4.f7304b
            if (r12 != 0) goto L8c
            com.appodeal.ads.q4.f7304b = r4
            com.appodeal.ads.t4 r5 = r11.f7360c
            android.app.Application r6 = r11.f7361d
            java.lang.String r7 = r11.f7362e
            com.appodeal.consent.Consent r8 = r11.f7363f
            java.lang.Boolean r9 = r11.f7364g
            r11.f7358a = r4
            r10 = r11
            java.lang.Object r12 = r5.a(r6, r7, r8, r9, r10)
            if (r12 != r0) goto L57
            return r0
        L57:
            boolean r1 = kotlin.Result.m508isSuccessimpl(r12)
            if (r1 == 0) goto L67
            r1 = r12
            java.util.List r1 = (java.util.List) r1
            java.util.ArrayList r5 = com.appodeal.ads.q4.b()
            r5.addAll(r1)
        L67:
            java.lang.Throwable r12 = kotlin.Result.m504exceptionOrNullimpl(r12)
            if (r12 != 0) goto L6e
            goto L7c
        L6e:
            boolean r1 = r12 instanceof com.appodeal.ads.initializing.ApdInitializationError
            if (r1 == 0) goto L79
            java.util.ArrayList r1 = com.appodeal.ads.q4.b()
            r1.add(r12)
        L79:
            com.appodeal.ads.utils.Log.log(r12)
        L7c:
            r12 = 0
            com.appodeal.ads.q4.f7304b = r12
            com.appodeal.ads.q4.f7305c = r4
            kotlinx.coroutines.flow.MutableStateFlow r12 = com.appodeal.ads.q4.c()
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            r12.setValue(r1)
        L8c:
            kotlinx.coroutines.flow.MutableStateFlow r12 = com.appodeal.ads.q4.c()
            com.appodeal.ads.r4$a r1 = new com.appodeal.ads.r4$a
            r1.<init>(r2)
            r11.f7358a = r3
            java.lang.Object r12 = kotlinx.coroutines.flow.FlowKt.first(r12, r1, r11)
            if (r12 != r0) goto L9e
            return r0
        L9e:
            com.appodeal.ads.q4 r12 = com.appodeal.ads.q4.f7303a
            com.appodeal.ads.context.b r0 = com.appodeal.ads.q4.a(r12)
            android.content.Context r0 = r0.getApplicationContext()
            int r1 = r11.f7365h
            java.util.List r3 = com.appodeal.ads.q4.d()
            com.appodeal.ads.q4.a(r12, r0, r1, r3)
            java.util.LinkedHashSet r12 = com.appodeal.ads.q4.a()
            java.util.Iterator r12 = r12.iterator()
        Lb9:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto Ld6
            java.lang.Object r0 = r12.next()
            com.appodeal.ads.initializing.ApdInitializationCallback r0 = (com.appodeal.ads.initializing.ApdInitializationCallback) r0
            java.util.ArrayList r1 = com.appodeal.ads.q4.b()
            boolean r3 = r1.isEmpty()
            r3 = r3 ^ r4
            if (r3 == 0) goto Ld1
            goto Ld2
        Ld1:
            r1 = r2
        Ld2:
            r0.onInitializationFinished(r1)
            goto Lb9
        Ld6:
            java.util.LinkedHashSet r12 = com.appodeal.ads.q4.a()
            r12.clear()
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.r4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
