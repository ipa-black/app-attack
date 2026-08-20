package com.unity3d.services.core.configuration;

import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public interface IExperiments {
    JSONObject getCurrentSessionExperiments();

    Map<String, String> getExperimentTags();

    JSONObject getExperimentsAsJson();

    JSONObject getNextSessionExperiments();

    String getScarBiddingManager();

    boolean isJetpackLifecycle();

    boolean isNativeWebViewCacheEnabled();

    boolean isNewInitFlowEnabled();

    boolean isScarInitEnabled();

    boolean isWebAssetAdCaching();

    boolean isWebGestureNotRequired();

    boolean shouldNativeTokenAwaitPrivacy();
}
