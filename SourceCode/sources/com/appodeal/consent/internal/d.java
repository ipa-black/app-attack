package com.appodeal.consent.internal;

import android.app.Activity;
import android.content.Context;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentManager;
import com.appodeal.consent.ConsentManagerError;
import com.appodeal.consent.view.ConsentActivity;
import com.appodeal.consent.view.b;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class d implements b.c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f8091a;

    /* renamed from: b  reason: collision with root package name */
    public final a f8092b;

    /* renamed from: c  reason: collision with root package name */
    public int f8093c;

    /* renamed from: d  reason: collision with root package name */
    public final CoroutineScope f8094d;

    /* renamed from: e  reason: collision with root package name */
    public final Lazy f8095e;

    /* renamed from: f  reason: collision with root package name */
    public Activity f8096f;

    /* loaded from: classes2.dex */
    public interface a {
        void onClosed();

        void onError(ConsentManagerError consentManagerError);

        void onLoaded();

        void onOpened();
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalForm$handleClose$1", f = "InternalForm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ JSONObject f8098b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(JSONObject jSONObject, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f8098b = jSONObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f8098b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            d.this.f8093c = 1;
            Function1<? super Activity, Unit> function1 = ConsentActivity.f8139b;
            ConsentActivity.a.b();
            Activity activity = d.this.f8096f;
            if (activity != null) {
                activity.finish();
            }
            d.this.f8096f = null;
            Lazy lazy = com.appodeal.consent.internal.g.f8123a;
            com.appodeal.consent.internal.g.a(false);
            JSONObject jSONObject = this.f8098b;
            com.appodeal.consent.internal.g.a(jSONObject == null ? r0.copy((r24 & 1) != 0 ? r0.f8037a : Consent.Status.NON_PERSONALIZED, (r24 & 2) != 0 ? r0.f8038b : null, (r24 & 4) != 0 ? r0.f8039c : 0, (r24 & 8) != 0 ? r0.f8040d : null, (r24 & 16) != 0 ? r0.f8041e : 0L, (r24 & 32) != 0 ? r0.f8042f : 0L, (r24 & 64) != 0 ? r0.f8043g : null, (r24 & 128) != 0 ? r0.f8044h : null, (r24 & 256) != 0 ? com.appodeal.consent.internal.g.b().i : null) : new Consent(jSONObject));
            Consent b2 = com.appodeal.consent.internal.g.b();
            Context applicationContext = d.this.b().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            com.appodeal.consent.internal.b.a(b2, applicationContext);
            Consent b3 = com.appodeal.consent.internal.g.b();
            Context applicationContext2 = d.this.b().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "context.applicationContext");
            com.appodeal.consent.internal.b.b(b3, applicationContext2);
            d.this.c().onClosed();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalForm$handleError$1", f = "InternalForm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f8099a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ d f8100b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, d dVar, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f8099a = str;
            this.f8100b = dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new c(this.f8099a, this.f8100b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            String str = this.f8099a;
            if (str != null) {
                this.f8100b.c().onError(new ConsentManagerError.ShowingError(str));
            }
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalForm$handleLoaded$1", f = "InternalForm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.appodeal.consent.internal.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0155d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public C0155d(Continuation<? super C0155d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C0155d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C0155d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            d.this.f8093c = 3;
            d.this.c().onLoaded();
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalForm$load$1", f = "InternalForm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            d dVar;
            String str;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            if (!d.this.e()) {
                if (d.this.d()) {
                    d.this.a();
                } else if (com.appodeal.consent.view.d.a(d.b(d.this))) {
                    dVar = d.this;
                    str = "Consent url is not valid.";
                } else {
                    d.this.f8093c = 2;
                    d.d(d.this).a();
                    d.d(d.this).loadUrl(d.b(d.this));
                }
                return Unit.INSTANCE;
            }
            dVar = d.this;
            str = "Cannot simultaneously load multiple consent forms.";
            dVar.a(str);
            return Unit.INSTANCE;
        }
    }

    @DebugMetadata(c = "com.appodeal.consent.internal.InternalForm$show$1", f = "InternalForm.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* loaded from: classes2.dex */
        public static final class a extends Lambda implements Function1<Activity, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ d f8104a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar) {
                super(1);
                this.f8104a = dVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Unit invoke(Activity activity) {
                Activity it = activity;
                Intrinsics.checkNotNullParameter(it, "it");
                this.f8104a.f8096f = it;
                BuildersKt.launch$default(this.f8104a.f8094d, null, null, new com.appodeal.consent.internal.e(this.f8104a, null), 3, null);
                return Unit.INSTANCE;
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends Lambda implements Function1<Activity, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ d f8105a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(d dVar) {
                super(1);
                this.f8105a = dVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Unit invoke(Activity activity) {
                Activity it = activity;
                Intrinsics.checkNotNullParameter(it, "it");
                d.d(this.f8105a).getCloseButton().callOnClick();
                return Unit.INSTANCE;
            }
        }

        public f(Continuation<? super f> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new f(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            d dVar;
            String str;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            boolean f2 = d.this.f();
            Function1<? super Activity, Unit> function1 = ConsentActivity.f8139b;
            if (f2 || ConsentActivity.a.a()) {
                dVar = d.this;
                str = "Consent form is already displayed.";
            } else if (d.this.d()) {
                d.this.f8093c = 4;
                ConsentActivity.a.a(new a(d.this));
                ConsentActivity.a.a(new b(d.this));
                ConsentActivity.a.a(d.d(d.this));
                return Unit.INSTANCE;
            } else {
                dVar = d.this;
                str = "Consent form is not ready to be displayed.";
            }
            dVar.a(str);
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public static final class g extends Lambda implements Function0<com.appodeal.consent.view.b> {
        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.consent.view.b invoke() {
            d dVar = d.this;
            return new com.appodeal.consent.view.b(dVar.f8091a, dVar, com.appodeal.consent.internal.g.f8125c, ConsentManager.getConsent(), ConsentManager.getCustomVendors());
        }
    }

    public d(Context context, a listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f8091a = context;
        this.f8092b = listener;
        this.f8093c = 1;
        this.f8094d = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
        this.f8095e = LazyKt.lazy(new g());
    }

    public static final String b(d dVar) {
        dVar.getClass();
        return com.appodeal.consent.internal.g.f8125c;
    }

    public static final com.appodeal.consent.view.b d(d dVar) {
        return (com.appodeal.consent.view.b) dVar.f8095e.getValue();
    }

    @Override // com.appodeal.consent.view.b.c
    public final void a() {
        BuildersKt.launch$default(this.f8094d, null, null, new C0155d(null), 3, null);
    }

    @Override // com.appodeal.consent.view.b.c
    public final void a(String str) {
        BuildersKt.launch$default(this.f8094d, null, null, new c(str, this, null), 3, null);
    }

    @Override // com.appodeal.consent.view.b.c
    public final void a(JSONObject jSONObject) {
        BuildersKt.launch$default(this.f8094d, null, null, new b(jSONObject, null), 3, null);
    }

    public final Context b() {
        return this.f8091a;
    }

    public final a c() {
        return this.f8092b;
    }

    public final boolean d() {
        return this.f8093c == 3;
    }

    public final boolean e() {
        return this.f8093c == 2;
    }

    public final boolean f() {
        return this.f8093c == 4;
    }

    public final void g() {
        BuildersKt.launch$default(this.f8094d, null, null, new e(null), 3, null);
    }

    public final void h() {
        BuildersKt.launch$default(this.f8094d, null, null, new f(null), 3, null);
    }
}
