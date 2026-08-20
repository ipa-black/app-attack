.class public Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/explorestack/iab/mraid/MraidView$Builder;

.field public final synthetic b:Lcom/explorestack/iab/mraid/MraidInterstitial;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$Builder;

    sget-object v0, Lcom/explorestack/iab/mraid/d;->b:Lcom/explorestack/iab/mraid/d;

    invoke-direct {p1, v0}, Lcom/explorestack/iab/mraid/MraidView$Builder;-><init>(Lcom/explorestack/iab/mraid/d;)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object v1, v1, Lcom/explorestack/iab/mraid/MraidInterstitial;->h:Lcom/explorestack/iab/mraid/MraidViewListener;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidViewListener;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v1, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidView;

    move-result-object p1

    iput-object p1, v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    return-object p1
.end method

.method public forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setAdMeasurer(Lcom/explorestack/iab/measurer/MraidAdMeasurer;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setAdMeasurer(Lcom/explorestack/iab/measurer/MraidAdMeasurer;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setCloseTimeSec(F)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setDurationSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setDurationSec(F)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setIsTag(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setIsTag(Z)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->b:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a(Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    return-object p0
.end method

.method public setLoadingStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setLoadingStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setPageFinishedScript(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setPageFinishedScript(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setPlaceholderTimeoutSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setPlaceholderTimeoutSec(F)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setProgressStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setProgressStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setR1(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setR1(Z)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setR2(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setR2(Z)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setSupportedNativeFeatures([Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->a:Lcom/explorestack/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView$Builder;->setSupportedNativeFeatures([Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidView$Builder;

    return-object p0
.end method
