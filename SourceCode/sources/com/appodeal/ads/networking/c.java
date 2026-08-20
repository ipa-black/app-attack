package com.appodeal.ads.networking;

import com.appodeal.ads.b3;
import com.appodeal.ads.h0;
import com.appodeal.ads.i5;
import com.appodeal.ads.j5;
import com.appodeal.ads.k4;
import com.appodeal.ads.modules.common.internal.ext.ResultExtKt;
import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.appodeal.ads.modules.libs.network.HttpClient;
import com.appodeal.ads.modules.libs.network.HttpError;
import com.appodeal.ads.s1;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.x0;
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
import kotlinx.coroutines.TimeoutKt;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c {

    @DebugMetadata(c = "com.appodeal.ads.networking.JsonRequestExtKt", f = "JsonRequestExt.kt", i = {}, l = {26}, m = "execute", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7220a;

        /* renamed from: b  reason: collision with root package name */
        public int f7221b;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7220a = obj;
            this.f7221b |= Integer.MIN_VALUE;
            Object a2 = c.a((s1) null, this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$2", f = "JsonRequestExt.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends JSONObject>>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f7222a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ int f7223b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ s1 f7224c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ s1 f7225d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ String f7226e;

        @DebugMetadata(c = "com.appodeal.ads.networking.JsonRequestExtKt$execute$2$1", f = "JsonRequestExt.kt", i = {}, l = {31, 47}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends JSONObject>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            public HttpClient.ZipBase64 f7227a;

            /* renamed from: b  reason: collision with root package name */
            public HttpClient.Method f7228b;

            /* renamed from: c  reason: collision with root package name */
            public int f7229c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ s1 f7230d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ s1 f7231e;

            /* renamed from: f  reason: collision with root package name */
            public final /* synthetic */ String f7232f;

            /* renamed from: com.appodeal.ads.networking.c$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0135a extends Lambda implements Function1<byte[], JSONObject> {

                /* renamed from: a  reason: collision with root package name */
                public static final C0135a f7233a = new C0135a();

                public C0135a() {
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
            public a(s1 s1Var, s1 s1Var2, String str, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f7230d = s1Var;
                this.f7231e = s1Var2;
                this.f7232f = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new a(this.f7230d, this.f7231e, this.f7232f, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends JSONObject>> continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                HttpClient.Method method;
                HttpClient.ZipBase64 zipBase64;
                Object obj2;
                JSONObject a2;
                JSONObject jSONObject;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.f7229c;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    HttpClient.ZipBase64 e2 = this.f7230d.e();
                    HttpClient.Method f2 = this.f7230d.f();
                    s1 s1Var = this.f7230d;
                    this.f7227a = e2;
                    this.f7228b = f2;
                    this.f7229c = 1;
                    Object a3 = s1Var.a(this);
                    if (a3 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    method = f2;
                    zipBase64 = e2;
                    obj = a3;
                } else if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        obj2 = ((Result) obj).m510unboximpl();
                        return Result.m500boximpl(obj2);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    HttpClient.Method method2 = this.f7228b;
                    zipBase64 = this.f7227a;
                    ResultKt.throwOnFailure(obj);
                    method = method2;
                }
                byte[] a4 = ((b3) obj).a();
                Log.log("JsonRequest", h0.a("Request body size to ").append(this.f7230d.g()).append(": ").append(a4.length).append(" bytes.").toString());
                obj2 = zipBase64.mo148enqueueyxL6bBk(method, this.f7232f, a4, C0135a.f7233a, this.f7231e instanceof i5);
                s1 s1Var2 = this.f7231e;
                Result result = null;
                if (Result.m508isSuccessimpl(obj2) && (jSONObject = (JSONObject) obj2) != null) {
                    x0 x0Var = s1Var2 instanceof x0 ? (x0) s1Var2 : null;
                    if (x0Var != null) {
                        x0Var.a(jSONObject);
                    }
                }
                s1 s1Var3 = this.f7231e;
                String str = this.f7232f;
                Throwable m504exceptionOrNullimpl = Result.m504exceptionOrNullimpl(obj2);
                if (m504exceptionOrNullimpl != null) {
                    k4 k4Var = s1Var3 instanceof k4 ? (k4) s1Var3 : null;
                    boolean b2 = k4Var == null ? false : k4Var.b();
                    j5 j5Var = s1Var3 instanceof j5 ? (j5) s1Var3 : null;
                    if ((j5Var == null ? null : j5Var.c()) == null && b2) {
                        InternalLogKt.logInternal("JsonRequestExt", "Applying retry logic (Failed at " + str + ')', m504exceptionOrNullimpl);
                        this.f7227a = null;
                        this.f7228b = null;
                        this.f7229c = 2;
                        obj2 = c.a(s1Var3, this);
                        if (obj2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        InternalLogKt.logInternal("JsonRequestExt", Intrinsics.stringPlus("Request failed: ", str), m504exceptionOrNullimpl);
                        x0 x0Var2 = s1Var3 instanceof x0 ? (x0) s1Var3 : null;
                        if (x0Var2 != null && (a2 = x0Var2.a()) != null) {
                            Result m500boximpl = Result.m500boximpl(ResultExtKt.asSuccess(a2));
                            Object m510unboximpl = m500boximpl.m510unboximpl();
                            if (Result.m507isFailureimpl(m510unboximpl)) {
                                m510unboximpl = null;
                            }
                            InternalLogKt.logInternal$default("JsonRequestExt", Intrinsics.stringPlus("Using cached result: ", m510unboximpl), null, 4, null);
                            result = m500boximpl;
                        }
                        obj2 = result == null ? ResultExtKt.asFailure(m504exceptionOrNullimpl) : result.m510unboximpl();
                    }
                }
                return Result.m500boximpl(obj2);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i, s1 s1Var, s1 s1Var2, String str, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f7223b = i;
            this.f7224c = s1Var;
            this.f7225d = s1Var2;
            this.f7226e = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f7223b, this.f7224c, this.f7225d, this.f7226e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends JSONObject>> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7222a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long j = this.f7223b;
                a aVar = new a(this.f7224c, this.f7225d, this.f7226e, null);
                this.f7222a = 1;
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

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.appodeal.ads.s1 r10, kotlin.coroutines.Continuation<? super kotlin.Result<? extends org.json.JSONObject>> r11) {
        /*
            boolean r0 = r11 instanceof com.appodeal.ads.networking.c.a
            if (r0 == 0) goto L13
            r0 = r11
            com.appodeal.ads.networking.c$a r0 = (com.appodeal.ads.networking.c.a) r0
            int r1 = r0.f7221b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7221b = r1
            goto L18
        L13:
            com.appodeal.ads.networking.c$a r0 = new com.appodeal.ads.networking.c$a
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.f7220a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7221b
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L99
        L2a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L32:
            kotlin.ResultKt.throwOnFailure(r11)
            boolean r11 = r10 instanceof com.appodeal.ads.x0
            r2 = 0
            if (r11 == 0) goto L3e
            r11 = r10
            com.appodeal.ads.x0 r11 = (com.appodeal.ads.x0) r11
            goto L3f
        L3e:
            r11 = r2
        L3f:
            if (r11 != 0) goto L43
            r11 = r2
            goto L47
        L43:
            org.json.JSONObject r11 = r11.a()
        L47:
            if (r11 == 0) goto L4c
            r11 = 10000(0x2710, float:1.4013E-41)
            goto L4e
        L4c:
            r11 = 20000(0x4e20, float:2.8026E-41)
        L4e:
            r5 = r11
            boolean r11 = r10 instanceof com.appodeal.ads.j5
            if (r11 == 0) goto L57
            r11 = r10
            com.appodeal.ads.j5 r11 = (com.appodeal.ads.j5) r11
            goto L58
        L57:
            r11 = r2
        L58:
            if (r11 != 0) goto L5b
            goto L5f
        L5b:
            java.lang.String r2 = r11.c()
        L5f:
            if (r2 != 0) goto L68
            r10.getClass()
            java.lang.String r2 = com.appodeal.ads.s1.d()
        L68:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.StringBuilder r11 = r11.append(r2)
            r2 = 47
            java.lang.StringBuilder r11 = r11.append(r2)
            java.lang.String r2 = r10.g()
            java.lang.StringBuilder r11 = r11.append(r2)
            java.lang.String r8 = r11.toString()
            kotlinx.coroutines.CoroutineDispatcher r11 = kotlinx.coroutines.Dispatchers.getIO()
            com.appodeal.ads.networking.c$b r2 = new com.appodeal.ads.networking.c$b
            r9 = 0
            r4 = r2
            r6 = r10
            r7 = r10
            r4.<init>(r5, r6, r7, r8, r9)
            r0.f7221b = r3
            java.lang.Object r11 = kotlinx.coroutines.BuildersKt.withContext(r11, r2, r0)
            if (r11 != r1) goto L99
            return r1
        L99:
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r10 = r11.m510unboximpl()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.networking.c.a(com.appodeal.ads.s1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(com.appodeal.ads.y2.a r11, kotlin.coroutines.Continuation r12) {
        /*
            boolean r0 = r12 instanceof com.appodeal.ads.networking.d
            if (r0 == 0) goto L13
            r0 = r12
            com.appodeal.ads.networking.d r0 = (com.appodeal.ads.networking.d) r0
            int r1 = r0.f7241b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7241b = r1
            goto L18
        L13:
            com.appodeal.ads.networking.d r0 = new com.appodeal.ads.networking.d
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f7240a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7241b
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r12)
            goto L6e
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.ResultKt.throwOnFailure(r12)
            r11.getClass()
            java.lang.String r12 = com.appodeal.ads.y2.a()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r12 = r2.append(r12)
            r2 = 47
            java.lang.StringBuilder r12 = r12.append(r2)
            java.lang.String r2 = r11.d()
            java.lang.StringBuilder r12 = r12.append(r2)
            java.lang.String r9 = r12.toString()
            kotlinx.coroutines.CoroutineDispatcher r12 = kotlinx.coroutines.Dispatchers.getIO()
            com.appodeal.ads.networking.e r2 = new com.appodeal.ads.networking.e
            r5 = 20000(0x4e20, double:9.8813E-320)
            r10 = 0
            r4 = r2
            r7 = r11
            r8 = r11
            r4.<init>(r5, r7, r8, r9, r10)
            r0.f7241b = r3
            java.lang.Object r12 = kotlinx.coroutines.BuildersKt.withContext(r12, r2, r0)
            if (r12 != r1) goto L6e
            return r1
        L6e:
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r11 = r12.m510unboximpl()
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.networking.c.a(com.appodeal.ads.y2$a, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
