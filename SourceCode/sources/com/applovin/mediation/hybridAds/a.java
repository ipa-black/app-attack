package com.applovin.mediation.hybridAds;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.applovin.impl.adview.q;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes.dex */
public class a extends FrameLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private InterfaceC0084a f6259a;

    /* renamed from: com.applovin.mediation.hybridAds.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    interface InterfaceC0084a {
        void a(a aVar);
    }

    public a(c cVar, Context context) {
        super(context);
        setOnClickListener(this);
        q qVar = new q(context);
        int dpToPx = AppLovinSdkUtils.dpToPx(context, cVar.d());
        qVar.setLayoutParams(new FrameLayout.LayoutParams(dpToPx, dpToPx, 17));
        qVar.a(dpToPx);
        addView(qVar);
        int dpToPx2 = AppLovinSdkUtils.dpToPx(context, cVar.d() + (cVar.e() * 2));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx2, dpToPx2, BadgeDrawable.TOP_END);
        int dpToPx3 = AppLovinSdkUtils.dpToPx(context, cVar.b());
        int dpToPx4 = AppLovinSdkUtils.dpToPx(context, cVar.c());
        layoutParams.setMargins(dpToPx4, dpToPx3, dpToPx4, 0);
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f6259a.a(this);
    }

    public void setListener(InterfaceC0084a interfaceC0084a) {
        this.f6259a = interfaceC0084a;
    }
}
