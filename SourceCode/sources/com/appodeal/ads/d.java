package com.appodeal.ads;

import android.app.Activity;
import android.os.Handler;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
/* loaded from: classes.dex */
public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineScope f6605a;

    /* renamed from: b  reason: collision with root package name */
    public final ContextProvider f6606b;

    /* renamed from: c  reason: collision with root package name */
    public long f6607c;

    /* renamed from: d  reason: collision with root package name */
    public long f6608d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f6609e;

    /* renamed from: f  reason: collision with root package name */
    public Job f6610f;

    @DebugMetadata(c = "com.appodeal.ads.AdLifecycleTrackerImpl$init$1", f = "AdLifecycleTracker.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<Activity, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public /* synthetic */ Object f6611a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.f6611a = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Activity activity, Continuation<? super Unit> continuation) {
            return ((a) create(activity, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            if (((Activity) this.f6611a) != null) {
                d.f(d.this);
            } else {
                d.e(d.this);
            }
            return Unit.INSTANCE;
        }
    }

    public d(CoroutineScope scope, com.appodeal.ads.context.b contextProvider) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        this.f6605a = scope;
        this.f6606b = contextProvider;
        this.f6609e = new AtomicBoolean(false);
    }

    public static List b() {
        List<u> listOf = CollectionsKt.listOf((Object[]) new u[]{t0.a(), h2.a(), o1.a(), w2.a(), o4.a()});
        ArrayList arrayList = new ArrayList();
        for (u uVar : listOf) {
            r f2 = uVar.f();
            l lVar = null;
            if (f2 != null) {
                if (!(!f2.r())) {
                    f2 = null;
                }
                if (f2 != null) {
                    lVar = f2.h();
                }
            }
            if (lVar != null) {
                arrayList.add(lVar);
            }
        }
        HashSet a2 = Native.c().a();
        Intrinsics.checkNotNullExpressionValue(a2, "getNativeAdBox().adObjects");
        return CollectionsKt.plus((Collection) arrayList, (Iterable) a2);
    }

    public static final void e(d dVar) {
        Job launch$default;
        Job job = dVar.f6610f;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        launch$default = BuildersKt__Builders_commonKt.launch$default(dVar.f6605a, Dispatchers.getDefault(), null, new e(dVar, null), 2, null);
        dVar.f6610f = launch$default;
    }

    public static final void f(d dVar) {
        dVar.getClass();
        dVar.f6608d = System.currentTimeMillis();
        if (dVar.f6609e.getAndSet(false)) {
            for (l lVar : b()) {
                com.appodeal.ads.utils.o.a(lVar);
            }
            q4.f7303a.getClass();
            for (u uVar : q4.d()) {
                uVar.j();
            }
            BuildersKt__Builders_commonKt.launch$default(dVar.f6605a, null, null, new f(dVar, null), 3, null);
        }
    }

    public static final void g(d dVar) {
        dVar.getClass();
        for (l lVar : b()) {
            if (lVar != null) {
                Runnable runnable = (Runnable) com.appodeal.ads.utils.o.f7806b.get(lVar);
                if (runnable != null) {
                    com.appodeal.ads.utils.o.f7805a.removeCallbacks(runnable);
                }
            } else {
                Handler handler = com.appodeal.ads.utils.o.f7805a;
            }
        }
    }

    @Override // com.appodeal.ads.b
    public final void a() {
        FlowKt.launchIn(FlowKt.onEach(this.f6606b.getTopActivityFlow(), new a(null)), this.f6605a);
    }
}
