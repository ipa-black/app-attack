.class public final Lcom/appodeal/ads/api/Adapter$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Adapter.java"

# interfaces
.implements Lcom/appodeal/ads/api/AdapterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Adapter$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/AdapterOrBuilder;"
    }
.end annotation


# instance fields
.field private networkSdkVersion_:Ljava/lang/Object;

.field private status_:Ljava/lang/Object;

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 437
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 674
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 770
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 438
    invoke-direct {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Adapter$1;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/appodeal/ads/api/Adapter$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 578
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 674
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 770
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 444
    invoke-direct {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Adapter$1;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 425
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Adapter_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 448
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 523
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Adapter;
    .locals 2

    .line 476
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->buildPartial()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Adapter;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 478
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Adapter$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->build()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Adapter;
    .locals 2

    .line 485
    new-instance v0, Lcom/appodeal/ads/api/Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Adapter;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Adapter$1;)V

    .line 486
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Adapter;->access$402(Lcom/appodeal/ads/api/Adapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Adapter;->access$502(Lcom/appodeal/ads/api/Adapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Adapter;->access$602(Lcom/appodeal/ads/api/Adapter;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->buildPartial()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->buildPartial()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 456
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 458
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clear()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clear()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clear()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clear()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 506
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearNetworkSdkVersion()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 841
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 842
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 511
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStatus()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 649
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Adapter;->getStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 650
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 745
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Adapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 746
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 495
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clone()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clone()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clone()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clone()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clone()Lcom/appodeal/ads/api/Adapter$Builder;

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

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->clone()Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Adapter;
    .locals 1

    .line 471
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 466
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Adapter_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getNetworkSdkVersion()Ljava/lang/String;
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 781
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 782
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 784
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 785
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 788
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSdkVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 802
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 803
    check-cast v0, Ljava/lang/String;

    .line 804
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 806
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    return-object v0

    .line 809
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 589
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 590
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 592
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 593
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    return-object v0

    .line 596
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatusBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 610
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 611
    check-cast v0, Ljava/lang/String;

    .line 612
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 614
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    return-object v0

    .line 617
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 685
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 686
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 688
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 689
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 692
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 706
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 707
    check-cast v0, Ljava/lang/String;

    .line 708
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 710
    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 713
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 431
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Adapter_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Adapter;

    const-class v2, Lcom/appodeal/ads/api/Adapter$Builder;

    .line 432
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 536
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->getDefaultInstance()Lcom/appodeal/ads/api/Adapter;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 537
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$400(Lcom/appodeal/ads/api/Adapter;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 539
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    .line 541
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$500(Lcom/appodeal/ads/api/Adapter;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 543
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    .line 545
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Adapter;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 546
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$600(Lcom/appodeal/ads/api/Adapter;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 547
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    .line 549
    :cond_3
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$700(Lcom/appodeal/ads/api/Adapter;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;

    .line 550
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 566
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Adapter;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 568
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Adapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
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

    .line 572
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;

    .line 574
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 1

    .line 527
    instance-of v0, p1, Lcom/appodeal/ads/api/Adapter;

    if-eqz v0, :cond_0

    .line 528
    check-cast p1, Lcom/appodeal/ads/api/Adapter;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/appodeal/ads/api/Adapter;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1

    .line 530
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

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Adapter$Builder;

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

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter$Builder;

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

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Adapter$Builder;

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

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 874
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 501
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Adapter$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkSdkVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 824
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 827
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 828
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public setNetworkSdkVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 861
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->networkSdkVersion_:Ljava/lang/Object;

    .line 862
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 517
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Adapter$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Adapter$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Ljava/lang/String;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 632
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 636
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatusBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 665
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 669
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->status_:Ljava/lang/Object;

    .line 670
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 868
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Adapter$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Adapter$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Adapter$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Ljava/lang/String;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 728
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 732
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Adapter$Builder;
    .locals 0

    .line 761
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    invoke-static {p1}, Lcom/appodeal/ads/api/Adapter;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 765
    iput-object p1, p0, Lcom/appodeal/ads/api/Adapter$Builder;->version_:Ljava/lang/Object;

    .line 766
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Adapter$Builder;->onChanged()V

    return-object p0
.end method
