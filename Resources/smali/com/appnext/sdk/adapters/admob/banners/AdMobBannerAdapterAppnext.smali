.class public Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;
.super Lcom/appnext/banners/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/appnext/banners/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/core/Ad;
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "MEDIUM_RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "LARGE_BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Wrong banner size "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appnext/sdk/adapters/admob/banners/AdMobBannerAdapterAppnext;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :pswitch_0
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobSmallBanner;

    invoke-direct {v0, p1, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobSmallBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 22
    :pswitch_1
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobMediumBanner;

    invoke-direct {v0, p1, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobMediumBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 20
    :pswitch_2
    new-instance v0, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobLargeBanner;

    invoke-direct {v0, p1, p2}, Lcom/appnext/sdk/adapters/admob/banners/AppnextAdMobLargeBanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7536f730 -> :sswitch_2
        -0x5c1d2fb -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
