.class Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$Factory;
.super Ljava/lang/Object;
.source "InternalNotsyAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)Lio/bidmachine/ads/networks/notsy/InternalNotsyAd;
    .locals 2

    .line 137
    sget-object v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyAd$1;->$SwitchMap$io$bidmachine$AdsFormat:[I

    invoke-virtual {p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;->getAdsFormat()Lio/bidmachine/AdsFormat;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/AdsFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 150
    :pswitch_0
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyRewardedAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-object v0

    .line 146
    :pswitch_1
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyInterstitialAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-object v0

    .line 142
    :pswitch_2
    new-instance v0, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;

    invoke-direct {v0, p0}, Lio/bidmachine/ads/networks/notsy/InternalNotsyBannerAd;-><init>(Lio/bidmachine/ads/networks/notsy/InternalNotsyAdUnit;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
