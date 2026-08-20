package com.appodeal.ads;

import android.content.Context;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class v1 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f7863a;

    public v1(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f7863a = context;
    }

    public final void a(JSONObject jSONObject) {
        if (com.appodeal.ads.segments.j.b().b(jSONObject)) {
            Context context = this.f7863a;
            Lazy lazy = com.appodeal.ads.segments.n.f7535a;
            com.appodeal.ads.segments.n.a(context, com.appodeal.ads.segments.o.f7543a);
        }
    }
}
