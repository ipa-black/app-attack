.class public Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;
.super Ljava/lang/Object;
.source "DeviceInfoDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPrivacyDeviceInfoData()Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;
    .locals 4

    .line 20
    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderPrivacyBuilder;

    new-instance v2, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    invoke-direct {v2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/device/reader/GameSessionIdReader;->getInstance()Lcom/unity3d/services/core/device/reader/GameSessionIdReader;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderPrivacyBuilder;-><init>(Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;Lcom/unity3d/services/core/device/reader/IGameSessionIdReader;)V

    .line 22
    new-instance v0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressor;

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderBuilder;->build()Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressor;-><init>(Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;)V

    return-object v0
.end method

.method private getTokenDeviceInfoData()Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;
    .locals 4

    .line 26
    invoke-static {}, Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;->getInstance()Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderBuilder;

    new-instance v2, Lcom/unity3d/services/core/configuration/ConfigurationReader;

    invoke-direct {v2}, Lcom/unity3d/services/core/configuration/ConfigurationReader;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/device/reader/GameSessionIdReader;->getInstance()Lcom/unity3d/services/core/device/reader/GameSessionIdReader;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderBuilder;-><init>(Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/services/core/configuration/PrivacyConfigStorage;Lcom/unity3d/services/core/device/reader/IGameSessionIdReader;)V

    .line 28
    new-instance v0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;

    new-instance v2, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressor;

    invoke-virtual {v1}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderBuilder;->build()Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressor;-><init>(Lcom/unity3d/services/core/device/reader/IDeviceInfoReader;)V

    invoke-direct {v0, v2}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;-><init>(Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceInfoData(Lcom/unity3d/services/core/configuration/InitRequestType;)Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;
    .locals 1

    .line 9
    sget-object v0, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory$1;->$SwitchMap$com$unity3d$services$core$configuration$InitRequestType:[I

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/InitRequestType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;->getPrivacyDeviceInfoData()Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoDataFactory;->getTokenDeviceInfoData()Lcom/unity3d/services/core/device/reader/IDeviceInfoDataContainer;

    move-result-object p1

    return-object p1
.end method
