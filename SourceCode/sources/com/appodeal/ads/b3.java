package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class b3 {

    /* renamed from: a  reason: collision with root package name */
    public final g4 f6559a;

    /* renamed from: b  reason: collision with root package name */
    public final Lazy f6560b;

    /* renamed from: c  reason: collision with root package name */
    public r<?> f6561c;

    /* renamed from: d  reason: collision with root package name */
    public s<?> f6562d;

    /* renamed from: e  reason: collision with root package name */
    public u<?, ?, ?> f6563e;

    @DebugMetadata(c = "com.appodeal.ads.RequestBodyBuilder", f = "RequestBodyBuilder.kt", i = {0, 0}, l = {36}, m = "bind", n = {"this", "binder"}, s = {"L$0", "L$2"})
    /* loaded from: classes.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public b3 f6564a;

        /* renamed from: b  reason: collision with root package name */
        public com.appodeal.ads.networking.binders.c[] f6565b;

        /* renamed from: c  reason: collision with root package name */
        public com.appodeal.ads.networking.binders.c f6566c;

        /* renamed from: d  reason: collision with root package name */
        public int f6567d;

        /* renamed from: e  reason: collision with root package name */
        public int f6568e;

        /* renamed from: f  reason: collision with root package name */
        public /* synthetic */ Object f6569f;

        /* renamed from: h  reason: collision with root package name */
        public int f6571h;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6569f = obj;
            this.f6571h |= Integer.MIN_VALUE;
            return b3.this.a((com.appodeal.ads.networking.binders.c[]) null, this);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends Lambda implements Function0<JSONObject> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f6572a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final JSONObject invoke() {
            return JsonObjectBuilderKt.jsonObject(c3.f6579a);
        }
    }

    public b3() {
        this(0);
    }

    public /* synthetic */ b3(int i) {
        this(i4.a());
    }

    public b3(g4 provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.f6559a = provider;
        this.f6560b = LazyKt.lazy(b.f6572a);
    }

    public final b3 a(r<?> adRequest) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.f6561c = adRequest;
        return this;
    }

    public final b3 a(s<?> adRequestParams) {
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        this.f6562d = adRequestParams;
        return this;
    }

    public final b3 a(u<?, ?, ?> adTypeController) {
        Intrinsics.checkNotNullParameter(adTypeController, "adTypeController");
        this.f6563e = adTypeController;
        return this;
    }

    public final byte[] a() {
        byte[] bytes;
        if (((JSONObject) this.f6560b.getValue()).length() != 0) {
            String jSONObject = ((JSONObject) this.f6560b.getValue()).toString();
            if (jSONObject == null) {
                bytes = null;
            } else {
                bytes = jSONObject.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            }
            if (bytes != null) {
                return bytes;
            }
        }
        return new byte[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0092  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0069 -> B:25:0x006d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0075 -> B:30:0x0081). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.appodeal.ads.networking.binders.c[] r14, kotlin.coroutines.Continuation<? super com.appodeal.ads.b3> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.appodeal.ads.b3.a
            if (r0 == 0) goto L13
            r0 = r15
            com.appodeal.ads.b3$a r0 = (com.appodeal.ads.b3.a) r0
            int r1 = r0.f6571h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6571h = r1
            goto L18
        L13:
            com.appodeal.ads.b3$a r0 = new com.appodeal.ads.b3$a
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.f6569f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6571h
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            int r14 = r0.f6568e
            int r2 = r0.f6567d
            com.appodeal.ads.networking.binders.c r4 = r0.f6566c
            com.appodeal.ads.networking.binders.c[] r5 = r0.f6565b
            com.appodeal.ads.b3 r6 = r0.f6564a
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: java.lang.Exception -> L33
            goto L6d
        L33:
            r15 = move-exception
            goto L75
        L35:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L3d:
            kotlin.ResultKt.throwOnFailure(r15)
            int r15 = r14.length
            r2 = 0
            r10 = r13
            r12 = r15
            r15 = r14
            r14 = r12
        L46:
            if (r2 >= r14) goto L92
            r11 = r15[r2]
            int r2 = r2 + 1
            com.appodeal.ads.g4 r4 = r10.f6559a     // Catch: java.lang.Exception -> L70
            com.appodeal.ads.r<?> r6 = r10.f6561c     // Catch: java.lang.Exception -> L70
            com.appodeal.ads.s<?> r7 = r10.f6562d     // Catch: java.lang.Exception -> L70
            com.appodeal.ads.u<?, ?, ?> r8 = r10.f6563e     // Catch: java.lang.Exception -> L70
            r0.f6564a = r10     // Catch: java.lang.Exception -> L70
            r0.f6565b = r15     // Catch: java.lang.Exception -> L70
            r0.f6566c = r11     // Catch: java.lang.Exception -> L70
            r0.f6567d = r2     // Catch: java.lang.Exception -> L70
            r0.f6568e = r14     // Catch: java.lang.Exception -> L70
            r0.f6571h = r3     // Catch: java.lang.Exception -> L70
            r5 = r11
            r9 = r0
            java.lang.Object r4 = r4.a(r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L70
            if (r4 != r1) goto L69
            return r1
        L69:
            r5 = r15
            r15 = r4
            r6 = r10
            r4 = r11
        L6d:
            com.appodeal.ads.networking.binders.b r15 = (com.appodeal.ads.networking.binders.b) r15     // Catch: java.lang.Exception -> L33
            goto L81
        L70:
            r4 = move-exception
            r5 = r15
            r15 = r4
            r6 = r10
            r4 = r11
        L75:
            java.lang.String r7 = "Error while binding data for "
            java.lang.String r4 = kotlin.jvm.internal.Intrinsics.stringPlus(r7, r4)
            java.lang.String r7 = "RequestBodyBuilder"
            com.appodeal.ads.modules.common.internal.log.InternalLogKt.logInternal(r7, r4, r15)
            r15 = 0
        L81:
            r10 = r6
            if (r15 != 0) goto L85
            goto L90
        L85:
            kotlin.Lazy r4 = r10.f6560b
            java.lang.Object r4 = r4.getValue()
            org.json.JSONObject r4 = (org.json.JSONObject) r4
            com.appodeal.ads.f4.a(r4, r15)
        L90:
            r15 = r5
            goto L46
        L92:
            kotlin.Lazy r14 = r10.f6560b
            java.lang.Object r14 = r14.getValue()
            org.json.JSONObject r14 = (org.json.JSONObject) r14
            com.appodeal.ads.j4 r15 = com.appodeal.ads.j4.f6751a
            java.lang.String r0 = "instance"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r15, r0)
            com.appodeal.ads.x2.b(r14)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.b3.a(com.appodeal.ads.networking.binders.c[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final b3 a(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        ((JSONObject) this.f6560b.getValue()).put(key, obj);
        return this;
    }
}
