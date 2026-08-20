package com.appodeal.ads.networking;

import com.appodeal.ads.api.Request;
import com.appodeal.ads.h0;
import com.appodeal.ads.i5;
import com.appodeal.ads.modules.common.internal.ext.ResultExtKt;
import com.appodeal.ads.modules.libs.network.HttpClient;
import com.appodeal.ads.modules.libs.network.HttpError;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.y2;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import org.json.JSONObject;
@DebugMetadata(c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$4", f = "JsonRequestExt.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends JSONObject>>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public int f7242a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ long f7243b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ y2 f7244c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ y2 f7245d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f7246e;

    @DebugMetadata(c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$4$1", f = "JsonRequestExt.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends JSONObject>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public HttpClient.Proto f7247a;

        /* renamed from: b  reason: collision with root package name */
        public HttpClient.Method f7248b;

        /* renamed from: c  reason: collision with root package name */
        public int f7249c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ y2 f7250d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ y2 f7251e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ String f7252f;

        /* renamed from: com.appodeal.ads.networking.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0136a extends Lambda implements Function1<byte[], JSONObject> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0136a f7253a = new C0136a();

            public C0136a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final JSONObject invoke(byte[] bArr) {
                byte[] bArr2 = bArr;
                if (bArr2 == null) {
                    return null;
                }
                return new JSONObject(new String(bArr2, Charsets.UTF_8));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(y2 y2Var, y2 y2Var2, String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f7250d = y2Var;
            this.f7251e = y2Var2;
            this.f7252f = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f7250d, this.f7251e, this.f7252f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends JSONObject>> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            HttpClient.Proto proto;
            HttpClient.Method method;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7249c;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HttpClient.Proto b2 = this.f7250d.b();
                HttpClient.Method c2 = this.f7250d.c();
                y2 y2Var = this.f7250d;
                this.f7247a = b2;
                this.f7248b = c2;
                this.f7249c = 1;
                Object a2 = y2Var.a(this);
                if (a2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                proto = b2;
                method = c2;
                obj = a2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                HttpClient.Method method2 = this.f7248b;
                HttpClient.Proto proto2 = this.f7247a;
                ResultKt.throwOnFailure(obj);
                method = method2;
                proto = proto2;
            }
            byte[] byteArray = ((Request.Builder) obj).build().toByteArray();
            Log.log("ProtoRequest", h0.a("Request body size to ").append(this.f7250d.d()).append(": ").append(byteArray.length).append(" bytes.").toString());
            return Result.m500boximpl(proto.mo148enqueueyxL6bBk(method, this.f7252f, byteArray, C0136a.f7253a, this.f7251e instanceof i5));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(long j, y2 y2Var, y2 y2Var2, String str, Continuation<? super e> continuation) {
        super(2, continuation);
        this.f7243b = j;
        this.f7244c = y2Var;
        this.f7245d = y2Var2;
        this.f7246e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new e(this.f7243b, this.f7244c, this.f7245d, this.f7246e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends JSONObject>> continuation) {
        return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f7242a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            long j = this.f7243b;
            a aVar = new a(this.f7244c, this.f7245d, this.f7246e, null);
            this.f7242a = 1;
            obj = TimeoutKt.withTimeoutOrNull(j, aVar, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Result result = (Result) obj;
        return Result.m500boximpl(result == null ? ResultExtKt.asFailure(HttpError.TimeoutError.INSTANCE) : result.m510unboximpl());
    }
}
