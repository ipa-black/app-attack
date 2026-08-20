package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: a  reason: collision with root package name */
    public final k0 f6856a;

    /* renamed from: b  reason: collision with root package name */
    public final ContextProvider f6857b;

    @DebugMetadata(c = "com.appodeal.ads.InitRequestUseCase", f = "InitRequestUseCase.kt", i = {0, 1, 1}, l = {13, 16}, m = "invoke-IoAF18A", n = {"this", "this", "jObject"}, s = {"L$0", "L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public m1 f6858a;

        /* renamed from: b  reason: collision with root package name */
        public JSONObject f6859b;

        /* renamed from: c  reason: collision with root package name */
        public /* synthetic */ Object f6860c;

        /* renamed from: e  reason: collision with root package name */
        public int f6862e;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6860c = obj;
            this.f6862e |= Integer.MIN_VALUE;
            Object a2 = m1.this.a(this);
            return a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? a2 : Result.m500boximpl(a2);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.InitRequestUseCase", f = "InitRequestUseCase.kt", i = {0, 0}, l = {24}, m = "parseResponse", n = {"this", "jsonObject"}, s = {"L$0", "L$1"})
    /* loaded from: classes.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public m1 f6863a;

        /* renamed from: b  reason: collision with root package name */
        public JSONObject f6864b;

        /* renamed from: c  reason: collision with root package name */
        public /* synthetic */ Object f6865c;

        /* renamed from: e  reason: collision with root package name */
        public int f6867e;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6865c = obj;
            this.f6867e |= Integer.MIN_VALUE;
            return m1.this.a(null, this);
        }
    }

    public /* synthetic */ m1(int i) {
        this(k0.f6758a, com.appodeal.ads.context.b.f6583b);
    }

    public m1(k0 appodealNetworkRequestApi, ContextProvider contextProvider) {
        Intrinsics.checkNotNullParameter(appodealNetworkRequestApi, "appodealNetworkRequestApi");
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        this.f6856a = appodealNetworkRequestApi;
        this.f6857b = contextProvider;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.appodeal.ads.m1.a
            if (r0 == 0) goto L13
            r0 = r6
            com.appodeal.ads.m1$a r0 = (com.appodeal.ads.m1.a) r0
            int r1 = r0.f6862e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6862e = r1
            goto L18
        L13:
            com.appodeal.ads.m1$a r0 = new com.appodeal.ads.m1$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f6860c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6862e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            org.json.JSONObject r1 = r0.f6859b
            com.appodeal.ads.m1 r0 = r0.f6858a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L71
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L38:
            com.appodeal.ads.m1 r2 = r0.f6858a
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.m510unboximpl()
            goto L55
        L44:
            kotlin.ResultKt.throwOnFailure(r6)
            com.appodeal.ads.k0 r6 = r5.f6856a
            r0.f6858a = r5
            r0.f6862e = r4
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L54
            return r1
        L54:
            r2 = r5
        L55:
            boolean r4 = kotlin.Result.m508isSuccessimpl(r6)
            if (r4 == 0) goto L89
            kotlin.Result$Companion r4 = kotlin.Result.Companion
            org.json.JSONObject r6 = (org.json.JSONObject) r6
            if (r6 != 0) goto L62
            goto L87
        L62:
            r0.f6858a = r2
            r0.f6859b = r6
            r0.f6862e = r3
            java.lang.Object r0 = r2.a(r6, r0)
            if (r0 != r1) goto L6f
            return r1
        L6f:
            r1 = r6
            r0 = r2
        L71:
            r0.getClass()
            java.lang.String r6 = "init"
            org.json.JSONArray r6 = r1.optJSONArray(r6)
            com.appodeal.ads.ApdServiceRegistry r1 = com.appodeal.ads.ApdServiceRegistry.getInstance()
            com.appodeal.ads.modules.common.internal.context.ContextProvider r0 = r0.f6857b
            android.content.Context r0 = r0.getApplicationContext()
            r1.initialize(r0, r6)
        L87:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L89:
            java.lang.Object r6 = kotlin.Result.m501constructorimpl(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.m1.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(org.json.JSONObject r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.appodeal.ads.m1.b
            if (r0 == 0) goto L13
            r0 = r6
            com.appodeal.ads.m1$b r0 = (com.appodeal.ads.m1.b) r0
            int r1 = r0.f6867e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6867e = r1
            goto L18
        L13:
            com.appodeal.ads.m1$b r0 = new com.appodeal.ads.m1$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f6865c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f6867e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            org.json.JSONObject r5 = r0.f6864b
            com.appodeal.ads.m1 r0 = r0.f6863a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            com.appodeal.ads.r0 r6 = com.appodeal.ads.r0.f7341a
            com.appodeal.ads.r0.a(r5)
            r0.f6863a = r4
            r0.f6864b = r5
            r0.f6867e = r3
            java.lang.Object r6 = r6.a(r5, r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            r0 = r4
        L4b:
            com.appodeal.ads.r0 r6 = com.appodeal.ads.r0.f7341a
            com.appodeal.ads.r0.b(r5)
            com.appodeal.ads.i0.a(r5)
            com.appodeal.ads.x2.a(r5)
            com.appodeal.ads.utils.x r6 = com.appodeal.ads.q4.m()
            com.appodeal.ads.modules.common.internal.context.ContextProvider r0 = r0.f6857b
            android.content.Context r0 = r0.getApplicationContext()
            r6.a(r0, r5)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.m1.a(org.json.JSONObject, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
