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
@DebugMetadata(c = "com.appodeal.ads.storage.KeyValueStorageImpl$saveSessionAsync$1", f = "KeyValueStorageImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f7648a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f7649b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f7650c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ long f7651d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ long f7652e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ long f7653f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ long f7654g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ long f7655h;
    public final /* synthetic */ long i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(b bVar, String str, long j, long j2, long j3, long j4, long j5, long j6, long j7, Continuation<? super j> continuation) {
        super(2, continuation);
        this.f7648a = bVar;
        this.f7649b = str;
        this.f7650c = j;
        this.f7651d = j2;
        this.f7652e = j3;
        this.f7653f = j4;
        this.f7654g = j5;
        this.f7655h = j6;
        this.i = j7;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new j(this.f7648a, this.f7649b, this.f7650c, this.f7651d, this.f7652e, this.f7653f, this.f7654g, this.f7655h, this.i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((j) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.f7648a.a(b.a.Default).edit().putString("session_uuid", this.f7649b).putLong("session_id", this.f7650c).putLong("session_uptime", this.f7651d).putLong("session_uptime_m", this.f7652e).putLong("session_start_ts", this.f7653f).putLong("session_start_ts_m", this.f7654g).putLong("app_uptime", this.f7655h).putLong("app_uptime_m", this.i).apply();
        return Unit.INSTANCE;
    }
}
