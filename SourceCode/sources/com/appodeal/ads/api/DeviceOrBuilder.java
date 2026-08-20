package com.appodeal.ads.api;

import com.appodeal.ads.api.Device;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface DeviceOrBuilder extends MessageOrBuilder {
    boolean getAdidg();

    int getBattery();

    Device.ConnectionType getConnectiontype();

    int getConnectiontypeValue();

    float getCpuUsage();

    Device.DeviceType getDevicetype();

    int getDevicetypeValue();

    int getH();

    String getIdfv();

    ByteString getIdfvBytes();

    String getIfa();

    ByteString getIfaBytes();

    int getLmt();

    String getLocale();

    ByteString getLocaleBytes();

    String getMake();

    ByteString getMakeBytes();

    String getMccmnc();

    ByteString getMccmncBytes();

    String getModel();

    ByteString getModelBytes();

    String getOs();

    ByteString getOsBytes();

    String getOsv();

    ByteString getOsvBytes();

    float getPxratio();

    long getRamFree();

    long getRamSize();

    long getRamUsed();

    @Deprecated
    boolean getRooted();

    String getSecureAndroidId();

    ByteString getSecureAndroidIdBytes();

    long getStorageFree();

    long getStorageSize();

    long getStorageUsed();

    Device.TrackingAuthorizationStatus getTrackingStatus();

    int getTrackingStatusValue();

    String getUa();

    ByteString getUaBytes();

    int getW();

    @Deprecated
    String getWebviewVersion();

    @Deprecated
    ByteString getWebviewVersionBytes();
}
