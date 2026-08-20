package com.appnext.banners;

import android.content.Context;
import com.appnext.core.Ad;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.onesignal.NotificationBundleProcessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class BannerAd extends Ad {
    protected static final String TID = "301";
    protected static final String VID = "2.5.1.472";

    @Override // com.appnext.core.Ad
    public void getECPM(OnECPMLoaded onECPMLoaded) {
    }

    @Override // com.appnext.core.Ad
    public boolean isAdLoaded() {
        return false;
    }

    @Override // com.appnext.core.Ad
    public void loadAd() {
    }

    @Override // com.appnext.core.Ad
    public void showAd() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BannerAd(Ad ad) {
        super(ad);
    }

    public BannerAd(Context context, String str) {
        super(context, str);
    }

    @Override // com.appnext.core.Ad
    public String getVID() {
        return "2.5.1.472";
    }

    @Override // com.appnext.core.Ad
    public String getTID() {
        return TID;
    }

    @Override // com.appnext.core.Ad
    public String getAUID() {
        return "1000";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.Ad
    public String getSessionId() {
        return super.getSessionId();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.Ad
    public void setAdRequest(com.appnext.core.c cVar) {
        super.setAdRequest(cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.Ad
    public com.appnext.core.c getAdRequest() {
        return super.getAdRequest();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String getTemId(BannerAdData bannerAdData) {
        char c2;
        if (bannerAdData.getRevenueType().equals("cpi")) {
            String lowerCase = d.S().get("BANNER_cpiActiveFlow").toLowerCase();
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
                        return "106";
                    }
                    return "109";
                }
                return "103";
            }
            return StatisticData.ERROR_CODE_NOT_FOUND;
        }
        String lowerCase2 = d.S().get("BANNER_cpcActiveFlow").toLowerCase();
        int hashCode = lowerCase2.hashCode();
        if (hashCode == 97) {
            if (lowerCase2.equals(NotificationBundleProcessor.PUSH_ADDITIONAL_DATA_KEY)) {
                return "200";
            }
            return "203";
        } else if (hashCode != 98) {
            return "203";
        } else {
            lowerCase2.equals("b");
            return "203";
        }
    }
}
