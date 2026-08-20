package com.appodeal.consent.internal;

import android.content.Context;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentManagerError;
import com.appodeal.consent.IConsentInfoUpdateListener;
import kotlin.Lazy;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
@DebugMetadata(c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1", f = "InternalManager.kt", i = {1, 2}, l = {41, 51, 58, 62, 74, 79, 87}, m = "invokeSuspend", n = {"appContext", "appContext"}, s = {"L$0", "L$0"})
/* loaded from: classes2.dex */
public final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    public Object f8108a;

    /* renamed from: b  reason: collision with root package name */
    public Object f8109b;

    /* renamed from: c  reason: collision with root package name */
    public String f8110c;

    /* renamed from: d  reason: collision with root package name */
    public Consent f8111d;

    /* renamed from: e  reason: collision with root package name */
    public int f8112e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f8113f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Context f8114g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Consent f8115h;
    public final /* synthetic */ IConsentInfoUpdateListener i;

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1$1", f = "InternalManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IConsentInfoUpdateListener f8116a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(IConsentInfoUpdateListener iConsentInfoUpdateListener, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f8116a = iConsentInfoUpdateListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f8116a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            this.f8116a.onFailedToUpdateConsentInfo(new ConsentManagerError.LoadingError("Appodeal APP KEY is empty"));
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1$2$1", f = "InternalManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IConsentInfoUpdateListener f8117a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(IConsentInfoUpdateListener iConsentInfoUpdateListener, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f8117a = iConsentInfoUpdateListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f8117a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            this.f8117a.onFailedToUpdateConsentInfo(new ConsentManagerError.LoadingError("response is error"));
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1$2$3", f = "InternalManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IConsentInfoUpdateListener f8118a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(IConsentInfoUpdateListener iConsentInfoUpdateListener, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f8118a = iConsentInfoUpdateListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new c(this.f8118a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            IConsentInfoUpdateListener iConsentInfoUpdateListener = this.f8118a;
            Lazy lazy = g.f8123a;
            iConsentInfoUpdateListener.onConsentInfoUpdated(g.b());
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1$2$4", f = "InternalManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IConsentInfoUpdateListener f8119a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Throwable f8120b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(IConsentInfoUpdateListener iConsentInfoUpdateListener, Throwable th, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f8119a = iConsentInfoUpdateListener;
            this.f8120b = th;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new d(this.f8119a, this.f8120b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            IConsentInfoUpdateListener iConsentInfoUpdateListener = this.f8119a;
            String message = this.f8120b.getMessage();
            if (message == null) {
                message = "";
            }
            iConsentInfoUpdateListener.onFailedToUpdateConsentInfo(new ConsentManagerError.LoadingError(message));
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalManager$requestConsentInfoUpdate$1$3$1", f = "InternalManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ IConsentInfoUpdateListener f8121a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ Throwable f8122b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(IConsentInfoUpdateListener iConsentInfoUpdateListener, Throwable th, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f8121a = iConsentInfoUpdateListener;
            this.f8122b = th;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new e(this.f8121a, this.f8122b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            IConsentInfoUpdateListener iConsentInfoUpdateListener = this.f8121a;
            String message = this.f8122b.getMessage();
            if (message == null) {
                message = "";
            }
            iConsentInfoUpdateListener.onFailedToUpdateConsentInfo(new ConsentManagerError.LoadingError(message));
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(String str, Context context, Consent consent, IConsentInfoUpdateListener iConsentInfoUpdateListener, Continuation<? super f> continuation) {
        super(2, continuation);
        this.f8113f = str;
        this.f8114g = context;
        this.f8115h = consent;
        this.i = iConsentInfoUpdateListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new f(this.f8113f, this.f8114g, this.f8115h, this.i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0176 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0180  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.consent.internal.f.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
