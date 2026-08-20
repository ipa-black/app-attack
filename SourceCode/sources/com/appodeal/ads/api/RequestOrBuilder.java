package com.appodeal.ads.api;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface RequestOrBuilder extends MessageOrBuilder {
    App getApp();

    AppOrBuilder getAppOrBuilder();

    String getCustomState();

    ByteString getCustomStateBytes();

    Device getDevice();

    DeviceOrBuilder getDeviceOrBuilder();

    Event getEvent();

    EventOrBuilder getEventOrBuilder();

    Extra getExt();

    ExtraOrBuilder getExtOrBuilder();

    Geo getGeo();

    GeoOrBuilder getGeoOrBuilder();

    Get getGet();

    GetOrBuilder getGetOrBuilder();

    String getImpid();

    ByteString getImpidBytes();

    String getMainId();

    ByteString getMainIdBytes();

    Regs getRegs();

    RegsOrBuilder getRegsOrBuilder();

    Services getServicesData();

    ServicesOrBuilder getServicesDataOrBuilder();

    Session getSession();

    SessionOrBuilder getSessionOrBuilder();

    Stats getStats();

    StatsOrBuilder getStatsOrBuilder();

    long getTimestamp();

    User getUser();

    UserOrBuilder getUserOrBuilder();

    boolean hasApp();

    boolean hasDevice();

    boolean hasEvent();

    boolean hasExt();

    boolean hasGeo();

    boolean hasGet();

    boolean hasRegs();

    boolean hasServicesData();

    boolean hasSession();

    boolean hasStats();

    boolean hasUser();
}
