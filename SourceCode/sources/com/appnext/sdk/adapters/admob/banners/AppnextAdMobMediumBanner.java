package com.appnext.sdk.adapters.admob.banners;

import android.content.Context;
import com.appnext.banners.MediumRectangleAd;
import com.appnext.core.Ad;
/* loaded from: classes.dex */
public class AppnextAdMobMediumBanner extends MediumRectangleAd {
    private static final String TID = "321";

    @Override // com.appnext.banners.MediumRectangleAd, com.appnext.banners.BannerAd, com.appnext.core.Ad
    public String getTID() {
        return TID;
    }

    public AppnextAdMobMediumBanner(Context context, String str) {
        super(context, str);
    }

    protected AppnextAdMobMediumBanner(Ad ad) {
        super(ad);
    }
}
