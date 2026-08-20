package com.appodeal.consent.internal;

import com.appodeal.ads.modules.libs.network.HttpClient;
import com.appodeal.ads.modules.libs.network.Networking;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f8082a = new c();

    /* renamed from: b  reason: collision with root package name */
    public static final HttpClient.Method f8083b = HttpClient.Method.POST;

    /* renamed from: c  reason: collision with root package name */
    public static final HttpClient.Zip f8084c = HttpClient.Zip.INSTANCE;

    @DebugMetadata(c = "com.appodeal.consent.internal.ConsentRequest", f = "ConsentRequest.kt", i = {}, l = {20}, m = "execute-0E7RQCE$apd_consent", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f8085a;

        /* renamed from: c  reason: collision with root package name */
        public int f8087c;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f8085a = obj;
            this.f8087c |= Integer.MIN_VALUE;
            Object a2 = c.this.a(null, null, this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.ConsentRequest$execute$2", f = "ConsentRequest.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends JSONObject>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f8088a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.consent.internal.a f8089b;

        /* loaded from: classes2.dex */
        public static final class a extends Lambda implements Function1<byte[], JSONObject> {

            /* renamed from: a  reason: collision with root package name */
            public static final a f8090a = new a();

            public a() {
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
        public b(com.appodeal.consent.internal.a aVar, String str, Continuation continuation) {
            super(2, continuation);
            this.f8088a = str;
            this.f8089b = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f8089b, this.f8088a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends JSONObject>> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HttpClient.Zip zip = c.f8084c;
            HttpClient.Method method = c.f8083b;
            String str = this.f8088a;
            String jSONObject = j.a(this.f8089b).toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "RequestDataBinder.bind(d…              .toString()");
            byte[] bytes = jSONObject.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return Result.m500boximpl(Networking.DefaultImpls.m149enqueueyxL6bBk$default(zip, method, str, bytes, a.f8090a, false, 16, null));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.appodeal.consent.internal.a r5, java.lang.String r6, kotlin.coroutines.Continuation<? super kotlin.Result<? extends org.json.JSONObject>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.appodeal.consent.internal.c.a
            if (r0 == 0) goto L13
            r0 = r7
            com.appodeal.consent.internal.c$a r0 = (com.appodeal.consent.internal.c.a) r0
            int r1 = r0.f8087c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8087c = r1
            goto L18
        L13:
            com.appodeal.consent.internal.c$a r0 = new com.appodeal.consent.internal.c$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f8085a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f8087c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L45
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            com.appodeal.consent.internal.c$b r7 = new com.appodeal.consent.internal.c$b
            r2 = 0
            r7.<init>(r5, r6, r2)
            r0.f8087c = r3
            r5 = 20000(0x4e20, double:9.8813E-320)
            java.lang.Object r7 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r5, r7, r0)
            if (r7 != r1) goto L45
            return r1
        L45:
            kotlin.Result r7 = (kotlin.Result) r7
            if (r7 != 0) goto L50
            com.appodeal.ads.modules.libs.network.HttpError$TimeoutError r5 = com.appodeal.ads.modules.libs.network.HttpError.TimeoutError.INSTANCE
            java.lang.Object r5 = com.appodeal.ads.modules.common.internal.ext.ResultExtKt.asFailure(r5)
            goto L54
        L50:
            java.lang.Object r5 = r7.m510unboximpl()
        L54:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.consent.internal.c.a(com.appodeal.consent.internal.a, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
