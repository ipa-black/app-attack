package com.appnext.sdk.adapters.admob.banners;

import android.content.Context;
import com.appnext.banners.g;
import com.appnext.core.Ad;
/* loaded from: classes.dex */
public class AdMobBannerAdapterAppnext extends g {
    @Override // com.appnext.banners.a
    protected Ad createAd(Context context, String str) {
        String bannerSize = getBannerSize().toString();
        bannerSize.hashCode();
        char c2 = 65535;
        switch (bannerSize.hashCode()) {
            case -1966536496:
                if (bannerSize.equals("LARGE_BANNER")) {
                    c2 = 0;
                    break;
                }
                break;
            case -96588539:
                if (bannerSize.equals("MEDIUM_RECTANGLE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1951953708:
                if (bannerSize.equals("BANNER")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return new AppnextAdMobLargeBanner(context, str);
            case 1:
                return new AppnextAdMobMediumBanner(context, str);
            case 2:
                return new AppnextAdMobSmallBanner(context, str);
            default:
                throw new IllegalArgumentException("Wrong banner size " + getBannerSize());
        }
    }
}
