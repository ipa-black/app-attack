package com.appodeal.ads;

import android.content.Context;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
@DebugMetadata(c = "com.appodeal.ads.SdkCoreInitializerImpl", f = "SdkCoreInitializer.kt", i = {0}, l = {TsExtractor.TS_STREAM_TYPE_AC3}, m = "initializeServices", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class v4 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public x4 f7865a;

    /* renamed from: b  reason: collision with root package name */
    public /* synthetic */ Object f7866b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x4 f7867c;

    /* renamed from: d  reason: collision with root package name */
    public int f7868d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v4(x4 x4Var, Continuation<? super v4> continuation) {
        super(continuation);
        this.f7867c = x4Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f7866b = obj;
        this.f7868d |= Integer.MIN_VALUE;
        return x4.a(this.f7867c, (Context) null, (com.appodeal.ads.networking.b) null, this);
    }
}
