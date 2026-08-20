package com.applovin.impl.adview.activity.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.m;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.n;
/* loaded from: classes.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    final n f4280a;

    /* renamed from: b  reason: collision with root package name */
    final Activity f4281b;

    /* renamed from: c  reason: collision with root package name */
    final e f4282c;

    /* renamed from: d  reason: collision with root package name */
    final ViewGroup f4283d;

    /* renamed from: e  reason: collision with root package name */
    final FrameLayout.LayoutParams f4284e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(e eVar, Activity activity, n nVar) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        this.f4284e = layoutParams;
        this.f4282c = eVar;
        this.f4280a = nVar;
        this.f4281b = activity;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.f4283d = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout.setLayoutParams(layoutParams);
    }

    public void a(View view) {
        this.f4283d.removeView(view);
    }

    public void a(m mVar) {
        if (mVar == null || mVar.getParent() != null) {
            return;
        }
        a(this.f4282c.X(), (this.f4282c.ab() ? 3 : 5) | 48, mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(e.c cVar, int i, m mVar) {
        mVar.a(cVar.f5531a, cVar.f5535e, cVar.f5534d, i);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(mVar.getLayoutParams());
        layoutParams.setMargins(cVar.f5533c, cVar.f5532b, cVar.f5533c, 0);
        layoutParams.gravity = i;
        this.f4283d.addView(mVar, layoutParams);
    }
}
