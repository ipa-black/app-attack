.class public Lcom/appnext/ads/interstitial/InterstitialConfig;
.super Lcom/appnext/core/Configuration;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public autoPlay:Ljava/lang/Boolean;

.field public buttonColor:Ljava/lang/String;

.field protected cm:Z

.field public creativeType:Ljava/lang/String;

.field public skipText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/appnext/core/Configuration;-><init>()V

    .line 14
    const-string v0, "managed"

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->creativeType:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->skipText:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->buttonColor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->cm:Z

    return-void
.end method


# virtual methods
.method protected final H()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->autoPlay:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final I()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->backButtonCanClose:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonColor()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->buttonColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->creativeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipText()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->skipText:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->autoPlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1044
    invoke-static {}, Lcom/appnext/ads/interstitial/c;->K()Lcom/appnext/ads/interstitial/c;

    move-result-object v0

    .line 52
    const-string v1, "auto_play"

    invoke-virtual {v0, v1}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final l()Lcom/appnext/core/p;
    .locals 1

    .line 44
    invoke-static {}, Lcom/appnext/ads/interstitial/c;->K()Lcom/appnext/ads/interstitial/c;

    move-result-object v0

    return-object v0
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->autoPlay:Ljava/lang/Boolean;

    return-void
.end method

.method public setBackButtonCanClose(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->backButtonCanClose:Ljava/lang/Boolean;

    return-void
.end method

.method public setButtonColor(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 89
    const-string p1, ""

    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->buttonColor:Ljava/lang/String;

    return-void

    .line 92
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->buttonColor:Ljava/lang/String;

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->cm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 101
    :catchall_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown color"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCreativeType(Ljava/lang/String;)V
    .locals 1

    .line 31
    const-string v0, "managed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong creative type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->creativeType:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSkipText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 61
    const-string p1, ""

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->skipText:Ljava/lang/String;

    return-void
.end method

.method protected final t()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/appnext/ads/interstitial/InterstitialConfig;->mute:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
