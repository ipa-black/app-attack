package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.utils.Log;
import java.util.TreeMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class t1 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f7675a;

    @DebugMetadata(c = "com.appodeal.ads.JsonRequestCallbacks$BaseRequestCallback$onSuccess$1", f = "JsonRequestCallbacks.kt", i = {}, l = {35}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes.dex */
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        public int f7676a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ JSONObject f7677b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(JSONObject jSONObject, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f7677b = jSONObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new a(this.f7677b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f7676a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                r0 r0Var = r0.f7341a;
                JSONObject jSONObject = this.f7677b;
                this.f7676a = 1;
                if (r0Var.a(jSONObject, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public t1(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f7675a = context;
    }

    public final void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (jSONObject.optBoolean("session_drop_store")) {
            q4.m().b();
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new a(jSONObject, null), 3, null);
        i0.a(this.f7675a, jSONObject);
        JSONObject optJSONObject = jSONObject.optJSONObject("user_data");
        l5.a(optJSONObject);
        com.appodeal.ads.segments.j.b().b(optJSONObject);
        if (jSONObject.has("active_segment")) {
            com.appodeal.ads.segments.n.a(this.f7675a, jSONObject.optJSONObject("active_segment"));
        } else if (jSONObject.has("segments")) {
            com.appodeal.ads.segments.n.a(this.f7675a, jSONObject.optJSONArray("segments"));
        }
        try {
            if (jSONObject.has("placements")) {
                TreeMap<String, com.appodeal.ads.segments.g> treeMap = com.appodeal.ads.segments.h.f7512a;
                com.appodeal.ads.segments.h.a(jSONObject.optJSONArray("placements"));
                com.appodeal.ads.segments.h.d();
            }
        } catch (Throwable th) {
            Log.log(th);
        }
    }
}
