package com.appodeal.ads.api;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface SessionOrBuilder extends MessageOrBuilder {
    @Deprecated
    int getActiveSessionId();

    @Deprecated
    long getActiveSessionUptime();

    AdStats getAdStats();

    AdStatsOrBuilder getAdStatsOrBuilder();

    long getAppSessionAverageLength();

    String getExt();

    ByteString getExtBytes();

    long getMonotonicAppSessionAverageLength();

    long getMonotonicSessionUptime();

    int getSegmentId();

    long getSessionId();

    long getSessionUptime();

    String getSessionUuid();

    ByteString getSessionUuidBytes();

    boolean getTest();

    String getToken();

    ByteString getTokenBytes();

    boolean hasAdStats();
}
