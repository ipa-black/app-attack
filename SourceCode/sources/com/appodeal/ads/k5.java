package com.appodeal.ads;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class k5 implements j5 {

    /* renamed from: a  reason: collision with root package name */
    public final Lazy f6821a;

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function0<String> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ s<?> f6823b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(s<?> sVar) {
            super(0);
            this.f6823b = sVar;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.DEBUG_BANNER) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
            if (r1.equals("video") == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.DEBUG_INTERSTITIAL) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.BANNER) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
            r0 = "http://herokuapp.appodeal.com/android_waterfall_banner";
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
            if (r1.equals("native") == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
            r0 = "http://herokuapp.appodeal.com/android_waterfall_native";
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0059, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.DEBUG_NON_REWARDED_VIDEO) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x005c, code lost:
            r0 = "http://herokuapp.appodeal.com/android_waterfall_video";
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
            if (r1.equals("banner") == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0068, code lost:
            r0 = "http://herokuapp.appodeal.com/android_waterfall_interstitial";
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0071, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.DEBUG_MREC) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x007a, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.MREC) == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x007d, code lost:
            r0 = "http://herokuapp.appodeal.com/android_waterfall_mrec";
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
            if (r1.equals(com.appodeal.ads.modules.common.internal.Constants.DEBUG_NATIVE) == false) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0089 A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
        @Override // kotlin.jvm.functions.Function0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String invoke() {
            /*
                r2 = this;
                com.appodeal.ads.k5 r0 = com.appodeal.ads.k5.this
                com.appodeal.ads.s<?> r1 = r2.f6823b
                java.lang.String r1 = r1.a()
                r0.getClass()
                if (r1 == 0) goto L80
                int r0 = r1.hashCode()
                switch(r0) {
                    case -1907025354: goto L74;
                    case -1840422033: goto L6b;
                    case -1396342996: goto L5f;
                    case -1210465393: goto L53;
                    case -1052618729: goto L47;
                    case -1031406050: goto L3b;
                    case 95458899: goto L32;
                    case 112202875: goto L29;
                    case 624073610: goto L20;
                    case 894337923: goto L16;
                    default: goto L14;
                }
            L14:
                goto L80
            L16:
                java.lang.String r0 = "debug_native"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L50
                goto L80
            L20:
                java.lang.String r0 = "debug_banner_320"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L44
                goto L80
            L29:
                java.lang.String r0 = "video"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L5c
                goto L80
            L32:
                java.lang.String r0 = "debug"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L68
                goto L80
            L3b:
                java.lang.String r0 = "banner_320"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L44
                goto L80
            L44:
                java.lang.String r0 = "http://herokuapp.appodeal.com/android_waterfall_banner"
                goto L82
            L47:
                java.lang.String r0 = "native"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L50
                goto L80
            L50:
                java.lang.String r0 = "http://herokuapp.appodeal.com/android_waterfall_native"
                goto L82
            L53:
                java.lang.String r0 = "debug_video"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L5c
                goto L80
            L5c:
                java.lang.String r0 = "http://herokuapp.appodeal.com/android_waterfall_video"
                goto L82
            L5f:
                java.lang.String r0 = "banner"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L68
                goto L80
            L68:
                java.lang.String r0 = "http://herokuapp.appodeal.com/android_waterfall_interstitial"
                goto L82
            L6b:
                java.lang.String r0 = "debug_mrec"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L7d
                goto L80
            L74:
                java.lang.String r0 = "banner_mrec"
                boolean r0 = r1.equals(r0)
                if (r0 != 0) goto L7d
                goto L80
            L7d:
                java.lang.String r0 = "http://herokuapp.appodeal.com/android_waterfall_mrec"
                goto L82
            L80:
                java.lang.String r0 = "http://herokuapp.appodeal.com/android_waterfall_rewarded_video"
            L82:
                com.appodeal.ads.s<?> r1 = r2.f6823b
                boolean r1 = r1.f7446b
                if (r1 == 0) goto L89
                goto L8a
            L89:
                r0 = 0
            L8a:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.k5.a.invoke():java.lang.Object");
        }
    }

    public k5(s<?> adRequestParams) {
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        this.f6821a = LazyKt.lazy(new a(adRequestParams));
    }

    @Override // com.appodeal.ads.j5
    public final String c() {
        return (String) this.f6821a.getValue();
    }
}
