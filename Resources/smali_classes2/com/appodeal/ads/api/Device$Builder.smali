.class public final Lcom/appodeal/ads/api/Device$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Device.java"

# interfaces
.implements Lcom/appodeal/ads/api/DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Device$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/DeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private adidg_:Z

.field private battery_:I

.field private connectiontype_:I

.field private cpuUsage_:F

.field private devicetype_:I

.field private h_:I

.field private idfv_:Ljava/lang/Object;

.field private ifa_:Ljava/lang/Object;

.field private lmt_:I

.field private locale_:Ljava/lang/Object;

.field private make_:Ljava/lang/Object;

.field private mccmnc_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private os_:Ljava/lang/Object;

.field private osv_:Ljava/lang/Object;

.field private pxratio_:F

.field private ramFree_:J

.field private ramSize_:J

.field private ramUsed_:J

.field private rooted_:Z

.field private secureAndroidId_:Ljava/lang/Object;

.field private storageFree_:J

.field private storageSize_:J

.field private storageUsed_:J

.field private trackingStatus_:I

.field private ua_:Ljava/lang/Object;

.field private w_:I

.field private webviewVersion_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1923
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2222
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2318
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2414
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2639
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    .line 2713
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2809
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2948
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 3087
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3183
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3279
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    .line 3353
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3535
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    .line 3609
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 4006
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 1924
    invoke-direct {p0}, Lcom/appodeal/ads/api/Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Device$1;)V
    .locals 0

    .line 1905
    invoke-direct {p0}, Lcom/appodeal/ads/api/Device$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 1929
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2222
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2318
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2414
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2639
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    .line 2713
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2809
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2948
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 3087
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3183
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3279
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    .line 3353
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3535
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    .line 3609
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 4006
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 1930
    invoke-direct {p0}, Lcom/appodeal/ads/api/Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Device$1;)V
    .locals 0

    .line 1905
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1911
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1934
    invoke-static {}, Lcom/appodeal/ads/api/Device;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2084
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Device;
    .locals 2

    .line 2012
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->buildPartial()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    .line 2013
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2014
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Device$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->build()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->build()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Device;
    .locals 3

    .line 2021
    new-instance v0, Lcom/appodeal/ads/api/Device;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Device$1;)V

    .line 2022
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$402(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$502(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$602(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->w_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$702(Lcom/appodeal/ads/api/Device;I)I

    .line 2026
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->h_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$802(Lcom/appodeal/ads/api/Device;I)I

    .line 2027
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->pxratio_:F

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$902(Lcom/appodeal/ads/api/Device;F)F

    .line 2028
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1002(Lcom/appodeal/ads/api/Device;I)I

    .line 2029
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1102(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1202(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Device$Builder;->rooted_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1302(Lcom/appodeal/ads/api/Device;Z)Z

    .line 2032
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1402(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->battery_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1502(Lcom/appodeal/ads/api/Device;I)I

    .line 2034
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1602(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1702(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1802(Lcom/appodeal/ads/api/Device;I)I

    .line 2037
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$1902(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->lmt_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$2002(Lcom/appodeal/ads/api/Device;I)I

    .line 2039
    iget-boolean v1, p0, Lcom/appodeal/ads/api/Device$Builder;->adidg_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$2102(Lcom/appodeal/ads/api/Device;Z)Z

    .line 2040
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$2202(Lcom/appodeal/ads/api/Device;I)I

    .line 2041
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$2302(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    iget-wide v1, p0, Lcom/appodeal/ads/api/Device$Builder;->storageSize_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Device;->access$2402(Lcom/appodeal/ads/api/Device;J)J

    .line 2043
    iget-wide v1, p0, Lcom/appodeal/ads/api/Device$Builder;->storageFree_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Device;->access$2502(Lcom/appodeal/ads/api/Device;J)J

    .line 2044
    iget-wide v1, p0, Lcom/appodeal/ads/api/Device$Builder;->storageUsed_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Device;->access$2602(Lcom/appodeal/ads/api/Device;J)J

    .line 2045
    iget-wide v1, p0, Lcom/appodeal/ads/api/Device$Builder;->ramSize_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Device;->access$2702(Lcom/appodeal/ads/api/Device;J)J

    .line 2046
    iget-wide v1, p0, Lcom/appodeal/ads/api/Device$Builder;->ramFree_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Device;->access$2802(Lcom/appodeal/ads/api/Device;J)J

    .line 2047
    iget-wide v1, p0, Lcom/appodeal/ads/api/Device$Builder;->ramUsed_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Device;->access$2902(Lcom/appodeal/ads/api/Device;J)J

    .line 2048
    iget v1, p0, Lcom/appodeal/ads/api/Device$Builder;->cpuUsage_:F

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$3002(Lcom/appodeal/ads/api/Device;F)F

    .line 2049
    iget-object v1, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Device;->access$3102(Lcom/appodeal/ads/api/Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->buildPartial()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->buildPartial()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Device$Builder;
    .locals 5

    .line 1939
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1940
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 1942
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 1944
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1946
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->w_:I

    .line 1948
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->h_:I

    const/4 v2, 0x0

    .line 1950
    iput v2, p0, Lcom/appodeal/ads/api/Device$Builder;->pxratio_:F

    .line 1952
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    .line 1954
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 1956
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 1958
    iput-boolean v1, p0, Lcom/appodeal/ads/api/Device$Builder;->rooted_:Z

    .line 1960
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 1962
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->battery_:I

    .line 1964
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 1966
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 1968
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    .line 1970
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 1972
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->lmt_:I

    .line 1974
    iput-boolean v1, p0, Lcom/appodeal/ads/api/Device$Builder;->adidg_:Z

    .line 1976
    iput v1, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    .line 1978
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 1980
    iput-wide v3, p0, Lcom/appodeal/ads/api/Device$Builder;->storageSize_:J

    .line 1982
    iput-wide v3, p0, Lcom/appodeal/ads/api/Device$Builder;->storageFree_:J

    .line 1984
    iput-wide v3, p0, Lcom/appodeal/ads/api/Device$Builder;->storageUsed_:J

    .line 1986
    iput-wide v3, p0, Lcom/appodeal/ads/api/Device$Builder;->ramSize_:J

    .line 1988
    iput-wide v3, p0, Lcom/appodeal/ads/api/Device$Builder;->ramFree_:J

    .line 1990
    iput-wide v3, p0, Lcom/appodeal/ads/api/Device$Builder;->ramUsed_:J

    .line 1992
    iput v2, p0, Lcom/appodeal/ads/api/Device$Builder;->cpuUsage_:F

    .line 1994
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clear()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clear()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clear()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clear()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAdidg()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 3530
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Device$Builder;->adidg_:Z

    .line 3531
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBattery()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 3082
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->battery_:I

    .line 3083
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConnectiontype()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 3348
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    .line 3349
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCpuUsage()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 4001
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->cpuUsage_:F

    .line 4002
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevicetype()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2708
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    .line 2709
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2067
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearH()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2591
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->h_:I

    .line 2592
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIdfv()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 3680
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getIdfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 3681
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfa()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 3424
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getIfa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3425
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLmt()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 3487
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->lmt_:I

    .line 3488
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLocale()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 3254
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3255
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMake()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2784
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getMake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2785
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMccmnc()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 3158
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getMccmnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3159
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearModel()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2880
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2881
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2072
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOs()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2485
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getOs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    .line 2486
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOsv()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2389
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2390
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPxratio()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2634
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->pxratio_:F

    .line 2635
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRamFree()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 3915
    iput-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ramFree_:J

    .line 3916
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRamSize()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 3872
    iput-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ramSize_:J

    .line 3873
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRamUsed()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 3958
    iput-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ramUsed_:J

    .line 3959
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRooted()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2943
    iput-boolean v0, p0, Lcom/appodeal/ads/api/Device$Builder;->rooted_:Z

    .line 2944
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSecureAndroidId()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 4077
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getSecureAndroidId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 4078
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStorageFree()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 3786
    iput-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->storageFree_:J

    .line 3787
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStorageSize()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 3743
    iput-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->storageSize_:J

    .line 3744
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStorageUsed()Lcom/appodeal/ads/api/Device$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 3829
    iput-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->storageUsed_:J

    .line 3830
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTrackingStatus()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 3604
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    .line 3605
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUa()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2293
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getUa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2294
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearW()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2548
    iput v0, p0, Lcom/appodeal/ads/api/Device$Builder;->w_:I

    .line 2549
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWebviewVersion()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3019
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Device;->getWebviewVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 3020
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2056
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Device$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clone()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clone()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clone()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clone()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clone()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->clone()Lcom/appodeal/ads/api/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdidg()Z
    .locals 1

    .line 3503
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Device$Builder;->adidg_:Z

    return v0
.end method

.method public getBattery()I
    .locals 1

    .line 3055
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->battery_:I

    return v0
.end method

.method public getConnectiontype()Lcom/appodeal/ads/api/Device$ConnectionType;
    .locals 1

    .line 3317
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Device$ConnectionType;->valueOf(I)Lcom/appodeal/ads/api/Device$ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3318
    sget-object v0, Lcom/appodeal/ads/api/Device$ConnectionType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$ConnectionType;

    :cond_0
    return-object v0
.end method

.method public getConnectiontypeValue()I
    .locals 1

    .line 3289
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    return v0
.end method

.method public getCpuUsage()F
    .locals 1

    .line 3974
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->cpuUsage_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Device;
    .locals 1

    .line 2007
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1905
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2002
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDevicetype()Lcom/appodeal/ads/api/Device$DeviceType;
    .locals 1

    .line 2677
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Device$DeviceType;->valueOf(I)Lcom/appodeal/ads/api/Device$DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2678
    sget-object v0, Lcom/appodeal/ads/api/Device$DeviceType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$DeviceType;

    :cond_0
    return-object v0
.end method

.method public getDevicetypeValue()I
    .locals 1

    .line 2649
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    return v0
.end method

.method public getH()I
    .locals 1

    .line 2564
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->h_:I

    return v0
.end method

.method public getIdfv()Ljava/lang/String;
    .locals 2

    .line 3619
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 3620
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3621
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3623
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3624
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    return-object v0

    .line 3627
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3640
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 3641
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3642
    check-cast v0, Ljava/lang/String;

    .line 3643
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3645
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    return-object v0

    .line 3648
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .locals 2

    .line 3363
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3364
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3365
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3367
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3368
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 3371
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3384
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3385
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3386
    check-cast v0, Ljava/lang/String;

    .line 3387
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3389
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 3392
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getLmt()I
    .locals 1

    .line 3460
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->lmt_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 2

    .line 3193
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3194
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3195
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3198
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    return-object v0

    .line 3201
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3214
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3216
    check-cast v0, Ljava/lang/String;

    .line 3217
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3219
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    return-object v0

    .line 3222
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMake()Ljava/lang/String;
    .locals 2

    .line 2723
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2724
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2725
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2727
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2728
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 2731
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2744
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2745
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2746
    check-cast v0, Ljava/lang/String;

    .line 2747
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2749
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 2752
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMccmnc()Ljava/lang/String;
    .locals 2

    .line 3097
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3098
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3099
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3101
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3102
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    return-object v0

    .line 3105
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMccmncBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3118
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3120
    check-cast v0, Ljava/lang/String;

    .line 3121
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3123
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    return-object v0

    .line 3126
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .line 2819
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2820
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2821
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2823
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2824
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 2827
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2840
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2841
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2842
    check-cast v0, Ljava/lang/String;

    .line 2843
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2845
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 2848
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 2

    .line 2424
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    .line 2425
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2426
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2428
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2429
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    return-object v0

    .line 2432
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2445
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    .line 2446
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2447
    check-cast v0, Ljava/lang/String;

    .line 2448
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2450
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    return-object v0

    .line 2453
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 2

    .line 2328
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2329
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2330
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2332
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2333
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 2336
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2349
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2350
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2351
    check-cast v0, Ljava/lang/String;

    .line 2352
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2354
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 2357
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getPxratio()F
    .locals 1

    .line 2607
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->pxratio_:F

    return v0
.end method

.method public getRamFree()J
    .locals 2

    .line 3888
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ramFree_:J

    return-wide v0
.end method

.method public getRamSize()J
    .locals 2

    .line 3845
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ramSize_:J

    return-wide v0
.end method

.method public getRamUsed()J
    .locals 2

    .line 3931
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ramUsed_:J

    return-wide v0
.end method

.method public getRooted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2916
    iget-boolean v0, p0, Lcom/appodeal/ads/api/Device$Builder;->rooted_:Z

    return v0
.end method

.method public getSecureAndroidId()Ljava/lang/String;
    .locals 2

    .line 4016
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 4017
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4018
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4020
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4021
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    return-object v0

    .line 4024
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecureAndroidIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4037
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 4038
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4039
    check-cast v0, Ljava/lang/String;

    .line 4040
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4042
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    return-object v0

    .line 4045
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStorageFree()J
    .locals 2

    .line 3759
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->storageFree_:J

    return-wide v0
.end method

.method public getStorageSize()J
    .locals 2

    .line 3716
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->storageSize_:J

    return-wide v0
.end method

.method public getStorageUsed()J
    .locals 2

    .line 3802
    iget-wide v0, p0, Lcom/appodeal/ads/api/Device$Builder;->storageUsed_:J

    return-wide v0
.end method

.method public getTrackingStatus()Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;
    .locals 1

    .line 3573
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->valueOf(I)Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3574
    sget-object v0, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->UNRECOGNIZED:Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;

    :cond_0
    return-object v0
.end method

.method public getTrackingStatusValue()I
    .locals 1

    .line 3545
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    return v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 2

    .line 2232
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2233
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2234
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2236
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2237
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    return-object v0

    .line 2240
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2253
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2254
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2255
    check-cast v0, Ljava/lang/String;

    .line 2256
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2258
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    return-object v0

    .line 2261
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getW()I
    .locals 1

    .line 2521
    iget v0, p0, Lcom/appodeal/ads/api/Device$Builder;->w_:I

    return v0
.end method

.method public getWebviewVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2958
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 2959
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2960
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2962
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2963
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    return-object v0

    .line 2966
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWebviewVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2979
    iget-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 2980
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2981
    check-cast v0, Ljava/lang/String;

    .line 2982
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2984
    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    return-object v0

    .line 2987
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1917
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Device;

    const-class v2, Lcom/appodeal/ads/api/Device$Builder;

    .line 1918
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 6

    .line 2097
    invoke-static {}, Lcom/appodeal/ads/api/Device;->getDefaultInstance()Lcom/appodeal/ads/api/Device;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2098
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getUa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2099
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$400(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2100
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2102
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2103
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$500(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2104
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2106
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getOs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2107
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$600(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    .line 2108
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2110
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getW()I

    move-result v0

    if-eqz v0, :cond_4

    .line 2111
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setW(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2113
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getH()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2114
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setH(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2116
    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getPxratio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 2117
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getPxratio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setPxratio(F)Lcom/appodeal/ads/api/Device$Builder;

    .line 2119
    :cond_6
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1000(Lcom/appodeal/ads/api/Device;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 2120
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getDevicetypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setDevicetypeValue(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2122
    :cond_7
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2123
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1100(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2124
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2126
    :cond_8
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2127
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1200(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2128
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2130
    :cond_9
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRooted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2131
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRooted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setRooted(Z)Lcom/appodeal/ads/api/Device$Builder;

    .line 2133
    :cond_a
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getWebviewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2134
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1400(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 2135
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2137
    :cond_b
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getBattery()I

    move-result v0

    if-eqz v0, :cond_c

    .line 2138
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getBattery()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setBattery(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2140
    :cond_c
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getMccmnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2141
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1600(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 2142
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2144
    :cond_d
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2145
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1700(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2148
    :cond_e
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1800(Lcom/appodeal/ads/api/Device;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 2149
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getConnectiontypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setConnectiontypeValue(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2151
    :cond_f
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2152
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$1900(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 2153
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2155
    :cond_10
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getLmt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 2156
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getLmt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setLmt(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2158
    :cond_11
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getAdidg()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2159
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getAdidg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setAdidg(Z)Lcom/appodeal/ads/api/Device$Builder;

    .line 2161
    :cond_12
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$2200(Lcom/appodeal/ads/api/Device;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 2162
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getTrackingStatusValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setTrackingStatusValue(I)Lcom/appodeal/ads/api/Device$Builder;

    .line 2164
    :cond_13
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getIdfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2165
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$2300(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 2166
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2168
    :cond_14
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    .line 2169
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageSize()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appodeal/ads/api/Device$Builder;->setStorageSize(J)Lcom/appodeal/ads/api/Device$Builder;

    .line 2171
    :cond_15
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageFree()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_16

    .line 2172
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageFree()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appodeal/ads/api/Device$Builder;->setStorageFree(J)Lcom/appodeal/ads/api/Device$Builder;

    .line 2174
    :cond_16
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageUsed()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    .line 2175
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getStorageUsed()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appodeal/ads/api/Device$Builder;->setStorageUsed(J)Lcom/appodeal/ads/api/Device$Builder;

    .line 2177
    :cond_17
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamSize()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    .line 2178
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamSize()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appodeal/ads/api/Device$Builder;->setRamSize(J)Lcom/appodeal/ads/api/Device$Builder;

    .line 2180
    :cond_18
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamFree()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    .line 2181
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamFree()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appodeal/ads/api/Device$Builder;->setRamFree(J)Lcom/appodeal/ads/api/Device$Builder;

    .line 2183
    :cond_19
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamUsed()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    .line 2184
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getRamUsed()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appodeal/ads/api/Device$Builder;->setRamUsed(J)Lcom/appodeal/ads/api/Device$Builder;

    .line 2186
    :cond_1a
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getCpuUsage()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    .line 2187
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getCpuUsage()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->setCpuUsage(F)Lcom/appodeal/ads/api/Device$Builder;

    .line 2189
    :cond_1b
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device;->getSecureAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2190
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3100(Lcom/appodeal/ads/api/Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 2191
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    .line 2193
    :cond_1c
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3200(Lcom/appodeal/ads/api/Device;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;

    .line 2194
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2210
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Device;->access$3300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2216
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2212
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2213
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2216
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;

    .line 2218
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 1

    .line 2088
    instance-of v0, p1, Lcom/appodeal/ads/api/Device;

    if-eqz v0, :cond_0

    .line 2089
    check-cast p1, Lcom/appodeal/ads/api/Device;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/appodeal/ads/api/Device;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1

    .line 2091
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 4110
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdidg(Z)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3516
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Device$Builder;->adidg_:Z

    .line 3517
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setBattery(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3068
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->battery_:I

    .line 3069
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setConnectiontype(Lcom/appodeal/ads/api/Device$ConnectionType;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3334
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device$ConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    .line 3335
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setConnectiontypeValue(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3302
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->connectiontype_:I

    .line 3303
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setCpuUsage(F)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3987
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->cpuUsage_:F

    .line 3988
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicetype(Lcom/appodeal/ads/api/Device$DeviceType;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2694
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device$DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    .line 2695
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevicetypeValue(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2662
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->devicetype_:I

    .line 2663
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2062
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setH(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2577
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->h_:I

    .line 2578
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdfv(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3663
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3666
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 3667
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdfvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3698
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$4300(Lcom/explorestack/protobuf/ByteString;)V

    .line 3700
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->idfv_:Ljava/lang/Object;

    .line 3701
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfa(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3410
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3411
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3442
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$4200(Lcom/explorestack/protobuf/ByteString;)V

    .line 3444
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ifa_:Ljava/lang/Object;

    .line 3445
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setLmt(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3473
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->lmt_:I

    .line 3474
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3240
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3241
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setLocaleBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3272
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$4100(Lcom/explorestack/protobuf/ByteString;)V

    .line 3274
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->locale_:Ljava/lang/Object;

    .line 3275
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setMake(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2770
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2771
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setMakeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2802
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2804
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->make_:Ljava/lang/Object;

    .line 2805
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setMccmnc(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3144
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3145
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setMccmncBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3176
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$4000(Lcom/explorestack/protobuf/ByteString;)V

    .line 3178
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 3179
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2863
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2866
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2867
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setModelBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2896
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2898
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2900
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->model_:Ljava/lang/Object;

    .line 2901
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setOs(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2471
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    .line 2472
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2503
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2505
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->os_:Ljava/lang/Object;

    .line 2506
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsv(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2375
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2376
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2407
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2409
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->osv_:Ljava/lang/Object;

    .line 2410
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setPxratio(F)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2620
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->pxratio_:F

    .line 2621
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setRamFree(J)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3901
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ramFree_:J

    .line 3902
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setRamSize(J)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3858
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ramSize_:J

    .line 3859
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setRamUsed(J)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3944
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ramUsed_:J

    .line 3945
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2078
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRooted(Z)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2929
    iput-boolean p1, p0, Lcom/appodeal/ads/api/Device$Builder;->rooted_:Z

    .line 2930
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setSecureAndroidId(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 4060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4063
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 4064
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setSecureAndroidIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 4093
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4095
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$4400(Lcom/explorestack/protobuf/ByteString;)V

    .line 4097
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->secureAndroidId_:Ljava/lang/Object;

    .line 4098
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setStorageFree(J)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3772
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device$Builder;->storageFree_:J

    .line 3773
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setStorageSize(J)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3729
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device$Builder;->storageSize_:J

    .line 3730
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setStorageUsed(J)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3815
    iput-wide p1, p0, Lcom/appodeal/ads/api/Device$Builder;->storageUsed_:J

    .line 3816
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setTrackingStatus(Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3587
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3590
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Device$TrackingAuthorizationStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    .line 3591
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setTrackingStatusValue(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 3558
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->trackingStatus_:I

    .line 3559
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setUa(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2279
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2280
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setUaBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2311
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3400(Lcom/explorestack/protobuf/ByteString;)V

    .line 2313
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->ua_:Ljava/lang/Object;

    .line 2314
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 4104
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Device$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1905
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setW(I)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0

    .line 2534
    iput p1, p0, Lcom/appodeal/ads/api/Device$Builder;->w_:I

    .line 2535
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setWebviewVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3002
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3005
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 3006
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method

.method public setWebviewVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Device$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3035
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3037
    invoke-static {p1}, Lcom/appodeal/ads/api/Device;->access$3900(Lcom/explorestack/protobuf/ByteString;)V

    .line 3039
    iput-object p1, p0, Lcom/appodeal/ads/api/Device$Builder;->webviewVersion_:Ljava/lang/Object;

    .line 3040
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Device$Builder;->onChanged()V

    return-object p0
.end method
