package com.appnext.sdk.adapters.admob.banners;

import android.content.Context;
import android.util.AttributeSet;
import com.appnext.banners.BannerView;
import com.appnext.banners.e;
/* loaded from: classes.dex */
public class AppnextAdmobBannerView extends BannerView {
    public AppnextAdmobBannerView(Context context) {
        super(context);
    }

    public AppnextAdmobBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppnextAdmobBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AppnextAdmobBannerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.appnext.banners.BannerView, com.appnext.banners.BaseBannerView
    protected e getBannerAdapter() {
        if (this.bannerAdapter == null) {
            this.bannerAdapter = new AdMobBannerAdapterAppnext();
        }
        return this.bannerAdapter;
    }
}
