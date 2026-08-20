.class public final Lcom/appodeal/ads/api/Services$Adjust$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$AdjustOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services$Adjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Services$Adjust$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/Services$AdjustOrBuilder;"
    }
.end annotation


# instance fields
.field private attributionId_:Ljava/lang/Object;

.field private conversionData_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1341
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1475
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1571
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1342
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 1323
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1347
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1475
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1571
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1348
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 1323
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1329
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Adjust_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1352
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->access$1300()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1424
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 2

    .line 1378
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    .line 1379
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Adjust;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1380
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->build()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->build()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 2

    .line 1387
    new-instance v0, Lcom/appodeal/ads/api/Services$Adjust;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Services$Adjust;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V

    .line 1388
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Adjust;->access$1502(Lcom/appodeal/ads/api/Services$Adjust;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Adjust;->access$1602(Lcom/appodeal/ads/api/Services$Adjust;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1357
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1358
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1360
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clear()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clear()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clear()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clear()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttributionId()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1546
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1547
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConversionData()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1642
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1643
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1407
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1412
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1396
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;

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

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->clone()Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1486
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1487
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1489
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1490
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    return-object v0

    .line 1493
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1506
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1507
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1508
    check-cast v0, Ljava/lang/String;

    .line 1509
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1511
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    return-object v0

    .line 1514
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConversionData()Ljava/lang/String;
    .locals 2

    .line 1581
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1582
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1583
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1585
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1586
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    return-object v0

    .line 1589
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1603
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1604
    check-cast v0, Ljava/lang/String;

    .line 1605
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1607
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    return-object v0

    .line 1610
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1

    .line 1373
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1368
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Adjust_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1335
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Adjust_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Adjust;

    const-class v2, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    .line 1336
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1437
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1438
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1439
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Adjust;->access$1500(Lcom/appodeal/ads/api/Services$Adjust;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1440
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    .line 1442
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust;->getConversionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1443
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Adjust;->access$1600(Lcom/appodeal/ads/api/Services$Adjust;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1444
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    .line 1446
    :cond_2
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Adjust;->access$1700(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    .line 1447
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1463
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->access$1800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1469
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1465
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Services$Adjust;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
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

    .line 1469
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    .line 1471
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 1428
    instance-of v0, p1, Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v0, :cond_0

    .line 1429
    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1

    .line 1431
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

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

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

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

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

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

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

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1675
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAttributionId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1529
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1532
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public setAttributionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1564
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Adjust;->access$1900(Lcom/explorestack/protobuf/ByteString;)V

    .line 1566
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->attributionId_:Ljava/lang/Object;

    .line 1567
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public setConversionData(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1625
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1628
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1629
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public setConversionDataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1660
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Adjust;->access$2000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1662
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Adjust$Builder;->conversionData_:Ljava/lang/Object;

    .line 1663
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1402
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1418
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 0

    .line 1669
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    return-object p1
.end method
