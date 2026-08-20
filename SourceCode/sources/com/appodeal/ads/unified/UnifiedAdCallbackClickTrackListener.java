package com.appodeal.ads.unified;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public interface UnifiedAdCallbackClickTrackListener {
    void onTrackError();

    void onTrackSuccess(JSONObject jSONObject);
}
