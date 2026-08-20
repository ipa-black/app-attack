package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.modules.common.internal.service.ServicesRegistry;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class g4 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f6686a;

    /* renamed from: b  reason: collision with root package name */
    public final com.appodeal.ads.storage.a f6687b;

    /* renamed from: c  reason: collision with root package name */
    public final com.appodeal.ads.services.c f6688c;

    /* renamed from: d  reason: collision with root package name */
    public final ServicesRegistry f6689d;

    /* loaded from: classes.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[com.appodeal.ads.networking.binders.c.values().length];
            Set<com.appodeal.ads.networking.binders.c> set = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[0] = 1;
            Set<com.appodeal.ads.networking.binders.c> set2 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[1] = 2;
            Set<com.appodeal.ads.networking.binders.c> set3 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[2] = 3;
            Set<com.appodeal.ads.networking.binders.c> set4 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[3] = 4;
            Set<com.appodeal.ads.networking.binders.c> set5 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[4] = 5;
            Set<com.appodeal.ads.networking.binders.c> set6 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[5] = 6;
            Set<com.appodeal.ads.networking.binders.c> set7 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[6] = 7;
            Set<com.appodeal.ads.networking.binders.c> set8 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[7] = 8;
            Set<com.appodeal.ads.networking.binders.c> set9 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[8] = 9;
            Set<com.appodeal.ads.networking.binders.c> set10 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[9] = 10;
            Set<com.appodeal.ads.networking.binders.c> set11 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[10] = 11;
            Set<com.appodeal.ads.networking.binders.c> set12 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[11] = 12;
            Set<com.appodeal.ads.networking.binders.c> set13 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[12] = 13;
            Set<com.appodeal.ads.networking.binders.c> set14 = com.appodeal.ads.networking.binders.c.f7212a;
            iArr[13] = 14;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[AdType.values().length];
            iArr2[AdType.Banner.ordinal()] = 1;
            iArr2[AdType.Mrec.ordinal()] = 2;
            iArr2[AdType.Interstitial.ordinal()] = 3;
            iArr2[AdType.Video.ordinal()] = 4;
            iArr2[AdType.Rewarded.ordinal()] = 5;
            iArr2[AdType.Native.ordinal()] = 6;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.RequestDataProvider", f = "RequestDataProvider.kt", i = {0}, l = {TsExtractor.TS_STREAM_TYPE_HDMV_DTS}, m = "getBase", n = {"context"}, s = {"L$0"})
    /* loaded from: classes.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public Context f6690a;

        /* renamed from: b  reason: collision with root package name */
        public /* synthetic */ Object f6691b;

        /* renamed from: d  reason: collision with root package name */
        public int f6693d;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6691b = obj;
            this.f6693d |= Integer.MIN_VALUE;
            return g4.this.a(null, this);
        }
    }

    @DebugMetadata(c = "com.appodeal.ads.RequestDataProvider", f = "RequestDataProvider.kt", i = {}, l = {123}, m = "getBinderData", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f6694a;

        /* renamed from: c  reason: collision with root package name */
        public int f6696c;

        public c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f6694a = obj;
            this.f6696c |= Integer.MIN_VALUE;
            return g4.this.a(null, null, null, null, this);
        }
    }

    public g4(Context context, com.appodeal.ads.storage.o keyValueStorage, com.appodeal.ads.services.c servicesSolution, ServicesRegistry servicesRegistry) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        Intrinsics.checkNotNullParameter(servicesSolution, "servicesSolution");
        Intrinsics.checkNotNullParameter(servicesRegistry, "servicesRegistry");
        this.f6686a = context;
        this.f6687b = keyValueStorage;
        this.f6688c = servicesSolution;
        this.f6689d = servicesRegistry;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.content.Context r51, kotlin.coroutines.Continuation<? super com.appodeal.ads.networking.binders.b.e> r52) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.g4.a(android.content.Context, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.appodeal.ads.networking.binders.c r30, com.appodeal.ads.r<?> r31, com.appodeal.ads.s<?> r32, com.appodeal.ads.u<?, ?, ?> r33, kotlin.coroutines.Continuation<? super com.appodeal.ads.networking.binders.b> r34) {
        /*
            Method dump skipped, instructions count: 1074
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.g4.a(com.appodeal.ads.networking.binders.c, com.appodeal.ads.r, com.appodeal.ads.s, com.appodeal.ads.u, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
