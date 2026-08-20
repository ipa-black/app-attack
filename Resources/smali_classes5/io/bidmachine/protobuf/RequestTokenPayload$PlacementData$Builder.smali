.class public final Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "RequestTokenPayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestTokenPayload$PlacementDataOrBuilder;"
    }
.end annotation


# instance fields
.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 586
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 816
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 587
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 720
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 816
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 593
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestTokenPayload$1;)V
    .locals 0

    .line 568
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 574
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 597
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 669
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->build()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 2

    .line 623
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 625
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 2

    .line 632
    new-instance v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestTokenPayload$1;)V

    .line 633
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$402(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$502(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clear()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 602
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 603
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 605
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 652
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 657
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method

.method public clearSdk()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 791
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 792
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSdkver()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 887
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 888
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 641
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->clone()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    .locals 1

    .line 618
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 613
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 2

    .line 730
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 731
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 732
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 734
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 735
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 738
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 751
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 752
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 753
    check-cast v0, Ljava/lang/String;

    .line 754
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 756
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 759
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getSdkver()Ljava/lang/String;
    .locals 2

    .line 826
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 827
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 828
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 830
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 831
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 834
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 847
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 848
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 849
    check-cast v0, Ljava/lang/String;

    .line 850
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 852
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 855
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 580
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_RequestTokenPayload_PlacementData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    const-class v2, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    .line 581
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

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

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

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

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

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

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 708
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 714
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 710
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
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

    .line 714
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    .line 716
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 673
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    if-eqz v0, :cond_0

    .line 674
    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1

    .line 676
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 1

    .line 682
    invoke-static {}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getDefaultInstance()Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 683
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$400(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    .line 687
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 688
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$500(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    .line 691
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$600(Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    .line 692
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 920
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 647
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 663
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method

.method public setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 807
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$800(Lcom/explorestack/protobuf/ByteString;)V

    .line 811
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdk_:Ljava/lang/Object;

    .line 812
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 870
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 874
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 907
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->sdkver_:Ljava/lang/Object;

    .line 908
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 568
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;
    .locals 0

    .line 914
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestTokenPayload$PlacementData$Builder;

    return-object p1
.end method
