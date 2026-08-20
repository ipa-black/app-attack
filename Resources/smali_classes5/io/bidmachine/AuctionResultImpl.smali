.class final Lio/bidmachine/AuctionResultImpl;
.super Ljava/lang/Object;
.source "AuctionResultImpl.java"

# interfaces
.implements Lio/bidmachine/models/AuctionResult;


# instance fields
.field private final adDomains:[Ljava/lang/String;

.field private final cid:Ljava/lang/String;

.field private final creativeFormat:Lio/bidmachine/CreativeFormat;

.field private final creativeId:Ljava/lang/String;

.field private final customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deal:Ljava/lang/String;

.field private final demandSource:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final networkKey:Ljava/lang/String;

.field private final networkParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final price:D


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;Lio/bidmachine/protobuf/AdExtension;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AuctionResultImpl;->id:Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->demandSource:Ljava/lang/String;

    .line 51
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/AuctionResultImpl;->price:D

    .line 52
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->deal:Ljava/lang/String;

    .line 53
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->creativeId:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->cid:Ljava/lang/String;

    .line 55
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 56
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/explorestack/protobuf/ProtocolStringList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->adDomains:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->adDomains:[Ljava/lang/String;

    .line 60
    :goto_0
    invoke-direct {p0, p6}, Lio/bidmachine/AuctionResultImpl;->createCustomParams(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->customParams:Ljava/util/Map;

    .line 61
    invoke-virtual {p5}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->networkKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, p4}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/AuctionResultImpl;->createClientParams(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AuctionResultImpl;->networkParams:Ljava/util/Map;

    .line 63
    invoke-static {p4}, Lio/bidmachine/AuctionResultImpl;->identifyCreativeFormat(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AuctionResultImpl;->creativeFormat:Lio/bidmachine/CreativeFormat;

    return-void
.end method

.method private createCustomParams(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/protobuf/AdExtension;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method static identifyCreativeFormat(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 175
    sget-object p0, Lio/bidmachine/CreativeFormat;->Native:Lio/bidmachine/CreativeFormat;

    return-object p0

    .line 173
    :cond_1
    :goto_0
    sget-object p0, Lio/bidmachine/CreativeFormat;->Banner:Lio/bidmachine/CreativeFormat;

    return-object p0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 178
    sget-object p0, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method createClientParams(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public getAdDomains()[Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->adDomains:[Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeFormat()Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->creativeFormat:Lio/bidmachine/CreativeFormat;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->customParams:Ljava/util/Map;

    return-object v0
.end method

.method public getDeal()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->deal:Ljava/lang/String;

    return-object v0
.end method

.method public getDemandSource()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->demandSource:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->networkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->networkParams:Ljava/util/Map;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lio/bidmachine/AuctionResultImpl;->price:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 134
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->id:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/AuctionResultImpl;->demandSource:Ljava/lang/String;

    iget-wide v2, p0, Lio/bidmachine/AuctionResultImpl;->price:D

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/AuctionResultImpl;->creativeId:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/AuctionResultImpl;->cid:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 134
    const-string v1, "id=%s, demandSource=%s, price=%s, creativeId=%s, cid=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
