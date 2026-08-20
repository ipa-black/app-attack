package com.applovin.impl.adview.activity.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.m;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes.dex */
public class d extends a {
    public d(e eVar, Activity activity, n nVar) {
        super(eVar, activity, nVar);
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void a(View view) {
        super.a(view);
    }

    public void a(ImageView imageView, m mVar, m mVar2, com.applovin.impl.adview.a aVar, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        this.f4283d.addView(appLovinAdView);
        if (mVar != null) {
            a(this.f4282c.X(), (this.f4282c.ac() ? 3 : 5) | 48, mVar);
        }
        if (mVar2 != null) {
            a(this.f4282c.X(), (this.f4282c.ab() ? 3 : 5) | 48, mVar2);
        }
        if (imageView != null) {
            int dpToPx = AppLovinSdkUtils.dpToPx(this.f4281b, ((Integer) this.f4280a.a(com.applovin.impl.sdk.c.b.cD)).intValue());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, ((Integer) this.f4280a.a(com.applovin.impl.sdk.c.b.cF)).intValue());
            int dpToPx2 = AppLovinSdkUtils.dpToPx(this.f4281b, ((Integer) this.f4280a.a(com.applovin.impl.sdk.c.b.cE)).intValue());
            layoutParams.setMargins(dpToPx2, dpToPx2, dpToPx2, dpToPx2);
            this.f4283d.addView(imageView, layoutParams);
        }
        if (aVar != null) {
            this.f4283d.addView(aVar, this.f4284e);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.f4283d);
        } else {
            this.f4281b.setContentView(this.f4283d);
        }
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void a(m mVar) {
        super.a(mVar);
    }
}
