package com.appodeal.ads;

import android.animation.Animator;
import android.view.View;
import com.appodeal.ads.utils.Log;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class v5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ u f7869a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ x5 f7870b;

    public v5(x5 x5Var, a6 a6Var) {
        this.f7870b = x5Var;
        this.f7869a = a6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AdObjectType adobjecttype;
        UnifiedAdType unifiedadtype;
        try {
            x5 x5Var = this.f7870b;
            View view = x5Var.f7940c;
            if (view == null) {
                Log.debug(x5Var.f7938a, "UnRender", "skip: no current ad view");
                return;
            }
            x5<AdRequestType, AdObjectType>.c cVar = x5Var.i;
            if (cVar != null) {
                x5.m.removeCallbacks(cVar);
                this.f7870b.i = null;
            }
            z5 z5Var = (z5) this.f7869a.y;
            if (z5Var != null && (adobjecttype = z5Var.s) != 0 && (unifiedadtype = ((r5) adobjecttype).f6829f) != 0) {
                unifiedadtype.onHide();
            }
            view.setVisibility(8);
            WeakReference<Animator> weakReference = this.f7870b.f7945h;
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().cancel();
            }
            this.f7870b.getClass();
            x5.a(view, true, true);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }
}
