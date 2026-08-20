package com.appodeal.ads.api;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.List;
/* loaded from: classes2.dex */
public interface ExtraOrBuilder extends MessageOrBuilder {
    String getAdUnitStat();

    ByteString getAdUnitStatBytes();

    @Deprecated
    String getApps(int i);

    @Deprecated
    ByteString getAppsBytes(int i);

    @Deprecated
    int getAppsCount();

    @Deprecated
    List<String> getAppsList();

    float getPriceFloor();

    String getSa(int i);

    ByteString getSaBytes(int i);

    int getSaCount();

    List<String> getSaList();
}
