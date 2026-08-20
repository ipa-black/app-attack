package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.consent.Consent;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
@DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl", f = "SdkCoreInitializer.kt", i = {0, 0, 0, 0}, l = {159, 163}, m = "initializeSdkRegulator", n = {"context", "consent", "hasConsent", Constants.APP_KEY}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes.dex */
public final class u4 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public Context f7708a;

    /* renamed from: b  reason: collision with root package name */
    public Consent f7709b;

    /* renamed from: c  reason: collision with root package name */
    public Boolean f7710c;

    /* renamed from: d  reason: collision with root package name */
    public String f7711d;

    /* renamed from: e  reason: collision with root package name */
    public /* synthetic */ Object f7712e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ x4 f7713f;

    /* renamed from: g  reason: collision with root package name */
    public int f7714g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u4(x4 x4Var, Continuation<? super u4> continuation) {
        super(continuation);
        this.f7713f = x4Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f7712e = obj;
        this.f7714g |= Integer.MIN_VALUE;
        return x4.a(this.f7713f, null, null, null, null, this);
    }
}
