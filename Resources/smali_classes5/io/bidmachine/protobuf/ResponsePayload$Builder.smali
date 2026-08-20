.class public final Lio/bidmachine/protobuf/ResponsePayload$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "ResponsePayload.java"

# interfaces
.implements Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/ResponsePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/ResponsePayload$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/ResponsePayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private cacheTime_:Lcom/explorestack/protobuf/Timestamp;

.field private payloadOneofCase_:I

.field private payloadOneof_:Ljava/lang/Object;

.field private requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

.field private responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
            "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 570
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 745
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 571
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 745
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 577
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .locals 0

    .line 552
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/ResponsePayload$1;)V
    .locals 0

    .line 552
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;-><init>()V

    return-void
.end method

.method private getCacheTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Timestamp;",
            "Lcom/explorestack/protobuf/Timestamp$Builder;",
            "Lcom/explorestack/protobuf/TimestampOrBuilder;",
            ">;"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 908
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 909
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 910
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 913
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 558
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestItemSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            "Lcom/explorestack/protobuf/adcom/Placement$Builder;",
            "Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1081
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 1082
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1083
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1086
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getResponseCacheFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            "Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;",
            "Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 1312
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-eq v0, v1, :cond_0

    .line 1313
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1315
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v2, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 1318
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 1319
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1320
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1322
    :cond_1
    iput v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1323
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    .line 1324
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 581
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 682
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->build()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->build()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 2

    .line 617
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lio/bidmachine/protobuf/ResponsePayload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 619
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->buildPartial()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 3

    .line 626
    new-instance v0, Lio/bidmachine/protobuf/ResponsePayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/ResponsePayload;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/ResponsePayload$1;)V

    .line 627
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 628
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Timestamp;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$402(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 632
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 633
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1

    .line 635
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$502(Lio/bidmachine/protobuf/ResponsePayload;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    .line 637
    :goto_1
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 638
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_2
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 641
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 642
    iget-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 644
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$602(Lio/bidmachine/protobuf/ResponsePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_4
    :goto_2
    iget v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/ResponsePayload;->access$702(Lio/bidmachine/protobuf/ResponsePayload;I)I

    .line 648
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 586
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 587
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 588
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 590
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 591
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 593
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 594
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1

    .line 596
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 597
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    const/4 v0, 0x0

    .line 599
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 600
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCacheTime()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 858
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 859
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 860
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 862
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 863
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 665
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 670
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public clearPayloadOneof()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 754
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 756
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRequestItemSpec()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 1025
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1026
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1027
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 1029
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1030
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearResponseCache()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 5

    .line 1270
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_0

    .line 1271
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v0, v3, :cond_2

    .line 1272
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1273
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1274
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 1277
    :cond_0
    iget v4, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v4, v3, :cond_1

    .line 1278
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1279
    iput-object v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1281
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearResponseCacheUrl()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2

    .line 1162
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1163
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v0, 0x0

    .line 1164
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1165
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 654
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->clone()Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTime()Lcom/explorestack/protobuf/Timestamp;
    .locals 1

    .line 784
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 785
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0

    .line 787
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp;

    return-object v0
.end method

.method public getCacheTimeBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    .line 878
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getCacheTimeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Timestamp$Builder;

    return-object v0
.end method

.method public getCacheTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .locals 1

    .line 888
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/TimestampOrBuilder;

    return-object v0

    .line 891
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_1

    .line 892
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/ResponsePayload;
    .locals 1

    .line 612
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 607
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;
    .locals 1

    .line 749
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->forNumber(I)Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 943
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 944
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_0
    return-object v0

    .line 946
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public getRequestItemSpecBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 1046
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    .line 1047
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getRequestItemSpecFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object v0
.end method

.method public getRequestItemSpecOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .locals 1

    .line 1059
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;

    return-object v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_1

    .line 1063
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 3

    .line 1202
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 1203
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_0

    .line 1204
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 1206
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0

    .line 1208
    :cond_1
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_2

    .line 1209
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 1211
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCacheBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 1289
    invoke-direct {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->getResponseCacheFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    return-object v0
.end method

.method public getResponseCacheOrBuilder()Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;
    .locals 3

    .line 1296
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v2, :cond_0

    .line 1297
    invoke-virtual {v2}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1300
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0

    .line 1302
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCacheUrl()Ljava/lang/String;
    .locals 3

    .line 1104
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1105
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1104
    :cond_0
    const-string v0, ""

    .line 1107
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1108
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1110
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1111
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1

    .line 1112
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 1116
    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCacheUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 1127
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1128
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1127
    :cond_0
    const-string v0, ""

    .line 1130
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1131
    check-cast v0, Ljava/lang/String;

    .line 1132
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1134
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_1

    .line 1135
    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 1139
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasCacheTime()Z
    .locals 1

    .line 773
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

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

.method public hasRequestItemSpec()Z
    .locals 1

    .line 930
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

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

.method public hasResponseCache()Z
    .locals 2

    .line 1194
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponseCacheUrl()Z
    .locals 2

    .line 1095
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 564
    sget-object v0, Lio/bidmachine/protobuf/CacheProto;->internal_static_bidmachine_protobuf_ResponsePayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/ResponsePayload;

    const-class v2, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 565
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 836
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 837
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 839
    invoke-static {v0}, Lcom/explorestack/protobuf/Timestamp;->newBuilder(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    goto :goto_0

    .line 841
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 843
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_1

    .line 845
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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

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

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 734
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 740
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 736
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/ResponsePayload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
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

    .line 740
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 742
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 686
    instance-of v0, p1, Lio/bidmachine/protobuf/ResponsePayload;

    if-eqz v0, :cond_0

    .line 687
    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1

    .line 689
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/ResponsePayload;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 3

    .line 695
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 696
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasCacheTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getCacheTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 699
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->hasRequestItemSpec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 702
    :cond_2
    sget-object v0, Lio/bidmachine/protobuf/ResponsePayload$2;->$SwitchMap$io$bidmachine$protobuf$ResponsePayload$PayloadOneofCase:[I

    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getPayloadOneofCase()Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/protobuf/ResponsePayload$PayloadOneofCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 710
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    goto :goto_0

    .line 704
    :cond_4
    iput v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 705
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$600(Lio/bidmachine/protobuf/ResponsePayload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 706
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    .line 717
    :goto_0
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$800(Lio/bidmachine/protobuf/ResponsePayload;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1001
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1002
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_0

    .line 1004
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_0

    .line 1006
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1008
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_1

    .line 1010
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 3

    .line 1248
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 1249
    iget v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1250
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1251
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    .line 1252
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1254
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1256
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_1

    .line 1258
    :cond_1
    iget v2, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    if-ne v2, v1, :cond_2

    .line 1259
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1261
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1263
    :goto_1
    iput v1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 1335
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public setCacheTime(Lcom/explorestack/protobuf/Timestamp$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 819
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 820
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 821
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCacheTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 798
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTimeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->cacheTime_:Lcom/explorestack/protobuf/Timestamp;

    .line 803
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 660
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 676
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method

.method public setRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 982
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 984
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRequestItemSpec(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 959
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpecBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->requestItemSpec_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 964
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1235
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1236
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1237
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 1239
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->build()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x3

    .line 1241
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponseCache(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1218
    iget-object v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->responseCacheBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1222
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    goto :goto_0

    .line 1225
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 p1, 0x3

    .line 1227
    iput p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    return-object p0
.end method

.method public setResponseCacheUrl(Ljava/lang/String;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 1152
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1153
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1154
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    return-object p0
.end method

.method public setResponseCacheUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 1

    .line 1177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    invoke-static {p1}, Lio/bidmachine/protobuf/ResponsePayload;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    const/4 v0, 0x2

    .line 1180
    iput v0, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneofCase_:I

    .line 1181
    iput-object p1, p0, Lio/bidmachine/protobuf/ResponsePayload$Builder;->payloadOneof_:Ljava/lang/Object;

    .line 1182
    invoke-virtual {p0}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/ResponsePayload$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/ResponsePayload$Builder;
    .locals 0

    .line 1329
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/ResponsePayload$Builder;

    return-object p1
.end method
