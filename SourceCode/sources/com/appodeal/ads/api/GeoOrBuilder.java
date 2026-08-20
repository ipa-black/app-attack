package com.appodeal.ads.api;

import com.appodeal.ads.api.Geo;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface GeoOrBuilder extends MessageOrBuilder {
    float getLat();

    long getLocalTime();

    float getLon();

    Geo.LocationType getLt();

    int getLtValue();

    int getUtcoffset();
}
