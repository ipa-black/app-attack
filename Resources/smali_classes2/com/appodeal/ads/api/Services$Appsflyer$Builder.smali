.class public final Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services$Appsflyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Services$Appsflyer$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;"
    }
.end annotation


# instance fields
.field private attributionId_:Ljava/lang/Object;

.field private conversionData_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 551
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 685
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 781
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 552
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 533
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 557
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 685
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 781
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 558
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 539
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Appsflyer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 562
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 634
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 590
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->build()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->build()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 2

    .line 597
    new-instance v0, Lcom/appodeal/ads/api/Services$Appsflyer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Services$Appsflyer;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V

    .line 598
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$402(Lcom/appodeal/ads/api/Services$Appsflyer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$502(Lcom/appodeal/ads/api/Services$Appsflyer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 567
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 570
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clear()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clear()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clear()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clear()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttributionId()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 756
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 757
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConversionData()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 852
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 853
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 617
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 622
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 606
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

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

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->clone()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 696
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 697
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 699
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 700
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    return-object v0

    .line 703
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 717
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 718
    check-cast v0, Ljava/lang/String;

    .line 719
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 721
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    return-object v0

    .line 724
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getConversionData()Ljava/lang/String;
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 792
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 793
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 795
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 796
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    return-object v0

    .line 799
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConversionDataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 813
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 814
    check-cast v0, Ljava/lang/String;

    .line 815
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 817
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    return-object v0

    .line 820
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1

    .line 583
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 578
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Appsflyer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 545
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_Appsflyer_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services$Appsflyer;

    const-class v2, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    .line 546
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 647
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$400(Lcom/appodeal/ads/api/Services$Appsflyer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 650
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    .line 652
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->getConversionData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$500(Lcom/appodeal/ads/api/Services$Appsflyer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 654
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    .line 656
    :cond_2
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$600(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    .line 657
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 673
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 675
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Services$Appsflyer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
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

    .line 679
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    .line 681
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 638
    instance-of v0, p1, Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v0, :cond_0

    .line 639
    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1

    .line 641
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

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

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

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

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

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

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

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 885
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAttributionId(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 743
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public setAttributionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$800(Lcom/explorestack/protobuf/ByteString;)V

    .line 776
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->attributionId_:Ljava/lang/Object;

    .line 777
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public setConversionData(Ljava/lang/String;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 839
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public setConversionDataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 868
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    invoke-static {p1}, Lcom/appodeal/ads/api/Services$Appsflyer;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 872
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->conversionData_:Ljava/lang/Object;

    .line 873
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 612
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 628
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 0

    .line 879
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    return-object p1
.end method
