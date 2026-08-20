.class public final Lcom/facebook/ads/redexgen/X/J4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
.implements Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/NativeAdBase;

.field public final A06:Lcom/facebook/ads/redexgen/X/Tp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/NativeAdBase;)V
    .locals 1

    .line 39495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39496
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A01:I

    .line 39497
    iput v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A00:I

    .line 39498
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J4;->A06:Lcom/facebook/ads/redexgen/X/Tp;

    .line 39499
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/J4;->A05:Lcom/facebook/ads/NativeAdBase;

    .line 39500
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 5

    .line 39501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_0

    .line 39502
    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 39503
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 39504
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/Is;

    move-result-object v4

    .line 39505
    .local v0, "internalMediaCacheFlag":Lcom/facebook/ads/redexgen/X/Is;
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/J4;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/J4;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/6S;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6S;-><init>(ZII)V

    .line 39506
    .local v1, "nativeAdMemoryCacheConfig":Lcom/facebook/ads/redexgen/X/6S;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J4;->A06:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/Tp;->A1V(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6S;)V

    .line 39507
    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 39508
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/J4;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .locals 0

    .line 39509
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 2

    .line 39510
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J4;->A06:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Tp;->A1R(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdListener;)V

    .line 39511
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 39512
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/J4;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 39513
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J4;->A03:Ljava/lang/String;

    .line 39514
    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 0

    .line 39515
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J4;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 39516
    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .locals 1

    .line 39517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/J4;->A04:Z

    .line 39518
    iput p1, p0, Lcom/facebook/ads/redexgen/X/J4;->A01:I

    .line 39519
    iput p2, p0, Lcom/facebook/ads/redexgen/X/J4;->A00:I

    .line 39520
    return-object p0
.end method
