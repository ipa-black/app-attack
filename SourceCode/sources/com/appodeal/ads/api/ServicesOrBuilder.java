package com.appodeal.ads.api;

import com.appodeal.ads.api.Services;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface ServicesOrBuilder extends MessageOrBuilder {
    Services.Adjust getAdjust();

    Services.AdjustOrBuilder getAdjustOrBuilder();

    Services.Appsflyer getAppsflyer();

    Services.AppsflyerOrBuilder getAppsflyerOrBuilder();

    Services.Facebook getFacebook();

    Services.FacebookOrBuilder getFacebookOrBuilder();

    Services.Firebase getFirebase();

    Services.FirebaseOrBuilder getFirebaseOrBuilder();

    boolean hasAdjust();

    boolean hasAppsflyer();

    boolean hasFacebook();

    boolean hasFirebase();
}
