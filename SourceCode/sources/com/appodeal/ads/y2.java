package com.appodeal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.appodeal.ads.api.App;
import com.appodeal.ads.api.Request;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import com.appodeal.ads.modules.libs.network.AppodealEndpoints;
import com.appodeal.ads.modules.libs.network.HttpClient;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public abstract class y2 {

    /* renamed from: a  reason: collision with root package name */
    public final HttpClient.Method f7965a;

    /* renamed from: b  reason: collision with root package name */
    public final HttpClient.Proto f7966b;

    /* loaded from: classes.dex */
    public static final class a extends y2 {

        /* renamed from: c  reason: collision with root package name */
        public final Context f7967c;

        /* renamed from: d  reason: collision with root package name */
        public final RestrictedData f7968d;

        /* renamed from: e  reason: collision with root package name */
        public final u<?, ?, ?> f7969e;

        /* renamed from: f  reason: collision with root package name */
        public final r<?> f7970f;

        /* renamed from: g  reason: collision with root package name */
        public final l<?, ?, ?, ?> f7971g;

        /* renamed from: h  reason: collision with root package name */
        public final List<ServiceData> f7972h;
        public final com.appodeal.ads.storage.a i;
        public final String j;

        @DebugMetadata(c = "com.appodeal.ads.ProtoRequest$Stats", f = "ProtoRequest.kt", i = {0, 0}, l = {45}, m = "bodyBuilder", n = {"this", "$this$bodyBuilder_u24lambda_u2d1"}, s = {"L$0", "L$2"})
        /* renamed from: com.appodeal.ads.y2$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0151a extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            public a f7973a;

            /* renamed from: b  reason: collision with root package name */
            public Request.Builder f7974b;

            /* renamed from: c  reason: collision with root package name */
            public Request.Builder f7975c;

            /* renamed from: d  reason: collision with root package name */
            public Request.Builder f7976d;

            /* renamed from: e  reason: collision with root package name */
            public /* synthetic */ Object f7977e;

            /* renamed from: g  reason: collision with root package name */
            public int f7979g;

            public C0151a(Continuation<? super C0151a> continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f7977e = obj;
                this.f7979g |= Integer.MIN_VALUE;
                return a.this.a(this);
            }
        }

        @DebugMetadata(c = "com.appodeal.ads.ProtoRequest$Stats", f = "ProtoRequest.kt", i = {0, 0}, l = {79}, m = "createAppProto", n = {"appBuilder", "packageInfo"}, s = {"L$0", "L$1"})
        /* loaded from: classes.dex */
        public static final class b extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            public App.Builder f7980a;

            /* renamed from: b  reason: collision with root package name */
            public PackageInfo f7981b;

            /* renamed from: c  reason: collision with root package name */
            public /* synthetic */ Object f7982c;

            /* renamed from: e  reason: collision with root package name */
            public int f7984e;

            public b(Continuation<? super b> continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.f7982c = obj;
                this.f7984e |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        public /* synthetic */ a(Context context, u uVar, r rVar, l lVar, List list) {
            this(context, uVar, rVar, lVar, list, com.appodeal.ads.storage.o.f7663b);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, u adController, r adRequest, l lVar, List servicesDataList, com.appodeal.ads.storage.a keyValueStorage) {
            super(0);
            j4 restrictedData = j4.f6751a;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(restrictedData, "restrictedData");
            Intrinsics.checkNotNullParameter(adController, "adController");
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(servicesDataList, "servicesDataList");
            Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
            this.f7967c = context;
            this.f7968d = restrictedData;
            this.f7969e = adController;
            this.f7970f = adRequest;
            this.f7971g = lVar;
            this.f7972h = servicesDataList;
            this.i = keyValueStorage;
            r0 r0Var = r0.f7341a;
            this.j = r0.b() ? Constants.POST_BID : Constants.STATS;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0081  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(android.content.Context r10, kotlin.coroutines.Continuation<? super com.appodeal.ads.api.App> r11) {
            /*
                r9 = this;
                boolean r0 = r11 instanceof com.appodeal.ads.y2.a.b
                if (r0 == 0) goto L13
                r0 = r11
                com.appodeal.ads.y2$a$b r0 = (com.appodeal.ads.y2.a.b) r0
                int r1 = r0.f7984e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f7984e = r1
                goto L18
            L13:
                com.appodeal.ads.y2$a$b r0 = new com.appodeal.ads.y2$a$b
                r0.<init>(r11)
            L18:
                java.lang.Object r11 = r0.f7982c
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f7984e
                r3 = 1
                if (r2 == 0) goto L35
                if (r2 != r3) goto L2d
                android.content.pm.PackageInfo r10 = r0.f7981b
                com.appodeal.ads.api.App$Builder r0 = r0.f7980a
                kotlin.ResultKt.throwOnFailure(r11)
                goto L7c
            L2d:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r11)
                throw r10
            L35:
                kotlin.ResultKt.throwOnFailure(r11)
                com.appodeal.ads.api.App$Builder r11 = com.appodeal.ads.api.App.newBuilder()
                java.lang.String r2 = r10.getPackageName()
                if (r2 != 0) goto L43
                goto L46
            L43:
                r11.setBundle(r2)
            L46:
                android.content.pm.PackageManager r10 = r10.getPackageManager()
                r4 = 0
                android.content.pm.PackageInfo r4 = r10.getPackageInfo(r2, r4)
                java.lang.String r5 = r4.versionName
                if (r5 != 0) goto L54
                goto L57
            L54:
                r11.setVer(r5)
            L57:
                long r5 = r4.firstInstallTime
                r7 = 1000(0x3e8, float:1.401E-42)
                long r7 = (long) r7
                long r5 = r5 / r7
                r11.setInstallTime(r5)
                java.lang.String r10 = r10.getInstallerPackageName(r2)
                if (r10 != 0) goto L67
                goto L6a
            L67:
                r11.setInstaller(r10)
            L6a:
                com.appodeal.ads.storage.a r10 = r9.i
                r0.f7980a = r11
                r0.f7981b = r4
                r0.f7984e = r3
                java.lang.Object r10 = r10.a(r0)
                if (r10 != r1) goto L79
                return r1
            L79:
                r0 = r11
                r11 = r10
                r10 = r4
            L7c:
                java.lang.String r11 = (java.lang.String) r11
                if (r11 != 0) goto L81
                goto L84
            L81:
                r0.setAppKey(r11)
            L84:
                java.lang.String r11 = com.appodeal.ads.modules.common.internal.Constants.SDK_VERSION
                r0.setSdk(r11)
                int r10 = r10.versionCode
                r0.setVersionCode(r10)
                com.appodeal.ads.utils.x r10 = com.appodeal.ads.q4.m()
                long r10 = r10.e()
                r0.setAppUptime(r10)
                com.appodeal.ads.utils.x r10 = com.appodeal.ads.q4.m()
                long r10 = r10.f()
                r0.setMonotonicAppUptime(r10)
                java.lang.String r10 = com.appodeal.ads.q4.h()
                if (r10 != 0) goto Lab
                goto Lae
            Lab:
                r0.setFramework(r10)
            Lae:
                java.lang.String r10 = com.appodeal.ads.q4.g()
                if (r10 != 0) goto Lb5
                goto Lb8
            Lb5:
                r0.setFrameworkVersion(r10)
            Lb8:
                java.lang.String r10 = com.appodeal.ads.q4.j()
                if (r10 != 0) goto Lbf
                goto Lc2
            Lbf:
                r0.setPluginVersion(r10)
            Lc2:
                com.appodeal.ads.api.App r10 = r0.build()
                java.lang.String r11 = "appBuilder.build()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r11)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.y2.a.a(android.content.Context, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0397  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0412  */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x041f  */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0447  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x044d  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x045f  */
        /* JADX WARN: Removed duplicated region for block: B:127:0x04a3 A[LOOP:0: B:125:0x049d->B:127:0x04a3, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:131:0x04e5  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x05e8  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x05f1  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00a4  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0267  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x026a  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x029b  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x02a6  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x02ea  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x0300  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0311  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x036a  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0386  */
        @Override // com.appodeal.ads.y2
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(kotlin.coroutines.Continuation<? super com.appodeal.ads.api.Request.Builder> r15) {
            /*
                Method dump skipped, instructions count: 1529
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.y2.a.a(kotlin.coroutines.Continuation):java.lang.Object");
        }

        @Override // com.appodeal.ads.y2
        public final String d() {
            return this.j;
        }
    }

    public y2() {
        this.f7965a = HttpClient.Method.POST;
        this.f7966b = HttpClient.Proto.INSTANCE;
    }

    public /* synthetic */ y2(int i) {
        this();
    }

    public static String a() {
        return AppodealEndpoints.INSTANCE.getActiveEndpoint();
    }

    public abstract Object a(Continuation<? super Request.Builder> continuation);

    public final HttpClient.Proto b() {
        return this.f7966b;
    }

    public final HttpClient.Method c() {
        return this.f7965a;
    }

    public abstract String d();
}
