.class public Lcom/appnext/ads/fullscreen/RewardedConfig;
.super Lcom/appnext/ads/fullscreen/VideoConfig;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mode:Ljava/lang/String;

.field private multiTimerLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/appnext/ads/fullscreen/VideoConfig;-><init>()V

    .line 10
    const-string v0, "default"

    iput-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedConfig;->mode:Ljava/lang/String;

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/appnext/ads/fullscreen/RewardedConfig;->multiTimerLength:I

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/appnext/ads/fullscreen/RewardedConfig;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiTimerLength()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/appnext/ads/fullscreen/RewardedConfig;->multiTimerLength:I

    return v0
.end method

.method protected final l()Lcom/appnext/core/p;
    .locals 1

    .line 53
    invoke-static {}, Lcom/appnext/ads/fullscreen/f;->q()Lcom/appnext/ads/fullscreen/f;

    move-result-object v0

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appnext/ads/fullscreen/RewardedConfig;->mode:Ljava/lang/String;

    return-void
.end method

.method public setMultiTimerLength(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/appnext/ads/fullscreen/RewardedConfig;->multiTimerLength:I

    return-void
.end method
