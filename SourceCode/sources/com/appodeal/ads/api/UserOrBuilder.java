package com.appodeal.ads.api;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface UserOrBuilder extends MessageOrBuilder {
    boolean getConsent();

    String getIabConsentData();

    ByteString getIabConsentDataBytes();

    String getId();

    ByteString getIdBytes();

    UserSettings getUserSettings();

    UserSettingsOrBuilder getUserSettingsOrBuilder();

    boolean hasUserSettings();
}
