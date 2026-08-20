.class public final Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AuctionContext.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/AuctionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;"
    }
.end annotation


# instance fields
.field private at_:I

.field private contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private id_:Ljava/lang/Object;

.field private itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

.field private placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

.field private placementTag_:I

.field private placement_:Lcom/explorestack/protobuf/adcom/Placement;

.field private test_:Z

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 614
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 884
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1022
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 615
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 808
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 884
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1022
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 621
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .locals 0

    .line 596
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .locals 0

    .line 596
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>()V

    return-void
.end method

.method private getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context;",
            "Lcom/explorestack/protobuf/adcom/Context$Builder;",
            "Lcom/explorestack/protobuf/adcom/ContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1423
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1425
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 1426
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1427
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1428
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1430
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 602
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getItemFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1185
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 1188
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1189
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1190
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1192
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getPlacementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
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

    .line 1303
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1306
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 1307
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1308
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1309
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1311
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 625
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 739
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 2

    .line 675
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 677
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 2

    .line 684
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    .line 685
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$402(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$502(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-boolean v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$602(Lio/bidmachine/protobuf/analytics/AuctionContext;Z)Z

    .line 688
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$702(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I

    .line 689
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$802(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I

    .line 690
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 691
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$902(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$902(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 695
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 696
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1002(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1

    .line 698
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1002(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;

    .line 700
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 701
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1102(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_2

    .line 703
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1102(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;

    .line 705
    :goto_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2

    .line 630
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 631
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 633
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    .line 637
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    .line 639
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 641
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 642
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto :goto_0

    .line 644
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 645
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 647
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 648
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_1

    .line 650
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 651
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 653
    :goto_1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 654
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_2

    .line 656
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 657
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_2
    return-object p0
.end method

.method public clearAt()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1017
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    .line 1018
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearContext()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2

    .line 1387
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1388
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1389
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1391
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1392
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 722
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public clearId()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 939
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 940
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearItem()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2

    .line 1149
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1150
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1151
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1153
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1154
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 727
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public clearPlacement()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2

    .line 1268
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1269
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1270
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1272
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1273
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearPlacementTag()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1071
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 1072
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTest()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 986
    iput-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    .line 987
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 863
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 864
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 711
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->clone()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAt()I
    .locals 1

    .line 998
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    return v0
.end method

.method public getContext()Lcom/explorestack/protobuf/adcom/Context;
    .locals 1

    .line 1329
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1330
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1332
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context;

    return-object v0
.end method

.method public getContextBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;
    .locals 1

    .line 1402
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    .line 1403
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Builder;

    return-object v0
.end method

.method public getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .locals 1

    .line 1409
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ContextOrBuilder;

    return-object v0

    .line 1412
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_1

    .line 1413
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1

    .line 670
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 665
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 890
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 891
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 892
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 894
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 895
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 898
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 907
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 908
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 909
    check-cast v0, Ljava/lang/String;

    .line 910
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 912
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 915
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 1091
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1092
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1094
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object v0
.end method

.method public getItemBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    .line 1165
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getItemFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    return-object v0
.end method

.method public getItemOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .locals 1

    .line 1171
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;

    return-object v0

    .line 1174
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v0, :cond_1

    .line 1175
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPlacement()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 1210
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1211
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1213
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public getPlacementBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 1283
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    .line 1284
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->getPlacementFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    return-object v0
.end method

.method public getPlacementOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .locals 1

    .line 1290
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;

    return-object v0

    .line 1293
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_1

    .line 1294
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPlacementTag()Lio/bidmachine/protobuf/analytics/PlacementTag;
    .locals 1

    .line 1048
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/PlacementTag;->valueOf(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1049
    sget-object v0, Lio/bidmachine/protobuf/analytics/PlacementTag;->UNRECOGNIZED:Lio/bidmachine/protobuf/analytics/PlacementTag;

    :cond_0
    return-object v0
.end method

.method public getPlacementTagValue()I
    .locals 1

    .line 1028
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    return v0
.end method

.method public getTest()Z
    .locals 1

    .line 967
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 2

    .line 814
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 815
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 816
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 818
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 819
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 822
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 831
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 832
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 833
    check-cast v0, Ljava/lang/String;

    .line 834
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 836
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 839
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasContext()Z
    .locals 1

    .line 1322
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

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

.method public hasItem()Z
    .locals 1

    .line 1084
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

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

.method public hasPlacement()Z
    .locals 1

    .line 1203
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

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

    .line 608
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const-class v2, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 609
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1369
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1370
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_0

    .line 1372
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_0

    .line 1374
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1376
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_1

    .line 1378
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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

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

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 796
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 802
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 798
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/analytics/AuctionContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
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

    .line 802
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 804
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 743
    instance-of v0, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v0, :cond_0

    .line 744
    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 752
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 753
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$400(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 755
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    .line 757
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 758
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$500(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 759
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    .line 761
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setTest(Z)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 764
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 765
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setAt(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 767
    :cond_4
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$800(Lio/bidmachine/protobuf/analytics/AuctionContext;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 768
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacementTagValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setPlacementTagValue(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 770
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 771
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 773
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 774
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 776
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 779
    :cond_8
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1200(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 780
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1131
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1132
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_0

    .line 1134
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto :goto_0

    .line 1136
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1138
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_1

    .line 1140
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergePlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1250
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1251
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_0

    .line 1253
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_0

    .line 1255
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1257
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_1

    .line 1259
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 1441
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public setAt(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 1007
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->at_:I

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context$Builder;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1356
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1357
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1358
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1360
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1339
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->contextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1343
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->context_:Lcom/explorestack/protobuf/adcom/Context;

    .line 1344
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1346
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 717
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 926
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 929
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 930
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 955
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->id_:Ljava/lang/Object;

    .line 956
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setItem(Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1118
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1119
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1120
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1122
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1101
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->itemBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1105
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 1106
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1237
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1238
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1241
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1220
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1224
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    .line 1225
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    goto :goto_0

    .line 1227
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlacementTag(Lio/bidmachine/protobuf/analytics/PlacementTag;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/PlacementTag;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 1062
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setPlacementTagValue(I)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 1037
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->placementTag_:I

    .line 1038
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 733
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method

.method public setTest(Z)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 976
    iput-boolean p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->test_:Z

    .line 977
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 853
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 854
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestampBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 879
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->timestamp_:Ljava/lang/Object;

    .line 880
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 0

    .line 1435
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object p1
.end method
