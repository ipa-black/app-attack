.class public final Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SdkAnalyticContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/SdkAnalyticContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/SdkAnalyticContextOrBuilder;"
    }
.end annotation


# instance fields
.field private appVer_:Ljava/lang/Object;

.field private bmIfv_:Ljava/lang/Object;

.field private bundle_:Ljava/lang/Object;

.field private contype_:I

.field private dcid_:Ljava/lang/Object;

.field private deviceType_:I

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private ifa_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private os_:I

.field private osv_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private sellerId_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1215
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1458
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1554
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1650
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1724
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1975
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2071
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2167
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2263
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2359
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2455
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2529
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2603
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2699
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2795
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 1216
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 1221
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1458
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1554
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1650
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1724
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1975
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2071
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2167
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2263
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2359
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2455
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2529
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2603
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2699
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2795
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 1222
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1203
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3035
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 3036
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3038
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 3040
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 3041
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 3043
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1964
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1965
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1967
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 1968
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1969
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1970
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1972
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1226
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1356
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->build()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 2

    .line 1288
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1290
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 2

    .line 1297
    new-instance v0, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/SdkAnalyticContext$1;)V

    .line 1298
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$402(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$502(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$602(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 1301
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 1303
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 1305
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$802(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1307
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$902(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1002(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1102(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1202(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1302(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1402(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 1313
    iget v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1502(Lio/bidmachine/protobuf/SdkAnalyticContext;I)I

    .line 1314
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1602(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1702(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1802(Lio/bidmachine/protobuf/SdkAnalyticContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1318
    iget-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 1320
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1902(Lio/bidmachine/protobuf/SdkAnalyticContext;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 1322
    :goto_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 4

    .line 1231
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1232
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1234
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1236
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1238
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1240
    iget-object v2, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1241
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 1243
    :cond_0
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1244
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1246
    :goto_0
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 1248
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 1250
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 1252
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 1254
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1256
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 1258
    iput v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 1260
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 1262
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 1264
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 1266
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1267
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 1269
    :cond_1
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1270
    iput-object v3, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public clearAppVer()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2674
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2675
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBmIfv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2430
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2431
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBundle()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1625
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1626
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContype()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2598
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2599
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDcid()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2866
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 2867
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceType()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2524
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2525
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExt()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 2988
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2989
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2990
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_0

    .line 2992
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2993
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1339
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public clearGeo()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2

    .line 1917
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1918
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1919
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_0

    .line 1921
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1922
    iput-object v1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearIfa()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2238
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIfv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2334
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1344
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public clearOs()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1719
    iput v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1720
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOsv()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1795
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1796
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdk()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2046
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2047
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkver()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2142
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2143
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSellerId()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1529
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1530
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionId()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2770
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2771
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1328
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->clone()Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    .line 2613
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2614
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2615
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2617
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2618
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 2621
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2634
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2635
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2636
    check-cast v0, Ljava/lang/String;

    .line 2637
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2639
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 2642
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 2369
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2370
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2371
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2373
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2374
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2377
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2390
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2391
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2392
    check-cast v0, Ljava/lang/String;

    .line 2393
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2395
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2398
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getBundle()Ljava/lang/String;
    .locals 2

    .line 1564
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1565
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1566
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1568
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1569
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1572
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1585
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1586
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1587
    check-cast v0, Ljava/lang/String;

    .line 1588
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1590
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1593
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 2567
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2568
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_0
    return-object v0
.end method

.method public getContypeValue()I
    .locals 1

    .line 2539
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    return v0
.end method

.method public getDcid()Ljava/lang/String;
    .locals 2

    .line 2805
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 2806
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2807
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2809
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2810
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    return-object v0

    .line 2813
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDcidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2826
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 2827
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2828
    check-cast v0, Ljava/lang/String;

    .line 2829
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2831
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    return-object v0

    .line 2834
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/SdkAnalyticContext;
    .locals 1

    .line 1283
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1278
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 2493
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2494
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_0
    return-object v0
.end method

.method public getDeviceTypeValue()I
    .locals 1

    .line 2465
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    return v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 2914
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2915
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2917
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 3007
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 3008
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 3018
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 3019
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 3021
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 3022
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 1843
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1844
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1846
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public getGeoBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 1936
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1937
    invoke-direct {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 1947
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;

    return-object v0

    .line 1950
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_1

    .line 1951
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getIfa()Ljava/lang/String;
    .locals 2

    .line 2177
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2178
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2179
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2181
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2182
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 2185
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2198
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2200
    check-cast v0, Ljava/lang/String;

    .line 2201
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2203
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 2206
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 2273
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2274
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2275
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2277
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2278
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2281
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2294
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2295
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2296
    check-cast v0, Ljava/lang/String;

    .line 2297
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2299
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2302
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 1688
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1689
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_0
    return-object v0
.end method

.method public getOsValue()I
    .locals 1

    .line 1660
    iget v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    return v0
.end method

.method public getOsv()Ljava/lang/String;
    .locals 2

    .line 1734
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1735
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1736
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1738
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1739
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 1742
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1755
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1756
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1757
    check-cast v0, Ljava/lang/String;

    .line 1758
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1760
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 1763
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 1985
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 1986
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1987
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1989
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1990
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 1993
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2006
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2007
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2008
    check-cast v0, Ljava/lang/String;

    .line 2009
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2011
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 2014
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 2081
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2082
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2083
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2085
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2086
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 2089
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2102
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2103
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2104
    check-cast v0, Ljava/lang/String;

    .line 2105
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2107
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 2110
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSellerId()Ljava/lang/String;
    .locals 2

    .line 1468
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1469
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1470
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1472
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1473
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 1476
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1489
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1490
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1491
    check-cast v0, Ljava/lang/String;

    .line 1492
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1494
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 1497
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 2709
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2710
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2711
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2713
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2714
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 2717
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2730
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2731
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2732
    check-cast v0, Ljava/lang/String;

    .line 2733
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2735
    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 2738
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasExt()Z
    .locals 1

    .line 2903
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasGeo()Z
    .locals 1

    .line 1832
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1209
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_SdkAnalyticContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    const-class v2, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1210
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2966
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2967
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 2969
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 2971
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2973
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_1

    .line 2975
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

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

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1446
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1452
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1448
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/SdkAnalyticContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1449
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

    .line 1452
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1454
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1360
    instance-of v0, p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    if-eqz v0, :cond_0

    .line 1361
    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1

    .line 1363
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1369
    invoke-static {}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDefaultInstance()Lio/bidmachine/protobuf/SdkAnalyticContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1370
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1371
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$400(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1372
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1374
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1375
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$500(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1376
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1378
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$600(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1379
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setOsValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1381
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1382
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1383
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1385
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1386
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1388
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1389
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$900(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 1390
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1392
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1393
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 1394
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1396
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1397
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1100(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 1398
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1400
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1401
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1200(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 1402
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1404
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1405
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1300(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1406
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1408
    :cond_a
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1400(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 1409
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDeviceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setDeviceTypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1411
    :cond_b
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1500(Lio/bidmachine/protobuf/SdkAnalyticContext;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 1412
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getContypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setContypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1414
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1415
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1600(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 1416
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1418
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1419
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1700(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 1420
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1422
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getDcid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1423
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$1800(Lio/bidmachine/protobuf/SdkAnalyticContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 1424
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    .line 1426
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1427
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1429
    :cond_10
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2000(Lio/bidmachine/protobuf/SdkAnalyticContext;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    .line 1430
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1895
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1896
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    .line 1898
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 1900
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1902
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_1

    .line 1904
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3054
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2660
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2661
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2692
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 2694
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->appVer_:Ljava/lang/Object;

    .line 2695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2416
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2417
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2448
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2450
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2451
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1611
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1612
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1641
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1643
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1645
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->bundle_:Ljava/lang/Object;

    .line 1646
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2584
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2585
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setContypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2552
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->contype_:I

    .line 2553
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setDcid(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2849
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2852
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 2853
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setDcidBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2882
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2884
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3200(Lcom/explorestack/protobuf/ByteString;)V

    .line 2886
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->dcid_:Ljava/lang/Object;

    .line 2887
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2510
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2511
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceTypeValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2478
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->deviceType_:I

    .line 2479
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2949
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2950
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2951
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_0

    .line 2953
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 2928
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2932
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2933
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_0

    .line 2935
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1334
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1878
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1879
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1880
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_0

    .line 1882
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 1

    .line 1857
    iget-object v0, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1859
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1861
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1862
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    goto :goto_0

    .line 1864
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2224
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2225
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2256
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2258
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifa_:Ljava/lang/Object;

    .line 2259
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2320
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2352
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2354
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->ifv_:Ljava/lang/Object;

    .line 2355
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1705
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1706
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsValue(I)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1673
    iput p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->os_:I

    .line 1674
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1781
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1782
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1811
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1813
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1815
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->osv_:Ljava/lang/Object;

    .line 1816
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1350
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2029
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2032
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2033
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2064
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2066
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdk_:Ljava/lang/Object;

    .line 2067
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2128
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2129
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2160
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2162
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sdkver_:Ljava/lang/Object;

    .line 2163
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1515
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1516
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSellerIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 1545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1547
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$2200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1549
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sellerId_:Ljava/lang/Object;

    .line 1550
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2753
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2756
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2757
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 2786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2788
    invoke-static {p1}, Lio/bidmachine/protobuf/SdkAnalyticContext;->access$3100(Lcom/explorestack/protobuf/ByteString;)V

    .line 2790
    iput-object p1, p0, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->sessionId_:Ljava/lang/Object;

    .line 2791
    invoke-virtual {p0}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1197
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;
    .locals 0

    .line 3048
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/SdkAnalyticContext$Builder;

    return-object p1
.end method
