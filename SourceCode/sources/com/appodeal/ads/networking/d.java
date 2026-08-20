package com.appodeal.ads.networking;

import com.appodeal.ads.y2;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
@DebugMetadata(c = "com.appodeal.ads.networking.JsonRequestExtKt", f = "JsonRequestExt.kt", i = {}, l = {64}, m = "execute", n = {}, s = {})
/* loaded from: classes2.dex */
public final class d extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public /* synthetic */ Object f7240a;

    /* renamed from: b  reason: collision with root package name */
    public int f7241b;

    public d(Continuation<? super d> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f7240a = obj;
        this.f7241b |= Integer.MIN_VALUE;
        Object a2 = c.a((y2.a) null, this);
        return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
    }
}
