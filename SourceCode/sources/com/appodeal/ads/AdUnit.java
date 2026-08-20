package com.appodeal.ads;

import org.json.JSONObject;
/* loaded from: classes.dex */
public interface AdUnit {
    String getAdUnitName();

    double getEcpm();

    long getExpTime();

    String getId();

    int getImpressionInterval();

    JSONObject getJsonData();

    int getLoadingTimeout();

    String getMediatorName();

    e0 getRequestResult();

    String getStatus();

    boolean isAsync();

    Boolean isMuted();

    boolean isPrecache();
}
