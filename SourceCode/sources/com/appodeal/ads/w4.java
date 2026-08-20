package com.appodeal.ads;

import android.content.Context;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
@DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl", f = "SdkCoreInitializer.kt", i = {0}, l = {118, 119}, m = "installRequest", n = {"applicationContext"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class w4 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public Context f7878a;

    /* renamed from: b  reason: collision with root package name */
    public /* synthetic */ Object f7879b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x4 f7880c;

    /* renamed from: d  reason: collision with root package name */
    public int f7881d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w4(x4 x4Var, Continuation<? super w4> continuation) {
        super(continuation);
        this.f7880c = x4Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f7879b = obj;
        this.f7881d |= Integer.MIN_VALUE;
        return x4.a(this.f7880c, null, this);
    }
}
