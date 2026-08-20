package com.appodeal.ads.api;

import com.appodeal.ads.api.Stats;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.List;
/* loaded from: classes2.dex */
public interface StatsOrBuilder extends MessageOrBuilder {
    Stats.AdUnit getAdUnit(int i);

    int getAdUnitCount();

    List<Stats.AdUnit> getAdUnitList();

    Stats.AdUnitOrBuilder getAdUnitOrBuilder(int i);

    List<? extends Stats.AdUnitOrBuilder> getAdUnitOrBuilderList();

    Adapter getAdapter(int i);

    int getAdapterCount();

    List<Adapter> getAdapterList();

    AdapterOrBuilder getAdapterOrBuilder(int i);

    List<? extends AdapterOrBuilder> getAdapterOrBuilderList();

    int getCapacity();

    boolean getCompleted();

    long getFinish();

    long getStart();

    boolean getSuccessful();
}
