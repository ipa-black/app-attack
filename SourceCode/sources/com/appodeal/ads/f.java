package com.appodeal.ads;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.ads.AdLifecycleTrackerImpl$onActivityResumed$2", f = "AdLifecycleTracker.kt", i = {}, l = {54, 56}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public int f6648a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f6649b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, Continuation<? super f> continuation) {
        super(2, continuation);
        this.f6649b = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new f(this.f6649b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.f6648a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4b
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L36
        L1e:
            kotlin.ResultKt.throwOnFailure(r5)
            com.appodeal.advertising.AdvertisingInfo r5 = com.appodeal.advertising.AdvertisingInfo.INSTANCE
            com.appodeal.ads.d r1 = r4.f6649b
            com.appodeal.ads.modules.common.internal.context.ContextProvider r1 = com.appodeal.ads.d.a(r1)
            android.content.Context r1 = r1.getApplicationContext()
            r4.f6648a = r3
            java.lang.Object r5 = r5.fetchAdvertisingProfile(r1, r4)
            if (r5 != r0) goto L36
            return r0
        L36:
            com.appodeal.advertising.AdvertisingInfo r5 = com.appodeal.advertising.AdvertisingInfo.INSTANCE
            com.appodeal.ads.d r1 = r4.f6649b
            com.appodeal.ads.modules.common.internal.context.ContextProvider r1 = com.appodeal.ads.d.a(r1)
            android.content.Context r1 = r1.getApplicationContext()
            r4.f6648a = r2
            java.lang.Object r5 = r5.getAdvertisingProfile(r1, r4)
            if (r5 != r0) goto L4b
            return r0
        L4b:
            com.appodeal.advertising.AdvertisingInfo$AdvertisingProfile r5 = (com.appodeal.advertising.AdvertisingInfo.AdvertisingProfile) r5
            java.lang.String r0 = java.lang.String.valueOf(r5)
            java.lang.String r1 = "AdvertisingProfile"
            java.lang.String r2 = "Extract"
            com.appodeal.ads.utils.Log.log(r1, r2, r0)
            boolean r5 = com.appodeal.ads.x2.a(r5)
            if (r5 == 0) goto L61
            com.appodeal.ads.r0.d()
        L61:
            java.lang.String r5 = "SDK"
            java.lang.String r0 = "Resume"
            com.appodeal.ads.utils.Log.log(r5, r0)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.f.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
