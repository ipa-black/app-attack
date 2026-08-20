package com.applovin.impl.adview.activity.a;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.m;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.n;
/* loaded from: classes.dex */
public class b extends a {
    public b(e eVar, Activity activity, n nVar) {
        super(eVar, activity, nVar);
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void a(View view) {
        super.a(view);
    }

    @Override // com.applovin.impl.adview.activity.a.a
    public /* bridge */ /* synthetic */ void a(m mVar) {
        super.a(mVar);
    }

    public void a(m mVar, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        this.f4283d.addView(appLovinAdView);
        if (mVar != null) {
            a(this.f4282c.X(), (this.f4282c.ab() ? 3 : 5) | 48, mVar);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.f4283d);
        } else {
            this.f4281b.setContentView(this.f4283d);
        }
    }
}
