.class abstract Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;
.super Ljava/lang/Object;
.source "AmazonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/amazon/AmazonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AmazonLoader"
.end annotation


# instance fields
.field private final collectCallback:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

.field private usPrivacy:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->collectCallback:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/HeaderBiddingCollectParamsCallback;Lio/bidmachine/ads/networks/amazon/AmazonAdapter$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;-><init>(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;)Lio/bidmachine/HeaderBiddingCollectParamsCallback;
    .locals 0

    .line 142
    iget-object p0, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->collectCallback:Lio/bidmachine/HeaderBiddingCollectParamsCallback;

    return-object p0
.end method

.method static forDisplay(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;
    .locals 1

    .line 145
    new-instance v0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$1;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$1;-><init>(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V

    return-object v0
.end method

.method static forVideo(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;
    .locals 1

    .line 164
    new-instance v0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$2;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$2;-><init>(Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V

    return-object v0
.end method


# virtual methods
.method abstract handleResponse(Lcom/amazon/device/ads/DTBAdResponse;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/DTBAdResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method load(Lcom/amazon/device/ads/DTBAdSize;)V
    .locals 3

    .line 192
    new-instance v0, Lcom/amazon/device/ads/DTBAdRequest;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBAdRequest;-><init>()V

    const/4 v1, 0x1

    .line 193
    new-array v1, v1, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DTBAdRequest;->setSizes([Lcom/amazon/device/ads/DTBAdSize;)V

    .line 194
    iget-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->usPrivacy:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    const-string p1, "us_privacy"

    iget-object v1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->usPrivacy:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/DTBAdRequest;->putCustomTarget(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    new-instance p1, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;

    invoke-direct {p1, p0}, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader$3;-><init>(Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;)V

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void
.end method

.method withUsPrivacy(Ljava/lang/String;)Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;
    .locals 0

    .line 187
    iput-object p1, p0, Lio/bidmachine/ads/networks/amazon/AmazonAdapter$AmazonLoader;->usPrivacy:Ljava/lang/String;

    return-object p0
.end method
