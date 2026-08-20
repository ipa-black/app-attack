package com.appodeal.ads.segments;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.r0;
import com.appodeal.ads.segments.j;
import com.appodeal.ads.u;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f7535a = LazyKt.lazy(b.f7541a);

    /* renamed from: b  reason: collision with root package name */
    public static final k f7536b;

    /* renamed from: c  reason: collision with root package name */
    public static final LinkedHashSet f7537c;

    /* renamed from: d  reason: collision with root package name */
    public static final CopyOnWriteArrayList f7538d;

    /* renamed from: e  reason: collision with root package name */
    public static k f7539e;

    /* renamed from: f  reason: collision with root package name */
    public static k f7540f;

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    /* loaded from: classes2.dex */
    public static final class b extends Lambda implements Function0<com.appodeal.ads.context.b> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f7541a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.context.b invoke() {
            return com.appodeal.ads.context.b.f6583b;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f7542a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Unit invoke() {
            return Unit.INSTANCE;
        }
    }

    static {
        k kVar = new k(new JSONObject());
        f7536b = kVar;
        f7537c = new LinkedHashSet();
        f7538d = new CopyOnWriteArrayList();
        f7539e = kVar;
        j.a(new j.a() { // from class: com.appodeal.ads.segments.n$$ExternalSyntheticLambda0
            @Override // com.appodeal.ads.segments.j.a
            public final void a() {
                n.a();
            }
        });
        q.a(c());
    }

    public static final void a() {
        a(((ContextProvider) f7535a.getValue()).getApplicationContextOrNull(), o.f7543a);
    }

    @JvmStatic
    public static final void a(Context context, Function0<Unit> onUpdated) {
        Object obj;
        Intrinsics.checkNotNullParameter(onUpdated, "onUpdated");
        if (f7540f != null) {
            return;
        }
        Iterator it = f7537c.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            k kVar = (k) obj;
            if (j.a(context, kVar.f7530c, kVar.f7531d)) {
                break;
            }
        }
        k kVar2 = (k) obj;
        if (kVar2 == null) {
            kVar2 = f7536b;
        }
        if (kVar2.b() != f7539e.b()) {
            kVar2.a();
            f7539e = kVar2;
            q.a(c());
            onUpdated.invoke();
        }
    }

    @JvmStatic
    public static final void a(Context context, JSONArray jSONArray) {
        if (context == null || jSONArray == null) {
            return;
        }
        f7537c.clear();
        int length = jSONArray.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                f7537c.add(new k(optJSONObject));
            }
            i = i2;
        }
        a(context, c.f7542a);
    }

    @JvmStatic
    public static final void a(u.b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        f7538d.add(listener);
    }

    public static final void b() {
        r0.d();
        Iterator it = f7538d.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }

    public static final k c() {
        k kVar = f7540f;
        return kVar == null ? f7539e : kVar;
    }

    @JvmStatic
    public static final void a(Context context) {
        a(context, o.f7543a);
    }

    public static void a(Context context, JSONObject jSONObject) {
        p onUpdated = p.f7544a;
        Intrinsics.checkNotNullParameter(onUpdated, "onUpdated");
        if (context == null || jSONObject == null) {
            return;
        }
        f7537c.clear();
        k kVar = new k(jSONObject);
        long b2 = kVar.b();
        k kVar2 = f7540f;
        if (!(kVar2 != null && b2 == kVar2.b())) {
            kVar.a();
            f7540f = kVar;
            q.a(c());
            onUpdated.invoke();
        }
    }
}
