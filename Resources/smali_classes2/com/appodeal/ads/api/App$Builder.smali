.class public final Lcom/appodeal/ads/api/App$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "App.java"

# interfaces
.implements Lcom/appodeal/ads/api/AppOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/App$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/AppOrBuilder;"
    }
.end annotation


# instance fields
.field private activeAppUptime_:J

.field private appKey_:Ljava/lang/Object;

.field private appUptime_:J

.field private bundle_:Ljava/lang/Object;

.field private frameworkVersion_:Ljava/lang/Object;

.field private framework_:Ljava/lang/Object;

.field private installTime_:J

.field private installer_:Ljava/lang/Object;

.field private monotonicAppUptime_:J

.field private multidex_:Z

.field private pluginVersion_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private ver_:Ljava/lang/Object;

.field private versionCode_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 951
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1163
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1259
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1398
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1494
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1633
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1729
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1911
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 2007
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 952
    invoke-direct {p0}, Lcom/appodeal/ads/api/App$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/App$1;)V
    .locals 0

    .line 933
    invoke-direct {p0}, Lcom/appodeal/ads/api/App$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 957
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1163
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1259
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1398
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1494
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1633
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1729
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1911
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 2007
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 958
    invoke-direct {p0}, Lcom/appodeal/ads/api/App$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/App$1;)V
    .locals 0

    .line 933
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/App$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 939
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 962
    invoke-static {}, Lcom/appodeal/ads/api/App;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1070
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/App;
    .locals 2

    .line 1012
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->buildPartial()Lcom/appodeal/ads/api/App;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1014
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/App$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->build()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->build()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/App;
    .locals 3

    .line 1021
    new-instance v0, Lcom/appodeal/ads/api/App;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/App;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/App$1;)V

    .line 1022
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$402(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$502(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->installTime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/App;->access$602(Lcom/appodeal/ads/api/App;J)J

    .line 1025
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$702(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$802(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-boolean v1, p0, Lcom/appodeal/ads/api/App$Builder;->multidex_:Z

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$902(Lcom/appodeal/ads/api/App;Z)Z

    .line 1028
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$1002(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$1102(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget v1, p0, Lcom/appodeal/ads/api/App$Builder;->versionCode_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$1202(Lcom/appodeal/ads/api/App;I)I

    .line 1031
    iget-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->appUptime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/App;->access$1302(Lcom/appodeal/ads/api/App;J)J

    .line 1032
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$1402(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iget-object v1, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/App;->access$1502(Lcom/appodeal/ads/api/App;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->monotonicAppUptime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/App;->access$1602(Lcom/appodeal/ads/api/App;J)J

    .line 1035
    iget-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->activeAppUptime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/App;->access$1702(Lcom/appodeal/ads/api/App;J)J

    .line 1036
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->buildPartial()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->buildPartial()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/App$Builder;
    .locals 4

    .line 967
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 968
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 970
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 972
    iput-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->installTime_:J

    .line 974
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 976
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 978
    iput-boolean v3, p0, Lcom/appodeal/ads/api/App$Builder;->multidex_:Z

    .line 980
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 982
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 984
    iput v3, p0, Lcom/appodeal/ads/api/App$Builder;->versionCode_:I

    .line 986
    iput-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->appUptime_:J

    .line 988
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 990
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 992
    iput-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->monotonicAppUptime_:J

    .line 994
    iput-wide v1, p0, Lcom/appodeal/ads/api/App$Builder;->activeAppUptime_:J

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clear()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clear()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clear()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clear()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearActiveAppUptime()Lcom/appodeal/ads/api/App$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    .line 2184
    iput-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->activeAppUptime_:J

    .line 2185
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAppKey()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1704
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1705
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAppUptime()Lcom/appodeal/ads/api/App$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1906
    iput-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->appUptime_:J

    .line 1907
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBundle()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1234
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1235
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1053
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFramework()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1982
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getFramework()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 1983
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFrameworkVersion()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 2078
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 2079
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInstallTime()Lcom/appodeal/ads/api/App$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1393
    iput-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->installTime_:J

    .line 1394
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInstaller()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1565
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getInstaller()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1566
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMonotonicAppUptime()Lcom/appodeal/ads/api/App$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 2141
    iput-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->monotonicAppUptime_:J

    .line 2142
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMultidex()Lcom/appodeal/ads/api/App$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1628
    iput-boolean v0, p0, Lcom/appodeal/ads/api/App$Builder;->multidex_:Z

    .line 1629
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1058
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPluginVersion()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1469
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1470
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdk()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1800
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1801
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVer()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1330
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/App;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1331
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionCode()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1863
    iput v0, p0, Lcom/appodeal/ads/api/App$Builder;->versionCode_:I

    .line 1864
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1042
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/App$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clone()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clone()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clone()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clone()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clone()Lcom/appodeal/ads/api/App$Builder;

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

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->clone()Lcom/appodeal/ads/api/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAppUptime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2157
    iget-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->activeAppUptime_:J

    return-wide v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1644
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1645
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1647
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1648
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    return-object v0

    .line 1651
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppKeyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1665
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1666
    check-cast v0, Ljava/lang/String;

    .line 1667
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1669
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    return-object v0

    .line 1672
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getAppUptime()J
    .locals 2

    .line 1879
    iget-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->appUptime_:J

    return-wide v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1174
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1175
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1177
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1178
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1181
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1194
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1195
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1196
    check-cast v0, Ljava/lang/String;

    .line 1197
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1199
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1202
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/App;
    .locals 1

    .line 1007
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/App;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1002
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFramework()Ljava/lang/String;
    .locals 2

    .line 1921
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 1922
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1923
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1925
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1926
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    return-object v0

    .line 1929
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFrameworkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1942
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 1943
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1944
    check-cast v0, Ljava/lang/String;

    .line 1945
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1947
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    return-object v0

    .line 1950
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 2

    .line 2017
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 2018
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2019
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2021
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2022
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    return-object v0

    .line 2025
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFrameworkVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 2039
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2040
    check-cast v0, Ljava/lang/String;

    .line 2041
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2043
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    return-object v0

    .line 2046
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getInstallTime()J
    .locals 2

    .line 1366
    iget-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->installTime_:J

    return-wide v0
.end method

.method public getInstaller()Ljava/lang/String;
    .locals 2

    .line 1504
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1505
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1506
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1508
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1509
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    return-object v0

    .line 1512
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInstallerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1525
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1526
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1527
    check-cast v0, Ljava/lang/String;

    .line 1528
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1530
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    return-object v0

    .line 1533
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getMonotonicAppUptime()J
    .locals 2

    .line 2114
    iget-wide v0, p0, Lcom/appodeal/ads/api/App$Builder;->monotonicAppUptime_:J

    return-wide v0
.end method

.method public getMultidex()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1601
    iget-boolean v0, p0, Lcom/appodeal/ads/api/App$Builder;->multidex_:Z

    return v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 2

    .line 1408
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1409
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1410
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1412
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1413
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    return-object v0

    .line 1416
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1430
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1431
    check-cast v0, Ljava/lang/String;

    .line 1432
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1434
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    return-object v0

    .line 1437
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 1739
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1740
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1741
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1743
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1744
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 1747
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1760
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1761
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1762
    check-cast v0, Ljava/lang/String;

    .line 1763
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1765
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 1768
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 2

    .line 1269
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1270
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1271
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1273
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1274
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 1277
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1290
    iget-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1291
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1292
    check-cast v0, Ljava/lang/String;

    .line 1293
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1295
    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    return-object v0

    .line 1298
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1836
    iget v0, p0, Lcom/appodeal/ads/api/App$Builder;->versionCode_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 945
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/App;

    const-class v2, Lcom/appodeal/ads/api/App$Builder;

    .line 946
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;
    .locals 4

    .line 1083
    invoke-static {}, Lcom/appodeal/ads/api/App;->getDefaultInstance()Lcom/appodeal/ads/api/App;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1084
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$400(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1086
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1088
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1089
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$500(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1090
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1092
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getInstallTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1093
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getInstallTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/App$Builder;->setInstallTime(J)Lcom/appodeal/ads/api/App$Builder;

    .line 1095
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1096
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$700(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1097
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1099
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getInstaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1100
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$800(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1101
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1103
    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getMultidex()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1104
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getMultidex()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/App$Builder;->setMultidex(Z)Lcom/appodeal/ads/api/App$Builder;

    .line 1106
    :cond_6
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1107
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$1000(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1108
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1110
    :cond_7
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1111
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$1100(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1112
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1114
    :cond_8
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getVersionCode()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1115
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/App$Builder;->setVersionCode(I)Lcom/appodeal/ads/api/App$Builder;

    .line 1117
    :cond_9
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getAppUptime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 1118
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getAppUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/App$Builder;->setAppUptime(J)Lcom/appodeal/ads/api/App$Builder;

    .line 1120
    :cond_a
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getFramework()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1121
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$1400(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 1122
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1124
    :cond_b
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1125
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$1500(Lcom/appodeal/ads/api/App;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 1126
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    .line 1128
    :cond_c
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getMonotonicAppUptime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 1129
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getMonotonicAppUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/App$Builder;->setMonotonicAppUptime(J)Lcom/appodeal/ads/api/App$Builder;

    .line 1131
    :cond_d
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getActiveAppUptime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 1132
    invoke-virtual {p1}, Lcom/appodeal/ads/api/App;->getActiveAppUptime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/App$Builder;->setActiveAppUptime(J)Lcom/appodeal/ads/api/App$Builder;

    .line 1134
    :cond_e
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$1800(Lcom/appodeal/ads/api/App;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;

    .line 1135
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1151
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/App;->access$1900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1157
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1153
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/App;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
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

    .line 1157
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;

    .line 1159
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/App$Builder;
    .locals 1

    .line 1074
    instance-of v0, p1, Lcom/appodeal/ads/api/App;

    if-eqz v0, :cond_0

    .line 1075
    check-cast p1, Lcom/appodeal/ads/api/App;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/appodeal/ads/api/App;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1

    .line 1077
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

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/App$Builder;

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

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App$Builder;

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

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/App$Builder;

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

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 2197
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setActiveAppUptime(J)Lcom/appodeal/ads/api/App$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2170
    iput-wide p1, p0, Lcom/appodeal/ads/api/App$Builder;->activeAppUptime_:J

    .line 2171
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1690
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1691
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppKeyBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1722
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1724
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->appKey_:Ljava/lang/Object;

    .line 1725
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppUptime(J)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1892
    iput-wide p1, p0, Lcom/appodeal/ads/api/App$Builder;->appUptime_:J

    .line 1893
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1221
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1254
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->bundle_:Ljava/lang/Object;

    .line 1255
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1048
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/App$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFramework(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1968
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 1969
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setFrameworkBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1998
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2000
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2002
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->framework_:Ljava/lang/Object;

    .line 2003
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setFrameworkVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 2061
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2064
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 2065
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setFrameworkVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 2094
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2096
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2098
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->frameworkVersion_:Ljava/lang/Object;

    .line 2099
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallTime(J)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1379
    iput-wide p1, p0, Lcom/appodeal/ads/api/App$Builder;->installTime_:J

    .line 1380
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstaller(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1551
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1552
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setInstallerBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1583
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1585
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->installer_:Ljava/lang/Object;

    .line 1586
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setMonotonicAppUptime(J)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 2127
    iput-wide p1, p0, Lcom/appodeal/ads/api/App$Builder;->monotonicAppUptime_:J

    .line 2128
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setMultidex(Z)Lcom/appodeal/ads/api/App$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1614
    iput-boolean p1, p0, Lcom/appodeal/ads/api/App$Builder;->multidex_:Z

    .line 1615
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setPluginVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1455
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1456
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setPluginVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1487
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1489
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->pluginVersion_:Ljava/lang/Object;

    .line 1490
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1064
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/App$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/App$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1783
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1786
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1787
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1820
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->sdk_:Ljava/lang/Object;

    .line 1821
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 2191
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/App$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/App$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/App$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVer(Ljava/lang/String;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1316
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1317
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1348
    invoke-static {p1}, Lcom/appodeal/ads/api/App;->access$2100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1350
    iput-object p1, p0, Lcom/appodeal/ads/api/App$Builder;->ver_:Ljava/lang/Object;

    .line 1351
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionCode(I)Lcom/appodeal/ads/api/App$Builder;
    .locals 0

    .line 1849
    iput p1, p0, Lcom/appodeal/ads/api/App$Builder;->versionCode_:I

    .line 1850
    invoke-virtual {p0}, Lcom/appodeal/ads/api/App$Builder;->onChanged()V

    return-object p0
.end method
