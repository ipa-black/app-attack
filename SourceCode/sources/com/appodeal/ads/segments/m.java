package com.appodeal.ads.segments;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
/* loaded from: classes2.dex */
public final class m {
    public static String a(AdType adType) {
        switch (l.f7534a[adType.ordinal()]) {
            case 1:
                return "interstitial";
            case 2:
                return "video";
            case 3:
                return "rewarded_video";
            case 4:
                return "banner";
            case 5:
                return Constants.PRETTY_MREC_NAME;
            case 6:
                return "native";
            default:
                return null;
        }
    }
}
