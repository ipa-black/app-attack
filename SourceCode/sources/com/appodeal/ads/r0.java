package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.Version;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: b  reason: collision with root package name */
    public static boolean f7342b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f7343c;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f7345e;
    public static String j;
    public static Boolean k;
    public static boolean l;

    /* renamed from: a  reason: collision with root package name */
    public static final r0 f7341a = new r0();

    /* renamed from: d  reason: collision with root package name */
    public static Log.LogLevel f7344d = Log.LogLevel.none;

    /* renamed from: f  reason: collision with root package name */
    public static int f7346f = -1;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f7347g = true;

    /* renamed from: h  reason: collision with root package name */
    public static int f7348h = -90;
    public static int i = 90;
    public static boolean m = true;
    public static Set<String> n = new HashSet();
    public static final com.appodeal.ads.storage.o o = com.appodeal.ads.storage.o.f7663b;

    @DebugMetadata(c = "com.appodeal.ads.AppodealSettings", f = "AppodealSettings.kt", i = {}, l = {146}, m = "getUrlList", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7349a;

        /* renamed from: c  reason: collision with root package name */
        public int f7351c;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7349a = obj;
            this.f7351c |= Integer.MIN_VALUE;
            return r0.this.a(this);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.AppodealSettings", f = "AppodealSettings.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_SPLICE_INFO}, m = "parseUrlList", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7352a;

        /* renamed from: c  reason: collision with root package name */
        public int f7354c;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f7352a = obj;
            this.f7354c |= Integer.MIN_VALUE;
            return r0.this.a((JSONObject) null, this);
        }
    }

    public static String a() {
        return j;
    }

    public static void a(JSONObject jObject) {
        Intrinsics.checkNotNullParameter(jObject, "jObject");
        if (jObject.optBoolean("log")) {
            q4.a(Log.LogLevel.verbose);
        }
    }

    @JvmStatic
    public static final boolean a(long j2, int i2) {
        return System.currentTimeMillis() - j2 > ((long) i2);
    }

    public static void b(JSONObject jObject) {
        Intrinsics.checkNotNullParameter(jObject, "jObject");
        if (jObject.has(Constants.POST_BID)) {
            f7343c = jObject.optBoolean(Constants.POST_BID, false);
        }
    }

    public static boolean b() {
        return f7343c;
    }

    @JvmStatic
    public static final void c(JSONObject jObject) {
        Intrinsics.checkNotNullParameter(jObject, "jObject");
        try {
            if (jObject.has("randomize_offers")) {
                f7347g = jObject.getBoolean("randomize_offers");
            }
            a(jObject);
            if (jObject.has("last_sdk_version") && j == null) {
                String string = jObject.getString("last_sdk_version");
                j = string;
                if (new Version(string).compareTo(new Version(Constants.SDK_VERSION)) == 1) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("your SDK version %s does not match latest SDK version %s!", Arrays.copyOf(new Object[]{Constants.SDK_VERSION, j}, 2));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                    Log.log(LogConstants.KEY_SDK, "Warning", format);
                }
            }
            if (jObject.has("test")) {
                q4.f(jObject.getBoolean("test"));
            }
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    @JvmStatic
    public static final boolean c() {
        Boolean bool = k;
        if (bool == null) {
            boolean d2 = n5.d();
            k = Boolean.valueOf(d2);
            return d2;
        }
        return bool.booleanValue();
    }

    @JvmStatic
    public static final void d() {
        o1.a().o = 0L;
        w2.a().o = 0L;
        o4.a().o = 0L;
        t0.a().o = 0L;
        h2.a().o = 0L;
        Native.a().o = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super java.util.Set<java.lang.String>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.appodeal.ads.r0.a
            if (r0 == 0) goto L13
            r0 = r5
            com.appodeal.ads.r0$a r0 = (com.appodeal.ads.r0.a) r0
            int r1 = r0.f7351c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7351c = r1
            goto L18
        L13:
            com.appodeal.ads.r0$a r0 = new com.appodeal.ads.r0$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f7349a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7351c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L47
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            java.util.Set<java.lang.String> r5 = com.appodeal.ads.r0.n
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L4b
            com.appodeal.ads.storage.o r5 = com.appodeal.ads.r0.o
            r0.f7351c = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            java.util.Set r5 = (java.util.Set) r5
            com.appodeal.ads.r0.n = r5
        L4b:
            java.util.Set<java.lang.String> r5 = com.appodeal.ads.r0.n
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.r0.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(2:3|(6:5|6|7|(1:(1:10)(2:14|15))(6:16|17|(3:28|(3:30|(2:37|38)|36)|40)|20|(1:22)(1:25)|(1:24))|11|12))|43|6|7|(0)(0)|11|12) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007e, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007f, code lost:
        com.appodeal.ads.utils.Log.log(r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(org.json.JSONObject r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.appodeal.ads.r0.b
            if (r0 == 0) goto L13
            r0 = r9
            com.appodeal.ads.r0$b r0 = (com.appodeal.ads.r0.b) r0
            int r1 = r0.f7354c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7354c = r1
            goto L18
        L13:
            com.appodeal.ads.r0$b r0 = new com.appodeal.ads.r0$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f7352a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f7354c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Exception -> L7e
            goto L82
        L29:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            java.lang.String r2 = "url_list"
            org.json.JSONArray r8 = r8.optJSONArray(r2)     // Catch: java.lang.Exception -> L7e
            if (r8 != 0) goto L42
            goto L68
        L42:
            int r2 = r8.length()     // Catch: java.lang.Exception -> L7e
            if (r2 <= 0) goto L68
            int r2 = r8.length()     // Catch: java.lang.Exception -> L7e
            r4 = 0
        L4d:
            if (r4 >= r2) goto L68
            int r5 = r4 + 1
            java.lang.String r4 = r8.getString(r4)     // Catch: java.lang.Exception -> L7e
            if (r4 == 0) goto L66
            boolean r6 = kotlin.text.StringsKt.isBlank(r4)     // Catch: java.lang.Exception -> L7e
            if (r6 == 0) goto L5e
            goto L66
        L5e:
            java.lang.String r6 = "url"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r6)     // Catch: java.lang.Exception -> L7e
            r9.add(r4)     // Catch: java.lang.Exception -> L7e
        L66:
            r4 = r5
            goto L4d
        L68:
            com.appodeal.ads.r0.n = r9     // Catch: java.lang.Exception -> L7e
            r0.f7354c = r3     // Catch: java.lang.Exception -> L7e
            com.appodeal.ads.storage.o r8 = com.appodeal.ads.r0.o     // Catch: java.lang.Exception -> L7e
            java.lang.Object r8 = r8.a(r9, r0)     // Catch: java.lang.Exception -> L7e
            java.lang.Object r9 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Exception -> L7e
            if (r8 != r9) goto L79
            goto L7b
        L79:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Exception -> L7e
        L7b:
            if (r8 != r1) goto L82
            return r1
        L7e:
            r8 = move-exception
            com.appodeal.ads.utils.Log.log(r8)
        L82:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.r0.a(org.json.JSONObject, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
