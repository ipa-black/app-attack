package com.appodeal.ads.api;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.List;
/* loaded from: classes2.dex */
public interface GetOrBuilder extends MessageOrBuilder {
    @Deprecated
    boolean getCheckSdkVersion();

    boolean getDebug();

    boolean getLargeBanners();

    boolean getRewardedVideo();

    String getShowArray(int i);

    ByteString getShowArrayBytes(int i);

    int getShowArrayCount();

    List<String> getShowArrayList();

    String getType();

    ByteString getTypeBytes();
}
