package com.appnext.sdk.adapters.admob.banners;

import android.content.Context;
import com.appnext.banners.LargeBannerAd;
import com.appnext.core.Ad;
/* loaded from: classes.dex */
public class AppnextAdMobLargeBanner extends LargeBannerAd {
    private static final String TID = "321";

    @Override // com.appnext.banners.LargeBannerAd, com.appnext.banners.BannerAd, com.appnext.core.Ad
    public String getTID() {
        return TID;
    }

    public AppnextAdMobLargeBanner(Context context, String str) {
        super(context, str);
    }

    protected AppnextAdMobLargeBanner(Ad ad) {
        super(ad);
    }
}
