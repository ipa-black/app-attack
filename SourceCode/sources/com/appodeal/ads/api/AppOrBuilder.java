package com.appodeal.ads.api;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2.dex */
public interface AppOrBuilder extends MessageOrBuilder {
    @Deprecated
    long getActiveAppUptime();

    String getAppKey();

    ByteString getAppKeyBytes();

    long getAppUptime();

    String getBundle();

    ByteString getBundleBytes();

    String getFramework();

    ByteString getFrameworkBytes();

    String getFrameworkVersion();

    ByteString getFrameworkVersionBytes();

    long getInstallTime();

    String getInstaller();

    ByteString getInstallerBytes();

    long getMonotonicAppUptime();

    @Deprecated
    boolean getMultidex();

    String getPluginVersion();

    ByteString getPluginVersionBytes();

    String getSdk();

    ByteString getSdkBytes();

    String getVer();

    ByteString getVerBytes();

    int getVersionCode();
}
