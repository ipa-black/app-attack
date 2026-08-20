package com.appodeal.ads.api;

import com.appodeal.ads.api.Event;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface EventOrBuilder extends MessageOrBuilder {
    float getAmount();

    String getCurrency();

    ByteString getCurrencyBytes();

    Event.EventType getEventType();

    int getEventTypeValue();

    String getId();

    ByteString getIdBytes();

    int getPlacementId();
}
