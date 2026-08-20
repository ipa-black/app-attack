.class public final Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "BidEvent.java"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/analytics/BidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/analytics/BidEvent$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/analytics/BidEventOrBuilder;"
    }
.end annotation


# instance fields
.field private adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ad_:Lcom/explorestack/protobuf/adcom/Ad;

.field private auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
            "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

.field private bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

.field private bidid_:Ljava/lang/Object;

.field private seat_:Ljava/lang/Object;

.field private timestamp_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 761
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 837
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 913
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 584
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 761
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 837
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 913
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 585
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/analytics/BidEvent$1;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;-><init>()V

    return-void
.end method

.method private getAdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            "Lcom/explorestack/protobuf/adcom/Ad$Builder;",
            "Lcom/explorestack/protobuf/adcom/AdOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1338
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v1

    .line 1339
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1340
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1341
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1343
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getAuctionContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            "Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;",
            "Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1097
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1100
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v1

    .line 1101
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1102
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1105
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getBidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1217
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1219
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    .line 1220
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1222
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1224
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 566
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 589
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 697
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->build()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/analytics/BidEvent;
    .locals 2

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 637
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/analytics/BidEvent;
    .locals 2

    .line 644
    new-instance v0, Lio/bidmachine/protobuf/analytics/BidEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/BidEvent$1;)V

    .line 645
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$402(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$502(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$602(Lio/bidmachine/protobuf/analytics/BidEvent;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 649
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$702(Lio/bidmachine/protobuf/analytics/BidEvent;Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 653
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 654
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_1

    .line 656
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$802(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 658
    :goto_1
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 659
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_2

    .line 661
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$902(Lio/bidmachine/protobuf/analytics/BidEvent;Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad;

    .line 663
    :goto_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 594
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 595
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 597
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 599
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 602
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_0

    .line 604
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 605
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 607
    :goto_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 608
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_1

    .line 610
    :cond_1
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 611
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 613
    :goto_1
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 614
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_2

    .line 616
    :cond_2
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 617
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_2
    return-object p0
.end method

.method public clearAd()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 1300
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1301
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1304
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1305
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearAuctionContext()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 1062
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1063
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1064
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1066
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1067
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearBid()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2

    .line 1181
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1182
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1185
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1186
    iput-object v1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearBidid()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 892
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 680
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 685
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public clearSeat()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 968
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 969
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimestamp()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 816
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 817
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 669
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->clone()Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAd()Lcom/explorestack/protobuf/adcom/Ad;
    .locals 1

    .line 1242
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1243
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1245
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad;

    return-object v0
.end method

.method public getAdBuilder()Lcom/explorestack/protobuf/adcom/Ad$Builder;
    .locals 1

    .line 1315
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    .line 1316
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAdFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Builder;

    return-object v0
.end method

.method public getAdOrBuilder()Lcom/explorestack/protobuf/adcom/AdOrBuilder;
    .locals 1

    .line 1322
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/AdOrBuilder;

    return-object v0

    .line 1325
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-nez v0, :cond_1

    .line 1326
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1

    .line 1004
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1005
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1007
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object v0
.end method

.method public getAuctionContextBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 1077
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    .line 1078
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getAuctionContextFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    return-object v0
.end method

.method public getAuctionContextOrBuilder()Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;
    .locals 1

    .line 1084
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1085
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;

    return-object v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v0, :cond_1

    .line 1088
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 1123
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1124
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1126
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object v0
.end method

.method public getBidBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 1196
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    .line 1197
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object v0
.end method

.method public getBidOrBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    .locals 1

    .line 1203
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;

    return-object v0

    .line 1206
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-nez v0, :cond_1

    .line 1207
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getBidid()Ljava/lang/String;
    .locals 2

    .line 843
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 844
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 845
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 847
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 848
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 851
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 860
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 861
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 862
    check-cast v0, Ljava/lang/String;

    .line 863
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 865
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 868
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 560
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/BidEvent;
    .locals 1

    .line 630
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 625
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getSeat()Ljava/lang/String;
    .locals 2

    .line 919
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 920
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 921
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 923
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 924
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    return-object v0

    .line 927
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSeatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 936
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 938
    check-cast v0, Ljava/lang/String;

    .line 939
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 941
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    return-object v0

    .line 944
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 2

    .line 767
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 768
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 769
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 771
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 772
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 775
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 784
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 785
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 786
    check-cast v0, Ljava/lang/String;

    .line 787
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 789
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 792
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public hasAd()Z
    .locals 1

    .line 1235
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

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

.method public hasAuctionContext()Z
    .locals 1

    .line 997
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

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

.method public hasBid()Z
    .locals 1

    .line 1116
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

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

    .line 572
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/BidEvent;

    const-class v2, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 573
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1282
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1283
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    if-eqz v0, :cond_0

    .line 1285
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad;)Lcom/explorestack/protobuf/adcom/Ad$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    goto :goto_0

    .line 1287
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1289
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_1

    .line 1291
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1044
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1045
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-eqz v0, :cond_0

    .line 1047
    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilder(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->buildPartial()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    goto :goto_0

    .line 1049
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1051
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_1

    .line 1053
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1163
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1164
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-eqz v0, :cond_0

    .line 1166
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilder(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    goto :goto_0

    .line 1168
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1170
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_1

    .line 1172
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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

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

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 749
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 755
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 751
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/analytics/BidEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
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

    .line 755
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 757
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 701
    instance-of v0, p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    if-eqz v0, :cond_0

    .line 702
    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1

    .line 704
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/analytics/BidEvent;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 710
    invoke-static {}, Lio/bidmachine/protobuf/analytics/BidEvent;->getDefaultInstance()Lio/bidmachine/protobuf/analytics/BidEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 711
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$400(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 713
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    .line 715
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$500(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 717
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    .line 719
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getSeat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 720
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$600(Lio/bidmachine/protobuf/analytics/BidEvent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    .line 723
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAuctionContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 724
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAuctionContext()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 726
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasBid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 729
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->hasAd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 730
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->getAd()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 732
    :cond_6
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1000(Lio/bidmachine/protobuf/analytics/BidEvent;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    .line 733
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1354
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public setAd(Lcom/explorestack/protobuf/adcom/Ad$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1269
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1270
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1271
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1252
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->adBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1256
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->ad_:Lcom/explorestack/protobuf/adcom/Ad;

    .line 1257
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1259
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1031
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1033
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1035
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->build()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAuctionContext(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1014
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContextBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->auctionContext_:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1019
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1021
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1150
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 1

    .line 1133
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1137
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bid_:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 1138
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    goto :goto_0

    .line 1140
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBidid(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 883
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public setBididBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 904
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 908
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->bidid_:Ljava/lang/Object;

    .line 909
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 675
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 691
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method

.method public setSeat(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 955
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 959
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public setSeatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 980
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 984
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->seat_:Ljava/lang/Object;

    .line 985
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestamp(Ljava/lang/String;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 803
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 807
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public setTimestampBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    invoke-static {p1}, Lio/bidmachine/protobuf/analytics/BidEvent;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 832
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->timestamp_:Ljava/lang/Object;

    .line 833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 560
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/analytics/BidEvent$Builder;
    .locals 0

    .line 1348
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/analytics/BidEvent$Builder;

    return-object p1
.end method
