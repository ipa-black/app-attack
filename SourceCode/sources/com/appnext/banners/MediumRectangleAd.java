package com.appnext.banners;

import android.content.Context;
import com.appnext.core.Ad;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.onesignal.NotificationBundleProcessor;
/* loaded from: classes.dex */
public class MediumRectangleAd extends BannerAd {
    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public /* bridge */ /* synthetic */ void getECPM(OnECPMLoaded onECPMLoaded) {
        super.getECPM(onECPMLoaded);
    }

    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public /* bridge */ /* synthetic */ String getTID() {
        return super.getTID();
    }

    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public /* bridge */ /* synthetic */ String getVID() {
        return super.getVID();
    }

    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public /* bridge */ /* synthetic */ boolean isAdLoaded() {
        return super.isAdLoaded();
    }

    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public /* bridge */ /* synthetic */ void loadAd() {
        super.loadAd();
    }

    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public /* bridge */ /* synthetic */ void showAd() {
        super.showAd();
    }

    public MediumRectangleAd(Context context, String str) {
        super(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MediumRectangleAd(Ad ad) {
        super(ad);
    }

    @Override // com.appnext.banners.BannerAd, com.appnext.core.Ad
    public String getAUID() {
        return "1020";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.appnext.banners.BannerAd
    public String getTemId(BannerAdData bannerAdData) {
        char c2;
        if (bannerAdData.getRevenueType().equals("cpi")) {
            String lowerCase = d.S().get("MEDIUM_RECTANGLE_cpiActiveFlow").toLowerCase();
            switch (lowerCase.hashCode()) {
                case 97:
                    if (lowerCase.equals(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY)) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 98:
                    if (lowerCase.equals("b")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 99:
                    if (lowerCase.equals("c")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 100:
                    if (lowerCase.equals(com.ironsource.sdk.c.d.f11571a)) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 != 0) {
                if (c2 != 1) {
                    if (c2 == 2) {
                        return "108";
                    }
                    return "111";
                }
                return "105";
            }
            return "102";
        }
        String lowerCase2 = d.S().get("MEDIUM_RECTANGLE_cpcActiveFlow").toLowerCase();
        int hashCode = lowerCase2.hashCode();
        if (hashCode == 97) {
            if (lowerCase2.equals(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY)) {
                return "202";
            }
            return "205";
        } else if (hashCode != 98) {
            return "205";
        } else {
            lowerCase2.equals("b");
            return "205";
        }
    }
}
