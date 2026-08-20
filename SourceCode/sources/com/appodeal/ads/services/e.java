package com.appodeal.ads.services;

import com.appodeal.ads.inapp.InAppPurchase;
import com.appodeal.ads.inapp.InAppPurchaseValidateCallback;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
@DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl", f = "ServicesSolutionImpl.kt", i = {0, 0}, l = {47}, m = "validatePurchase", n = {FirebaseAnalytics.Event.PURCHASE, "callback"}, s = {"L$0", "L$1"})
/* loaded from: classes2.dex */
public final class e extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public InAppPurchase f7565a;

    /* renamed from: b  reason: collision with root package name */
    public InAppPurchaseValidateCallback f7566b;

    /* renamed from: c  reason: collision with root package name */
    public /* synthetic */ Object f7567c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ d f7568d;

    /* renamed from: e  reason: collision with root package name */
    public int f7569e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, Continuation<? super e> continuation) {
        super(continuation);
        this.f7568d = dVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f7567c = obj;
        this.f7569e |= Integer.MIN_VALUE;
        return this.f7568d.a(null, null, null, this);
    }
}
