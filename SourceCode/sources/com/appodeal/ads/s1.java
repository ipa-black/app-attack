package com.appodeal.ads;

import com.applovin.sdk.AppLovinEventParameters;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.libs.network.AppodealEndpoints;
import com.appodeal.ads.modules.libs.network.HttpClient;
import com.appodeal.ads.networking.binders.c;
import java.util.Arrays;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class s1 {

    /* renamed from: a  reason: collision with root package name */
    public final HttpClient.Method f7453a;

    /* renamed from: b  reason: collision with root package name */
    public final HttpClient.ZipBase64 f7454b;

    /* loaded from: classes.dex */
    public static abstract class a extends s1 {

        /* renamed from: c  reason: collision with root package name */
        public final r<?> f7455c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7456d;

        /* renamed from: e  reason: collision with root package name */
        public final double f7457e;

        /* renamed from: f  reason: collision with root package name */
        public final Integer f7458f;

        /* renamed from: g  reason: collision with root package name */
        public final Double f7459g;

        /* renamed from: com.appodeal.ads.s1$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0143a extends a {

            /* renamed from: h  reason: collision with root package name */
            public final String f7460h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0143a(r<?> adRequest, String adObjectId, double d2, Integer num, Double d3) {
                super(adRequest, adObjectId, d2, num, d3, 0);
                Intrinsics.checkNotNullParameter(adRequest, "adRequest");
                Intrinsics.checkNotNullParameter(adObjectId, "adObjectId");
                this.f7460h = Constants.CLICK;
            }

            @Override // com.appodeal.ads.s1
            public final String g() {
                return this.f7460h;
            }
        }

        /* loaded from: classes.dex */
        public static final class b extends a {

            /* renamed from: h  reason: collision with root package name */
            public final String f7461h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(r<?> adRequest, String adObjectId, double d2, Integer num, Double d3) {
                super(adRequest, adObjectId, d2, num, d3, 0);
                Intrinsics.checkNotNullParameter(adRequest, "adRequest");
                Intrinsics.checkNotNullParameter(adObjectId, "adObjectId");
                this.f7461h = Constants.FINISH;
            }

            @Override // com.appodeal.ads.s1
            public final String g() {
                return this.f7461h;
            }
        }

        /* loaded from: classes.dex */
        public static final class c extends a {

            /* renamed from: h  reason: collision with root package name */
            public final String f7462h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(r<?> adRequest, String adObjectId, double d2, Integer num, Double d3) {
                super(adRequest, adObjectId, d2, num, d3, 0);
                Intrinsics.checkNotNullParameter(adRequest, "adRequest");
                Intrinsics.checkNotNullParameter(adObjectId, "adObjectId");
                this.f7462h = Constants.SHOW;
            }

            @Override // com.appodeal.ads.s1
            public final String g() {
                return this.f7462h;
            }
        }

        @DebugMetadata(c = "com.appodeal.ads.JsonRequest$AdController", f = "JsonRequest.kt", i = {0}, l = {157}, m = "bodyBuilder$suspendImpl", n = {"this"}, s = {"L$0"})
        /* loaded from: classes.dex */
        public static final class d extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            public a f7463a;

            /* renamed from: b  reason: collision with root package name */
            public /* synthetic */ Object f7464b;

            /* renamed from: d  reason: collision with root package name */
            public int f7466d;

            public d(Continuation<? super d> continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f7464b = obj;
                this.f7466d |= Integer.MIN_VALUE;
                return a.a(a.this, this);
            }
        }

        public a(r<?> rVar, String str, double d2, Integer num, Double d3) {
            super(0);
            this.f7455c = rVar;
            this.f7456d = str;
            this.f7457e = d2;
            this.f7458f = num;
            this.f7459g = d3;
        }

        public /* synthetic */ a(r rVar, String str, double d2, Integer num, Double d3, int i) {
            this(rVar, str, d2, num, d3);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ java.lang.Object a(com.appodeal.ads.s1.a r6, kotlin.coroutines.Continuation r7) {
            /*
                boolean r0 = r7 instanceof com.appodeal.ads.s1.a.d
                if (r0 == 0) goto L13
                r0 = r7
                com.appodeal.ads.s1$a$d r0 = (com.appodeal.ads.s1.a.d) r0
                int r1 = r0.f7466d
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f7466d = r1
                goto L18
            L13:
                com.appodeal.ads.s1$a$d r0 = new com.appodeal.ads.s1$a$d
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f7464b
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f7466d
                r3 = 1
                if (r2 == 0) goto L33
                if (r2 != r3) goto L2b
                com.appodeal.ads.s1$a r6 = r0.f7463a
                kotlin.ResultKt.throwOnFailure(r7)
                goto L87
            L2b:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L33:
                kotlin.ResultKt.throwOnFailure(r7)
                com.appodeal.ads.b3 r7 = new com.appodeal.ads.b3
                r2 = 0
                r7.<init>(r2)
                com.appodeal.ads.r<?> r4 = r6.f7455c
                com.appodeal.ads.b3 r7 = r7.a(r4)
                java.lang.String r4 = r6.f7456d
                java.lang.String r5 = "id"
                com.appodeal.ads.b3 r7 = r7.a(r5, r4)
                kotlin.jvm.internal.SpreadBuilder r4 = new kotlin.jvm.internal.SpreadBuilder
                r5 = 4
                r4.<init>(r5)
                java.util.Set<com.appodeal.ads.networking.binders.c> r5 = com.appodeal.ads.networking.binders.c.f7212a
                java.util.Set r5 = com.appodeal.ads.networking.binders.c.a.a()
                com.appodeal.ads.networking.binders.c[] r2 = new com.appodeal.ads.networking.binders.c[r2]
                java.lang.Object[] r2 = r5.toArray(r2)
                if (r2 == 0) goto Lae
                r4.addSpread(r2)
                com.appodeal.ads.networking.binders.c r2 = com.appodeal.ads.networking.binders.c.AdRequest
                r4.add(r2)
                com.appodeal.ads.networking.binders.c r2 = com.appodeal.ads.networking.binders.c.Sessions
                r4.add(r2)
                com.appodeal.ads.networking.binders.c r2 = com.appodeal.ads.networking.binders.c.AdStat
                r4.add(r2)
                int r2 = r4.size()
                com.appodeal.ads.networking.binders.c[] r2 = new com.appodeal.ads.networking.binders.c[r2]
                java.lang.Object[] r2 = r4.toArray(r2)
                com.appodeal.ads.networking.binders.c[] r2 = (com.appodeal.ads.networking.binders.c[]) r2
                r0.f7463a = r6
                r0.f7466d = r3
                java.lang.Object r7 = r7.a(r2, r0)
                if (r7 != r1) goto L87
                return r1
            L87:
                r0 = r7
                com.appodeal.ads.b3 r0 = (com.appodeal.ads.b3) r0
                double r1 = r6.f7457e
                r3 = 0
                int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
                if (r3 <= 0) goto L9b
                java.lang.Double r1 = kotlin.coroutines.jvm.internal.Boxing.boxDouble(r1)
                java.lang.String r2 = "ecpm"
                r0.a(r2, r1)
            L9b:
                java.lang.Integer r1 = r6.f7458f
                if (r1 == 0) goto La4
                java.lang.String r2 = "placement_id"
                r0.a(r2, r1)
            La4:
                java.lang.Double r6 = r6.f7459g
                if (r6 == 0) goto Lad
                java.lang.String r1 = "price_floor"
                r0.a(r1, r6)
            Lad:
                return r7
            Lae:
                java.lang.NullPointerException r6 = new java.lang.NullPointerException
                java.lang.String r7 = "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"
                r6.<init>(r7)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.s1.a.a(com.appodeal.ads.s1$a, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            return a(this, continuation);
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends s1 implements i5, k4, x0 {

        /* renamed from: c  reason: collision with root package name */
        public final b3 f7467c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ l4 f7468d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.ads.networking.cache.a f7469e;

        /* renamed from: f  reason: collision with root package name */
        public final String f7470f;

        public /* synthetic */ b() {
            this(new b3(0), new l4(), new com.appodeal.ads.networking.cache.a(com.appodeal.ads.storage.o.f7663b));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(b3 requestBodyBuilder, l4 retryProvider, com.appodeal.ads.networking.cache.a cacheProvider) {
            super(0);
            Intrinsics.checkNotNullParameter(requestBodyBuilder, "requestBodyBuilder");
            Intrinsics.checkNotNullParameter(retryProvider, "retryProvider");
            Intrinsics.checkNotNullParameter(cacheProvider, "cacheProvider");
            this.f7467c = requestBodyBuilder;
            this.f7468d = retryProvider;
            this.f7469e = cacheProvider;
            this.f7470f = Constants.CONFIG;
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            b3 b3Var = this.f7467c;
            SpreadBuilder spreadBuilder = new SpreadBuilder(2);
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            Object[] array = SetsKt.minus(c.a.a(), com.appodeal.ads.networking.binders.c.ServicesData).toArray(new com.appodeal.ads.networking.binders.c[0]);
            if (array != null) {
                spreadBuilder.addSpread(array);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Services);
                return b3Var.a((com.appodeal.ads.networking.binders.c[]) spreadBuilder.toArray(new com.appodeal.ads.networking.binders.c[spreadBuilder.size()]), continuation);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Override // com.appodeal.ads.x0
        public final JSONObject a() {
            return this.f7469e.a();
        }

        @Override // com.appodeal.ads.x0
        public final void a(JSONObject jSONObject) {
            this.f7469e.a(jSONObject);
        }

        @Override // com.appodeal.ads.k4
        public final boolean b() {
            return this.f7468d.b();
        }

        @Override // com.appodeal.ads.s1
        public final String g() {
            return this.f7470f;
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends s1 implements x0, j5 {

        /* renamed from: c  reason: collision with root package name */
        public final r<?> f7471c;

        /* renamed from: d  reason: collision with root package name */
        public final s<?> f7472d;

        /* renamed from: e  reason: collision with root package name */
        public final u<?, ?, ?> f7473e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.ads.networking.cache.b f7474f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ k5 f7475g;

        /* renamed from: h  reason: collision with root package name */
        public final String f7476h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(r<?> adRequest, s<?> adRequestParams, u<?, ?, ?> adTypeController) {
            super(0);
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
            Intrinsics.checkNotNullParameter(adTypeController, "adTypeController");
            this.f7471c = adRequest;
            this.f7472d = adRequestParams;
            this.f7473e = adTypeController;
            String a2 = adRequestParams.a();
            Intrinsics.checkNotNullExpressionValue(a2, "adRequestParams.requestPath");
            this.f7474f = new com.appodeal.ads.networking.cache.b(a2, com.appodeal.ads.storage.o.f7663b);
            this.f7475g = new k5(adRequestParams);
            this.f7476h = Constants.GET;
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            b3 a2 = new b3(0).a(this.f7471c).a(this.f7472d).a(this.f7473e);
            SpreadBuilder spreadBuilder = new SpreadBuilder(6);
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            Object[] array = c.a.a().toArray(new com.appodeal.ads.networking.binders.c[0]);
            if (array != null) {
                spreadBuilder.addSpread(array);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.AdRequest);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Sessions);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Adapters);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.AdStat);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Get);
                return a2.a((com.appodeal.ads.networking.binders.c[]) spreadBuilder.toArray(new com.appodeal.ads.networking.binders.c[spreadBuilder.size()]), continuation);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Override // com.appodeal.ads.x0
        public final JSONObject a() {
            return this.f7474f.a();
        }

        @Override // com.appodeal.ads.x0
        public final void a(JSONObject jSONObject) {
            this.f7474f.a(jSONObject);
        }

        @Override // com.appodeal.ads.j5
        public final String c() {
            return this.f7475g.c();
        }

        @Override // com.appodeal.ads.s1
        public final String g() {
            return this.f7476h;
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends s1 {

        /* renamed from: c  reason: collision with root package name */
        public final double f7477c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7478d;

        /* renamed from: e  reason: collision with root package name */
        public final String f7479e;

        public d(double d2, String str) {
            super(0);
            this.f7477c = d2;
            this.f7478d = str;
            this.f7479e = "iap";
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            b3 a2 = new b3(0).a(AppLovinEventParameters.REVENUE_AMOUNT, Boxing.boxDouble(this.f7477c)).a("currency", this.f7478d);
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            Object[] array = c.a.a().toArray(new com.appodeal.ads.networking.binders.c[0]);
            if (array != null) {
                com.appodeal.ads.networking.binders.c[] cVarArr = (com.appodeal.ads.networking.binders.c[]) array;
                return a2.a((com.appodeal.ads.networking.binders.c[]) Arrays.copyOf(cVarArr, cVarArr.length), continuation);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Override // com.appodeal.ads.s1
        public final String g() {
            return this.f7479e;
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends s1 implements x0 {

        /* renamed from: c  reason: collision with root package name */
        public final b3 f7480c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.ads.networking.cache.c f7481d;

        /* renamed from: e  reason: collision with root package name */
        public final String f7482e;

        public /* synthetic */ e() {
            this(new b3(0), new com.appodeal.ads.networking.cache.c(com.appodeal.ads.storage.o.f7663b));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(b3 requestBodyBuilder, com.appodeal.ads.networking.cache.c cacheProvider) {
            super(0);
            Intrinsics.checkNotNullParameter(requestBodyBuilder, "requestBodyBuilder");
            Intrinsics.checkNotNullParameter(cacheProvider, "cacheProvider");
            this.f7480c = requestBodyBuilder;
            this.f7481d = cacheProvider;
            this.f7482e = Constants.INIT;
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            b3 b3Var = this.f7480c;
            SpreadBuilder spreadBuilder = new SpreadBuilder(3);
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            Object[] array = c.a.a().toArray(new com.appodeal.ads.networking.binders.c[0]);
            if (array != null) {
                spreadBuilder.addSpread(array);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Sessions);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Adapters);
                return b3Var.a((com.appodeal.ads.networking.binders.c[]) spreadBuilder.toArray(new com.appodeal.ads.networking.binders.c[spreadBuilder.size()]), continuation);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Override // com.appodeal.ads.x0
        public final JSONObject a() {
            return this.f7481d.a();
        }

        @Override // com.appodeal.ads.x0
        public final void a(JSONObject jSONObject) {
            this.f7481d.a(jSONObject);
        }

        @Override // com.appodeal.ads.s1
        public final String g() {
            return this.f7482e;
        }
    }

    /* loaded from: classes.dex */
    public static final class f extends s1 {

        /* renamed from: c  reason: collision with root package name */
        public final String f7483c;

        /* renamed from: d  reason: collision with root package name */
        public final long f7484d;

        /* renamed from: e  reason: collision with root package name */
        public final String f7485e;

        public /* synthetic */ f(String str) {
            this(str, Appodeal.getSegmentId());
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String packageName, long j) {
            super(0);
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            this.f7483c = packageName;
            this.f7484d = j;
            this.f7485e = Constants.INSTALL;
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            b3 a2 = new b3(0).a("id", this.f7483c).a("segment_id", Boxing.boxLong(this.f7484d));
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            Object[] array = c.a.a().toArray(new com.appodeal.ads.networking.binders.c[0]);
            if (array != null) {
                com.appodeal.ads.networking.binders.c[] cVarArr = (com.appodeal.ads.networking.binders.c[]) array;
                return a2.a((com.appodeal.ads.networking.binders.c[]) Arrays.copyOf(cVarArr, cVarArr.length), continuation);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Override // com.appodeal.ads.s1
        public final String g() {
            return this.f7485e;
        }
    }

    /* loaded from: classes.dex */
    public static final class g extends s1 {

        /* renamed from: c  reason: collision with root package name */
        public final String f7486c;

        public g() {
            super(0);
            this.f7486c = Constants.SESSIONS;
        }

        @Override // com.appodeal.ads.s1
        public final Object a(Continuation<? super b3> continuation) {
            b3 b3Var = new b3(0);
            SpreadBuilder spreadBuilder = new SpreadBuilder(2);
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            Object[] array = c.a.a().toArray(new com.appodeal.ads.networking.binders.c[0]);
            if (array != null) {
                spreadBuilder.addSpread(array);
                spreadBuilder.add(com.appodeal.ads.networking.binders.c.Sessions);
                return b3Var.a((com.appodeal.ads.networking.binders.c[]) spreadBuilder.toArray(new com.appodeal.ads.networking.binders.c[spreadBuilder.size()]), continuation);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        @Override // com.appodeal.ads.s1
        public final String g() {
            return this.f7486c;
        }
    }

    public s1() {
        this.f7453a = HttpClient.Method.POST;
        this.f7454b = HttpClient.ZipBase64.INSTANCE;
    }

    public /* synthetic */ s1(int i) {
        this();
    }

    public static String d() {
        return AppodealEndpoints.INSTANCE.getActiveEndpoint();
    }

    public abstract Object a(Continuation<? super b3> continuation);

    public final HttpClient.ZipBase64 e() {
        return this.f7454b;
    }

    public final HttpClient.Method f() {
        return this.f7453a;
    }

    public abstract String g();
}
