package com.appodeal.ads.storage;

import com.appodeal.ads.storage.b;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveRequestData$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f7641a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f7642b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f7643c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f7644d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ long f7645e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f7646f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ int f7647g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(b bVar, String str, String str2, String str3, long j, String str4, int i, Continuation<? super i> continuation) {
        super(2, continuation);
        this.f7641a = bVar;
        this.f7642b = str;
        this.f7643c = str2;
        this.f7644d = str3;
        this.f7645e = j;
        this.f7646f = str4;
        this.f7647g = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new i(this.f7641a, this.f7642b, this.f7643c, this.f7644d, this.f7645e, this.f7646f, this.f7647g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((i) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.f7641a.a(b.a.Default).edit().putString(this.f7642b, this.f7643c).putLong(this.f7644d, this.f7645e).putInt(this.f7646f, this.f7647g).apply();
        return Unit.INSTANCE;
    }
}
