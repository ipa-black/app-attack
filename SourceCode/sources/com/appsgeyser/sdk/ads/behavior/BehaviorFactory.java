package com.appsgeyser.sdk.ads.behavior;

import com.appsgeyser.sdk.ads.behavior.bannerBehaviors.BannerHeightBehavior;
import com.appsgeyser.sdk.ads.behavior.bannerBehaviors.BannerWidthBehavior;
import com.appsgeyser.sdk.ads.behavior.loaderBehaviors.LoaderClickBehavior;
import com.appsgeyser.sdk.ads.behavior.loaderBehaviors.LoaderHideTimeoutBehavior;
import com.appsgeyser.sdk.ads.behavior.loaderBehaviors.LoaderRefreshTimeoutBehavior;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class BehaviorFactory {
    private static final String BANNER_HEIGHT_HEADER = "APPAD-BannerHeight";
    private static final String BANNER_WIDTH_HEADER = "APPAD-BannerWidth";
    private static final String CLICK_BEHAVIOR_HEADER = "APPAD-ClickBehaviour";
    private static final String HIDE_TIMEOUT_HEADER = "APPAD-HideTimeout";
    private static final String REFRESH_TIMEOUT_HEADER = "APPAD-RefreshTimeout";
    private static final String REMAIN_ON_SCREEN_VALUE = "remainOnScreen";
    private final String[] POSTLOAD_BEHAVIORS = {HIDE_TIMEOUT_HEADER, BANNER_WIDTH_HEADER, BANNER_HEIGHT_HEADER, CLICK_BEHAVIOR_HEADER, REFRESH_TIMEOUT_HEADER};

    /* loaded from: classes2.dex */
    public enum ClickBehavior {
        HIDE,
        REMAIN_ON_SCREEN
    }

    public List<BehaviorVisitor> createPostloadBehaviors(Map<String, List<String>> map) {
        return createBehaviors(this.POSTLOAD_BEHAVIORS, map);
    }

    private List<BehaviorVisitor> createBehaviors(String[] strArr, Map<String, List<String>> map) {
        BehaviorVisitor createVisitor;
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && isInArray(strArr, key) && (createVisitor = createVisitor(entry)) != null) {
                    arrayList.add(createVisitor);
                }
            }
        }
        return arrayList;
    }

    private boolean isInArray(String[] strArr, String str) {
        for (String str2 : strArr) {
            if (str2.toLowerCase().equals(str.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private BehaviorVisitor createVisitor(Map.Entry<String, List<String>> entry) {
        BehaviorVisitor loaderRefreshTimeoutBehavior;
        try {
            String lowerCase = entry.getKey().toLowerCase();
            String lowerCase2 = entry.getValue().get(0).toLowerCase();
            if (lowerCase.equalsIgnoreCase(HIDE_TIMEOUT_HEADER)) {
                loaderRefreshTimeoutBehavior = new LoaderHideTimeoutBehavior(Float.parseFloat(lowerCase2));
            } else if (lowerCase.equalsIgnoreCase(BANNER_WIDTH_HEADER)) {
                loaderRefreshTimeoutBehavior = new BannerWidthBehavior(Integer.parseInt(lowerCase2));
            } else if (lowerCase.equalsIgnoreCase(BANNER_HEIGHT_HEADER)) {
                loaderRefreshTimeoutBehavior = new BannerHeightBehavior(Integer.parseInt(lowerCase2));
            } else if (lowerCase.equalsIgnoreCase(CLICK_BEHAVIOR_HEADER)) {
                ClickBehavior clickBehavior = ClickBehavior.HIDE;
                if (lowerCase2.equalsIgnoreCase(REMAIN_ON_SCREEN_VALUE)) {
                    clickBehavior = ClickBehavior.REMAIN_ON_SCREEN;
                }
                return new LoaderClickBehavior(clickBehavior);
            } else if (!lowerCase.equalsIgnoreCase(REFRESH_TIMEOUT_HEADER)) {
                return null;
            } else {
                loaderRefreshTimeoutBehavior = new LoaderRefreshTimeoutBehavior(Float.parseFloat(lowerCase2));
            }
            return loaderRefreshTimeoutBehavior;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
