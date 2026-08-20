package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.r5;
import com.appodeal.ads.s;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.app.AppState;
import com.appodeal.ads.x5;
import com.appodeal.ads.z5;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class a6<AdObjectType extends r5<AdRequestType, ?, ?, ?>, AdRequestType extends z5<AdObjectType>, RequestParamsType extends s<RequestParamsType>> extends u<AdObjectType, AdRequestType, RequestParamsType> {
    public a6(b6 b6Var, AdType adType) {
        super(b6Var, adType, com.appodeal.ads.segments.h.b());
    }

    @Override // com.appodeal.ads.u
    public final void a(Activity activity, AppState appState) {
        x5<AdRequestType, AdObjectType> x = x();
        if (appState == AppState.Resumed && this.i && !com.appodeal.ads.utils.c.a(activity)) {
            x5.d a2 = x.a(activity);
            if (a2.f7951b == f0.VISIBLE || a2.f7950a != null) {
                x.a2(activity, new y5(e(), x.b(activity)), (u) this);
            }
        }
        if (appState == AppState.Destroyed) {
            for (Map.Entry entry : x.l.entrySet()) {
                if (((WeakReference) entry.getKey()).get() == activity) {
                    x.l.remove(entry.getKey());
                    Log.debug(x.f7938a, "handleActivityDestroy", activity.toString());
                    return;
                }
            }
        }
    }

    @Override // com.appodeal.ads.u
    public final void b(Context context) {
        b(context, (Context) w());
    }

    @Override // com.appodeal.ads.u
    public final void t() {
        Activity activity = com.appodeal.ads.context.b.f6583b.f6584a.getActivity();
        if (activity == null) {
            return;
        }
        x5<AdRequestType, AdObjectType> x = x();
        a aVar = x.a(activity).f7950a;
        if (aVar != null ? x.a2(activity, new y5(e(), aVar), (u) this) : false) {
            return;
        }
        super.t();
    }

    @Override // com.appodeal.ads.u
    public final boolean u() {
        return this.u && f() == 0;
    }

    public abstract RequestParamsType w();

    public abstract x5<AdRequestType, AdObjectType> x();

    @Override // com.appodeal.ads.u
    public final void a(JSONObject jSONObject) {
        x5<AdRequestType, AdObjectType> x = x();
        x.getClass();
        if (jSONObject.has("refresh_period")) {
            x.f7939b = Integer.valueOf(jSONObject.optInt("refresh_period") * 1000);
        }
    }
}
