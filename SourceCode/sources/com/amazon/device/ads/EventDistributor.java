package com.amazon.device.ads;

import android.view.ViewGroup;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import java.util.Map;
@Deprecated
/* loaded from: classes.dex */
public class EventDistributor {
    private static final String LOG_TAG = "EventDistributor";

    public boolean distribute(String str, String str2, ViewGroup viewGroup, DTBAdResponse dTBAdResponse, DTBRendererObserver dTBRendererObserver, DTBRenderer dTBRenderer, Map<String, Object> map) {
        try {
            for (AdProvider adProvider : AdRegistration.getAdProviders()) {
                if (adProvider.matches(str, str2, dTBAdResponse)) {
                    adProvider.takeOwnership(viewGroup, dTBAdResponse, dTBRendererObserver, dTBRenderer, map);
                    return true;
                }
            }
            return false;
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute distribute method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute distribute method", e2);
            return false;
        }
    }
}
