.class public final Lcom/appodeal/ads/api/Geo$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Geo.java"

# interfaces
.implements Lcom/appodeal/ads/api/GeoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Geo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Geo$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/GeoOrBuilder;"
    }
.end annotation


# instance fields
.field private lat_:F

.field private localTime_:J

.field private lon_:F

.field private lt_:I

.field private utcoffset_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 555
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 791
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    .line 556
    invoke-direct {p0}, Lcom/appodeal/ads/api/Geo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Geo$1;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Lcom/appodeal/ads/api/Geo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 561
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 791
    iput p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    .line 562
    invoke-direct {p0}, Lcom/appodeal/ads/api/Geo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Geo$1;)V
    .locals 0

    .line 537
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 543
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 566
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 647
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Geo;
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->buildPartial()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Geo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 600
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Geo$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->build()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->build()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Geo;
    .locals 3

    .line 607
    new-instance v0, Lcom/appodeal/ads/api/Geo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Geo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Geo$1;)V

    .line 608
    iget v1, p0, Lcom/appodeal/ads/api/Geo$Builder;->utcoffset_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Geo;->access$402(Lcom/appodeal/ads/api/Geo;I)I

    .line 609
    iget-wide v1, p0, Lcom/appodeal/ads/api/Geo$Builder;->localTime_:J

    invoke-static {v0, v1, v2}, Lcom/appodeal/ads/api/Geo;->access$502(Lcom/appodeal/ads/api/Geo;J)J

    .line 610
    iget v1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Geo;->access$602(Lcom/appodeal/ads/api/Geo;I)I

    .line 611
    iget v1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lat_:F

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Geo;->access$702(Lcom/appodeal/ads/api/Geo;F)F

    .line 612
    iget v1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lon_:F

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Geo;->access$802(Lcom/appodeal/ads/api/Geo;F)F

    .line 613
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->buildPartial()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->buildPartial()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 3

    .line 571
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 572
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->utcoffset_:I

    const-wide/16 v1, 0x0

    .line 574
    iput-wide v1, p0, Lcom/appodeal/ads/api/Geo$Builder;->localTime_:J

    .line 576
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lat_:F

    .line 580
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lon_:F

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clear()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clear()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clear()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clear()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 630
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLat()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 903
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lat_:F

    .line 904
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLocalTime()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 786
    iput-wide v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->localTime_:J

    .line 787
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLon()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 946
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lon_:F

    .line 947
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLt()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 860
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    .line 861
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 635
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearUtcoffset()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 743
    iput v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->utcoffset_:I

    .line 744
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    .line 619
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Geo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clone()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clone()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clone()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clone()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clone()Lcom/appodeal/ads/api/Geo$Builder;

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

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->clone()Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Geo;
    .locals 1

    .line 593
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->getDefaultInstance()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 588
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Geo_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getLat()F
    .locals 1

    .line 876
    iget v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lat_:F

    return v0
.end method

.method public getLocalTime()J
    .locals 2

    .line 759
    iget-wide v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->localTime_:J

    return-wide v0
.end method

.method public getLon()F
    .locals 1

    .line 919
    iget v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lon_:F

    return v0
.end method

.method public getLt()Lcom/appodeal/ads/api/Geo$LocationType;
    .locals 1

    .line 829
    iget v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    invoke-static {v0}, Lcom/appodeal/ads/api/Geo$LocationType;->valueOf(I)Lcom/appodeal/ads/api/Geo$LocationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 830
    sget-object v0, Lcom/appodeal/ads/api/Geo$LocationType;->UNRECOGNIZED:Lcom/appodeal/ads/api/Geo$LocationType;

    :cond_0
    return-object v0
.end method

.method public getLtValue()I
    .locals 1

    .line 801
    iget v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    return v0
.end method

.method public getUtcoffset()I
    .locals 1

    .line 716
    iget v0, p0, Lcom/appodeal/ads/api/Geo$Builder;->utcoffset_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 549
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Geo_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Geo;

    const-class v2, Lcom/appodeal/ads/api/Geo$Builder;

    .line 550
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 4

    .line 660
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->getDefaultInstance()Lcom/appodeal/ads/api/Geo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 661
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getUtcoffset()I

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getUtcoffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Geo$Builder;->setUtcoffset(I)Lcom/appodeal/ads/api/Geo$Builder;

    .line 664
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLocalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 665
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLocalTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/api/Geo$Builder;->setLocalTime(J)Lcom/appodeal/ads/api/Geo$Builder;

    .line 667
    :cond_2
    invoke-static {p1}, Lcom/appodeal/ads/api/Geo;->access$600(Lcom/appodeal/ads/api/Geo;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLtValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Geo$Builder;->setLtValue(I)Lcom/appodeal/ads/api/Geo$Builder;

    .line 670
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLat()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 671
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Geo$Builder;->setLat(F)Lcom/appodeal/ads/api/Geo$Builder;

    .line 673
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLon()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 674
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo;->getLon()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Geo$Builder;->setLon(F)Lcom/appodeal/ads/api/Geo$Builder;

    .line 676
    :cond_5
    invoke-static {p1}, Lcom/appodeal/ads/api/Geo;->access$900(Lcom/appodeal/ads/api/Geo;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;

    .line 677
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 693
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Geo;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 699
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 695
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Geo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
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

    .line 699
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;

    .line 701
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 1

    .line 651
    instance-of v0, p1, Lcom/appodeal/ads/api/Geo;

    if-eqz v0, :cond_0

    .line 652
    check-cast p1, Lcom/appodeal/ads/api/Geo;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/appodeal/ads/api/Geo;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1

    .line 654
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

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Geo$Builder;

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

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo$Builder;

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

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Geo$Builder;

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

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 959
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 625
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Geo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLat(F)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 889
    iput p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lat_:F

    .line 890
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLocalTime(J)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 772
    iput-wide p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->localTime_:J

    .line 773
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLon(F)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 932
    iput p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lon_:F

    .line 933
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLt(Lcom/appodeal/ads/api/Geo$LocationType;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 843
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 846
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Geo$LocationType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    .line 847
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setLtValue(I)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 814
    iput p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->lt_:I

    .line 815
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 641
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Geo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Geo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 953
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Geo$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Geo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Geo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUtcoffset(I)Lcom/appodeal/ads/api/Geo$Builder;
    .locals 0

    .line 729
    iput p1, p0, Lcom/appodeal/ads/api/Geo$Builder;->utcoffset_:I

    .line 730
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Geo$Builder;->onChanged()V

    return-object p0
.end method
