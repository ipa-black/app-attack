package com.appodeal.ads.regulator;

import android.content.Context;
import com.appodeal.ads.regulator.a;
import com.appodeal.consent.Consent;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.ads.regulator.ConsentSdkImpl$loadCurrentConsent$1", f = "ConsentSdk.kt", i = {}, l = {187}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public int f7409a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f7410b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f7411c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Consent.Status f7412d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Consent.Zone f7413e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Consent f7414f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, String str, Consent.Status status, Consent.Zone zone, Consent consent, Continuation<? super f> continuation) {
        super(2, continuation);
        this.f7410b = dVar;
        this.f7411c = str;
        this.f7412d = status;
        this.f7413e = zone;
        this.f7414f = consent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new f(this.f7410b, this.f7411c, this.f7412d, this.f7413e, this.f7414f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        com.appodeal.ads.regulator.usecases.a aVar;
        Context context;
        Object a2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f7409a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            aVar = this.f7410b.f7392b;
            context = this.f7410b.f7391a;
            String str = this.f7411c;
            Consent.Status status = this.f7412d;
            Consent.Zone zone = this.f7413e;
            Consent consent = this.f7414f;
            this.f7409a = 1;
            a2 = aVar.a(context, str, status, zone, consent, this);
            if (a2 == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
            a2 = ((Result) obj).m510unboximpl();
        }
        d dVar = this.f7410b;
        if (Result.m508isSuccessimpl(a2)) {
            com.appodeal.ads.regulator.data.a aVar2 = (com.appodeal.ads.regulator.data.a) a2;
            d.a(dVar, new a.b(aVar2.a(), aVar2.b()));
        }
        d dVar2 = this.f7410b;
        Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(a2);
        if (m504exceptionOrNullimpl != null) {
            d.a(dVar2, new a.d(m504exceptionOrNullimpl));
        }
        return Unit.INSTANCE;
    }
}
