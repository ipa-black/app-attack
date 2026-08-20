package com.appodeal.ads.services;

import androidx.core.app.NotificationCompat;
import com.appodeal.ads.inapp.InAppPurchase;
import com.appodeal.ads.inapp.InAppPurchaseValidateCallback;
import com.appodeal.ads.modules.common.internal.service.Purchasable;
import com.appodeal.ads.modules.common.internal.service.Service;
import com.appodeal.ads.modules.common.internal.service.ServiceOptions;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl$validatePurchase$2", f = "ServicesSolutionImpl.kt", i = {1, 1, 1}, l = {48, 57}, m = "invokeSuspend", n = {"services", "destination$iv$iv", NotificationCompat.CATEGORY_SERVICE}, s = {"L$0", "L$2", "L$4"})
/* loaded from: classes2.dex */
public final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public List f7570a;

    /* renamed from: b  reason: collision with root package name */
    public InAppPurchase f7571b;

    /* renamed from: c  reason: collision with root package name */
    public Collection f7572c;

    /* renamed from: d  reason: collision with root package name */
    public Iterator f7573d;

    /* renamed from: e  reason: collision with root package name */
    public Purchasable f7574e;

    /* renamed from: f  reason: collision with root package name */
    public int f7575f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ d f7576g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ InAppPurchaseValidateCallback f7577h;
    public final /* synthetic */ InAppPurchase i;
    public final /* synthetic */ Function0<Unit> j;

    @DebugMetadata(c = "com.appodeal.ads.services.ServicesSolutionImpl$validatePurchase$2$services$1", f = "ServicesSolutionImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function2<Set<? extends Service<? extends ServiceOptions>>, Continuation<? super Boolean>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f7578a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.f7578a = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Set<? extends Service<? extends ServiceOptions>> set, Continuation<? super Boolean> continuation) {
            return ((a) create(set, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(!((Set) this.f7578a).isEmpty());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(d dVar, InAppPurchaseValidateCallback inAppPurchaseValidateCallback, InAppPurchase inAppPurchase, Function0<Unit> function0, Continuation<? super f> continuation) {
        super(2, continuation);
        this.f7576g = dVar;
        this.f7577h = inAppPurchaseValidateCallback;
        this.i = inAppPurchase;
        this.j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new f(this.f7576g, this.f7577h, this.i, this.j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0151  */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.Collection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0091 -> B:26:0x0094). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.services.f.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
